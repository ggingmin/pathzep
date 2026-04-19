import Cocoa
import Carbon.HIToolbox

/// Singleton that registers Carbon global hotkeys at app launch.
/// Separated from the settings UI so shortcuts work even if the user never opens settings.
final class HotKeyManager {

    static let shared = HotKeyManager()

    // MARK: - UserDefaults keys

    static let absoluteKeyKey = "absolutePathShortcutKey"
    static let absoluteModKey = "absolutePathShortcutModifiers"
    static let relativeKeyKey = "relativePathShortcutKey"
    static let relativeModKey = "relativePathShortcutModifiers"
    static let hasLaunchedBeforeKey = "hasLaunchedBefore"

    // Default shortcuts: ⌃⇧A (absolute) and ⌃⇧R (relative)
    static let defaultAbsoluteKeyCode: UInt32 = 0   // kVK_ANSI_A
    static let defaultRelativeKeyCode: UInt32 = 15   // kVK_ANSI_R
    static let defaultModifiers: NSEvent.ModifierFlags = [.control, .shift]

    // MARK: - State

    private var absoluteHotKeyRef: EventHotKeyRef?
    private var relativeHotKeyRef: EventHotKeyRef?
    private var eventHandlerInstalled = false

    private static let absoluteHotKeyID = EventHotKeyID(signature: fourCharCode("PZab"), id: 1)
    private static let relativeHotKeyID = EventHotKeyID(signature: fourCharCode("PZrl"), id: 2)

    private init() {}

    // MARK: - Public

    /// Call once from AppDelegate to set defaults and register hotkeys.
    func setup() {
        applyDefaultsIfNeeded()
        installEventHandler()
        registerHotKeys()
    }

    /// Re-register after user changes shortcuts in settings.
    func registerHotKeys() {
        // Unregister existing
        if let ref = absoluteHotKeyRef {
            UnregisterEventHotKey(ref)
            absoluteHotKeyRef = nil
        }
        if let ref = relativeHotKeyRef {
            UnregisterEventHotKey(ref)
            relativeHotKeyRef = nil
        }

        let defaults = UserDefaults.standard

        // Register absolute path shortcut
        if defaults.object(forKey: Self.absoluteKeyKey) != nil {
            let keyCode = UInt32(defaults.integer(forKey: Self.absoluteKeyKey))
            let modifiers = NSEvent.ModifierFlags(rawValue: UInt(defaults.integer(forKey: Self.absoluteModKey)))
            let carbonMods = carbonModifiers(from: modifiers)
            var ref: EventHotKeyRef?
            let status = RegisterEventHotKey(keyCode, carbonMods, Self.absoluteHotKeyID,
                                             GetApplicationEventTarget(), 0, &ref)
            if status == noErr {
                absoluteHotKeyRef = ref
            }
        }

        // Register relative path shortcut
        if defaults.object(forKey: Self.relativeKeyKey) != nil {
            let keyCode = UInt32(defaults.integer(forKey: Self.relativeKeyKey))
            let modifiers = NSEvent.ModifierFlags(rawValue: UInt(defaults.integer(forKey: Self.relativeModKey)))
            let carbonMods = carbonModifiers(from: modifiers)
            var ref: EventHotKeyRef?
            let status = RegisterEventHotKey(keyCode, carbonMods, Self.relativeHotKeyID,
                                             GetApplicationEventTarget(), 0, &ref)
            if status == noErr {
                relativeHotKeyRef = ref
            }
        }
    }

    /// Save a shortcut to UserDefaults and re-register.
    func saveShortcut(keyCode: UInt32, modifiers: NSEvent.ModifierFlags, forAbsolute: Bool) {
        let defaults = UserDefaults.standard
        if forAbsolute {
            defaults.set(Int(keyCode), forKey: Self.absoluteKeyKey)
            defaults.set(Int(modifiers.rawValue), forKey: Self.absoluteModKey)
        } else {
            defaults.set(Int(keyCode), forKey: Self.relativeKeyKey)
            defaults.set(Int(modifiers.rawValue), forKey: Self.relativeModKey)
        }
        registerHotKeys()
    }

    /// Clear a shortcut from UserDefaults and re-register.
    func clearShortcut(forAbsolute: Bool) {
        let defaults = UserDefaults.standard
        if forAbsolute {
            defaults.removeObject(forKey: Self.absoluteKeyKey)
            defaults.removeObject(forKey: Self.absoluteModKey)
        } else {
            defaults.removeObject(forKey: Self.relativeKeyKey)
            defaults.removeObject(forKey: Self.relativeModKey)
        }
        registerHotKeys()
    }

    /// Read the stored shortcut for display.
    func storedShortcut(forAbsolute: Bool) -> RecordedShortcut? {
        let defaults = UserDefaults.standard
        let keyKey = forAbsolute ? Self.absoluteKeyKey : Self.relativeKeyKey
        let modKey = forAbsolute ? Self.absoluteModKey : Self.relativeModKey
        guard defaults.object(forKey: keyKey) != nil else { return nil }
        let keyCode = UInt32(defaults.integer(forKey: keyKey))
        let modifiers = NSEvent.ModifierFlags(rawValue: UInt(defaults.integer(forKey: modKey)))
        return RecordedShortcut(keyCode: keyCode, modifiers: modifiers)
    }

    // MARK: - Private

    private func applyDefaultsIfNeeded() {
        let defaults = UserDefaults.standard
        guard !defaults.bool(forKey: Self.hasLaunchedBeforeKey) else { return }
        defaults.set(true, forKey: Self.hasLaunchedBeforeKey)

        if defaults.object(forKey: Self.absoluteKeyKey) == nil {
            defaults.set(Int(Self.defaultAbsoluteKeyCode), forKey: Self.absoluteKeyKey)
            defaults.set(Int(Self.defaultModifiers.rawValue), forKey: Self.absoluteModKey)
        }
        if defaults.object(forKey: Self.relativeKeyKey) == nil {
            defaults.set(Int(Self.defaultRelativeKeyCode), forKey: Self.relativeKeyKey)
            defaults.set(Int(Self.defaultModifiers.rawValue), forKey: Self.relativeModKey)
        }
    }

    /// Install the Carbon event handler exactly once.
    private func installEventHandler() {
        guard !eventHandlerInstalled else { return }
        eventHandlerInstalled = true

        var eventType = EventTypeSpec(
            eventClass: OSType(kEventClassKeyboard),
            eventKind: UInt32(kEventHotKeyPressed)
        )
        InstallEventHandler(
            GetApplicationEventTarget(),
            hotKeyHandler,
            1, &eventType, nil, nil
        )
    }

    private func carbonModifiers(from flags: NSEvent.ModifierFlags) -> UInt32 {
        var mods: UInt32 = 0
        if flags.contains(.command) { mods |= UInt32(cmdKey) }
        if flags.contains(.option)  { mods |= UInt32(optionKey) }
        if flags.contains(.control) { mods |= UInt32(controlKey) }
        if flags.contains(.shift)   { mods |= UInt32(shiftKey) }
        return mods
    }

    // MARK: - Hot Key Dispatch

    fileprivate func handleHotKey(id: EventHotKeyID) {
        if id.signature == Self.absoluteHotKeyID.signature && id.id == Self.absoluteHotKeyID.id {
            copySelectedFinderPaths(relative: false)
        } else if id.signature == Self.relativeHotKeyID.signature && id.id == Self.relativeHotKeyID.id {
            copySelectedFinderPaths(relative: true)
        }
    }

    private func copySelectedFinderPaths(relative: Bool) {
        let script = """
        tell application "Finder"
            set selectedItems to selection
            if (count of selectedItems) is 0 then return ""
            set pathList to {}
            repeat with anItem in selectedItems
                set end of pathList to POSIX path of (anItem as alias)
            end repeat
            set AppleScript's text item delimiters to linefeed
            return pathList as text
        end tell
        """

        guard let appleScript = NSAppleScript(source: script) else { return }
        var error: NSDictionary?
        let result = appleScript.executeAndReturnError(&error)
        guard error == nil, let paths = result.stringValue, !paths.isEmpty else { return }

        let finalPaths: String
        if relative {
            let homeDir = NSHomeDirectory()
            finalPaths = paths.split(separator: "\n", omittingEmptySubsequences: false).map { line in
                let path = String(line)
                let cleaned = path.hasSuffix("/") && path.count > 1 ? String(path.dropLast()) : path
                if cleaned.hasPrefix(homeDir + "/") {
                    return "~/" + String(cleaned.dropFirst(homeDir.count + 1))
                } else if cleaned == homeDir {
                    return "~"
                }
                return cleaned
            }.joined(separator: "\n")
        } else {
            finalPaths = paths.split(separator: "\n", omittingEmptySubsequences: false).map { line in
                let path = String(line)
                return path.hasSuffix("/") && path.count > 1 ? String(path.dropLast()) : path
            }.joined(separator: "\n")
        }

        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(finalPaths, forType: .string)
    }
}

// MARK: - Carbon Hot Key Handler (C function)

private func hotKeyHandler(
    nextHandler: EventHandlerCallRef?,
    event: EventRef?,
    userData: UnsafeMutableRawPointer?
) -> OSStatus {
    var hotKeyID = EventHotKeyID()
    GetEventParameter(
        event,
        EventParamName(kEventParamDirectObject),
        EventParamType(typeEventHotKeyID),
        nil,
        MemoryLayout<EventHotKeyID>.size,
        nil,
        &hotKeyID
    )
    HotKeyManager.shared.handleHotKey(id: hotKeyID)
    return noErr
}

private func fourCharCode(_ string: String) -> FourCharCode {
    var result: FourCharCode = 0
    for char in string.utf8.prefix(4) {
        result = (result << 8) | FourCharCode(char)
    }
    return result
}
