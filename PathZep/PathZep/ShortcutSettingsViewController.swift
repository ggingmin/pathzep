import Cocoa
import Carbon.HIToolbox

class ShortcutSettingsViewController: NSViewController, NSWindowDelegate {

    private var absoluteShortcutField: ShortcutRecorderField!
    private var relativeShortcutField: ShortcutRecorderField!

    private static let absoluteKeyKey = "absolutePathShortcutKey"
    private static let absoluteModKey = "absolutePathShortcutModifiers"
    private static let relativeKeyKey = "relativePathShortcutKey"
    private static let relativeModKey = "relativePathShortcutModifiers"

    private var absoluteHotKeyRef: EventHotKeyRef?
    private var relativeHotKeyRef: EventHotKeyRef?

    private static var shared: ShortcutSettingsViewController?

    override func loadView() {
        view = NSView(frame: NSRect(x: 0, y: 0, width: 420, height: 260))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ShortcutSettingsViewController.shared = self
        setupUI()
        loadShortcuts()
        registerHotKeys()
        installEventHandler()
    }

    private func setupUI() {
        // Title
        let titleLabel = NSTextField(labelWithString: NSLocalizedString("settings.title", comment: ""))
        titleLabel.font = .boldSystemFont(ofSize: 16)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)

        // Absolute path row
        let absLabel = NSTextField(labelWithString: NSLocalizedString("settings.copy_absolute_path", comment: ""))
        absLabel.alignment = .right
        absLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(absLabel)

        absoluteShortcutField = ShortcutRecorderField()
        absoluteShortcutField.placeholderString = NSLocalizedString("settings.click_to_set", comment: "")
        absoluteShortcutField.onShortcutChanged = { [weak self] in self?.saveAndReregister() }
        absoluteShortcutField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(absoluteShortcutField)

        let absClearButton = NSButton(title: NSLocalizedString("settings.clear", comment: ""), target: self, action: #selector(clearAbsoluteShortcut))
        absClearButton.bezelStyle = .rounded
        absClearButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(absClearButton)

        // Relative path row
        let relLabel = NSTextField(labelWithString: NSLocalizedString("settings.copy_relative_path", comment: ""))
        relLabel.alignment = .right
        relLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(relLabel)

        relativeShortcutField = ShortcutRecorderField()
        relativeShortcutField.placeholderString = NSLocalizedString("settings.click_to_set", comment: "")
        relativeShortcutField.onShortcutChanged = { [weak self] in self?.saveAndReregister() }
        relativeShortcutField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(relativeShortcutField)

        let relClearButton = NSButton(title: NSLocalizedString("settings.clear", comment: ""), target: self, action: #selector(clearRelativeShortcut))
        relClearButton.bezelStyle = .rounded
        relClearButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(relClearButton)

        // Hint
        let hintLabel = NSTextField(wrappingLabelWithString:
            NSLocalizedString("settings.hint", comment: ""))
        hintLabel.font = .systemFont(ofSize: 11)
        hintLabel.textColor = .tertiaryLabelColor
        hintLabel.alignment = .center
        hintLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hintLabel)

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 24),

            absLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            absLabel.widthAnchor.constraint(equalToConstant: 110),
            absLabel.centerYAnchor.constraint(equalTo: absoluteShortcutField.centerYAnchor),

            absoluteShortcutField.leadingAnchor.constraint(equalTo: absLabel.trailingAnchor, constant: 8),
            absoluteShortcutField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 28),
            absoluteShortcutField.widthAnchor.constraint(equalToConstant: 180),
            absoluteShortcutField.heightAnchor.constraint(equalToConstant: 24),

            absClearButton.leadingAnchor.constraint(equalTo: absoluteShortcutField.trailingAnchor, constant: 8),
            absClearButton.centerYAnchor.constraint(equalTo: absoluteShortcutField.centerYAnchor),

            relLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            relLabel.widthAnchor.constraint(equalToConstant: 110),
            relLabel.centerYAnchor.constraint(equalTo: relativeShortcutField.centerYAnchor),

            relativeShortcutField.leadingAnchor.constraint(equalTo: relLabel.trailingAnchor, constant: 8),
            relativeShortcutField.topAnchor.constraint(equalTo: absoluteShortcutField.bottomAnchor, constant: 20),
            relativeShortcutField.widthAnchor.constraint(equalToConstant: 180),
            relativeShortcutField.heightAnchor.constraint(equalToConstant: 24),

            relClearButton.leadingAnchor.constraint(equalTo: relativeShortcutField.trailingAnchor, constant: 8),
            relClearButton.centerYAnchor.constraint(equalTo: relativeShortcutField.centerYAnchor),

            hintLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hintLabel.topAnchor.constraint(equalTo: relativeShortcutField.bottomAnchor, constant: 28),
            hintLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 380),
        ])
    }

    // MARK: - Clear

    @objc private func clearAbsoluteShortcut() {
        absoluteShortcutField.clear()
        saveAndReregister()
    }

    @objc private func clearRelativeShortcut() {
        relativeShortcutField.clear()
        saveAndReregister()
    }

    // MARK: - Persistence

    private func saveAndReregister() {
        let defaults = UserDefaults.standard

        if let shortcut = absoluteShortcutField.recordedShortcut {
            defaults.set(Int(shortcut.keyCode), forKey: Self.absoluteKeyKey)
            defaults.set(Int(shortcut.modifiers.rawValue), forKey: Self.absoluteModKey)
        } else {
            defaults.removeObject(forKey: Self.absoluteKeyKey)
            defaults.removeObject(forKey: Self.absoluteModKey)
        }

        if let shortcut = relativeShortcutField.recordedShortcut {
            defaults.set(Int(shortcut.keyCode), forKey: Self.relativeKeyKey)
            defaults.set(Int(shortcut.modifiers.rawValue), forKey: Self.relativeModKey)
        } else {
            defaults.removeObject(forKey: Self.relativeKeyKey)
            defaults.removeObject(forKey: Self.relativeModKey)
        }

        registerHotKeys()
    }

    private func loadShortcuts() {
        let defaults = UserDefaults.standard

        if defaults.object(forKey: Self.absoluteKeyKey) != nil {
            let keyCode = UInt32(defaults.integer(forKey: Self.absoluteKeyKey))
            let modifiers = NSEvent.ModifierFlags(rawValue: UInt(defaults.integer(forKey: Self.absoluteModKey)))
            absoluteShortcutField.setShortcut(keyCode: keyCode, modifiers: modifiers)
        }

        if defaults.object(forKey: Self.relativeKeyKey) != nil {
            let keyCode = UInt32(defaults.integer(forKey: Self.relativeKeyKey))
            let modifiers = NSEvent.ModifierFlags(rawValue: UInt(defaults.integer(forKey: Self.relativeModKey)))
            relativeShortcutField.setShortcut(keyCode: keyCode, modifiers: modifiers)
        }
    }

    // MARK: - Global Hotkeys (Carbon)

    private static let absoluteHotKeyID = EventHotKeyID(signature: fourCharCode("PZab"), id: 1)
    private static let relativeHotKeyID = EventHotKeyID(signature: fourCharCode("PZrl"), id: 2)

    private func registerHotKeys() {
        if let ref = absoluteHotKeyRef {
            UnregisterEventHotKey(ref)
            absoluteHotKeyRef = nil
        }
        if let ref = relativeHotKeyRef {
            UnregisterEventHotKey(ref)
            relativeHotKeyRef = nil
        }

        if let shortcut = absoluteShortcutField.recordedShortcut {
            var ref: EventHotKeyRef?
            let carbonMods = carbonModifiers(from: shortcut.modifiers)
            RegisterEventHotKey(shortcut.keyCode, carbonMods, Self.absoluteHotKeyID, GetApplicationEventTarget(), 0, &ref)
            absoluteHotKeyRef = ref
        }

        if let shortcut = relativeShortcutField.recordedShortcut {
            var ref: EventHotKeyRef?
            let carbonMods = carbonModifiers(from: shortcut.modifiers)
            RegisterEventHotKey(shortcut.keyCode, carbonMods, Self.relativeHotKeyID, GetApplicationEventTarget(), 0, &ref)
            relativeHotKeyRef = ref
        }
    }

    private func installEventHandler() {
        var eventType = EventTypeSpec(eventClass: OSType(kEventClassKeyboard), eventKind: UInt32(kEventHotKeyPressed))
        InstallEventHandler(GetApplicationEventTarget(), hotKeyHandler, 1, &eventType, nil, nil)
    }

    private func carbonModifiers(from flags: NSEvent.ModifierFlags) -> UInt32 {
        var mods: UInt32 = 0
        if flags.contains(.command) { mods |= UInt32(cmdKey) }
        if flags.contains(.option)  { mods |= UInt32(optionKey) }
        if flags.contains(.control) { mods |= UInt32(controlKey) }
        if flags.contains(.shift)   { mods |= UInt32(shiftKey) }
        return mods
    }

    // MARK: - Copy Actions

    static func handleHotKey(id: EventHotKeyID) {
        if id.signature == absoluteHotKeyID.signature && id.id == absoluteHotKeyID.id {
            copySelectedFinderPaths(relative: false)
        } else if id.signature == relativeHotKeyID.signature && id.id == relativeHotKeyID.id {
            copySelectedFinderPaths(relative: true)
        }
    }

    private static func copySelectedFinderPaths(relative: Bool) {
        let script: String
        if relative {
            script = """
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
        } else {
            script = """
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
        }

        guard let appleScript = NSAppleScript(source: script) else { return }
        var error: NSDictionary?
        let result = appleScript.executeAndReturnError(&error)
        guard error == nil, let paths = result.stringValue, !paths.isEmpty else { return }

        let finalPaths: String
        if relative {
            let homeDir = NSHomeDirectory()
            finalPaths = paths.split(separator: "\n", omittingEmptySubsequences: false).map { line in
                let path = String(line)
                // Remove trailing slash from Finder paths
                let cleaned = path.hasSuffix("/") && path.count > 1 ? String(path.dropLast()) : path
                if cleaned.hasPrefix(homeDir + "/") {
                    return "~/" + String(cleaned.dropFirst(homeDir.count + 1))
                } else if cleaned == homeDir {
                    return "~"
                }
                return cleaned
            }.joined(separator: "\n")
        } else {
            // Remove trailing slashes from Finder paths
            finalPaths = paths.split(separator: "\n", omittingEmptySubsequences: false).map { line in
                let path = String(line)
                return path.hasSuffix("/") && path.count > 1 ? String(path.dropLast()) : path
            }.joined(separator: "\n")
        }

        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(finalPaths, forType: .string)
    }

    // MARK: - NSWindowDelegate

    func windowWillClose(_ notification: Notification) {
        // Keep running in status bar
    }
}

// MARK: - Carbon Hot Key Handler (C function)

private func hotKeyHandler(nextHandler: EventHandlerCallRef?, event: EventRef?, userData: UnsafeMutableRawPointer?) -> OSStatus {
    var hotKeyID = EventHotKeyID()
    GetEventParameter(event, EventParamName(kEventParamDirectObject), EventParamType(typeEventHotKeyID),
                      nil, MemoryLayout<EventHotKeyID>.size, nil, &hotKeyID)
    ShortcutSettingsViewController.handleHotKey(id: hotKeyID)
    return noErr
}

private func fourCharCode(_ string: String) -> FourCharCode {
    var result: FourCharCode = 0
    for char in string.utf8.prefix(4) {
        result = (result << 8) | FourCharCode(char)
    }
    return result
}

// MARK: - Shortcut Recorder Field

struct RecordedShortcut {
    let keyCode: UInt32
    let modifiers: NSEvent.ModifierFlags
}

class ShortcutRecorderField: NSView {

    var recordedShortcut: RecordedShortcut?
    var onShortcutChanged: (() -> Void)?
    var placeholderString: String = ""

    private var isRecording = false
    private let label = NSTextField(labelWithString: "")
    private var localMonitor: Any?

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    deinit {
        stopMonitoring()
    }

    private func setup() {
        wantsLayer = true
        layer?.cornerRadius = 4
        layer?.borderWidth = 1
        layer?.borderColor = NSColor.separatorColor.cgColor
        layer?.backgroundColor = NSColor.textBackgroundColor.cgColor

        label.isEditable = false
        label.isSelectable = false
        label.isBezeled = false
        label.drawsBackground = false
        label.alignment = .center
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)

        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -4),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }

    override var acceptsFirstResponder: Bool { true }

    // Modifier-only key codes to ignore
    private static let modifierKeyCodes: Set<UInt16> = [
        54, 55,  // Right/Left Command
        56, 60,  // Left/Right Shift
        58, 61,  // Left/Right Option
        59, 62,  // Left/Right Control
        57,      // Caps Lock
        63,      // fn
    ]

    override func mouseDown(with event: NSEvent) {
        window?.makeFirstResponder(self)
        startRecording()
    }

    private static let recordingPrompt = NSLocalizedString("shortcut.press_combination", comment: "")

    private func startRecording() {
        isRecording = true
        label.stringValue = Self.recordingPrompt
        label.textColor = .secondaryLabelColor
        layer?.borderColor = NSColor.controlAccentColor.cgColor
        startMonitoring()
    }

    private func stopRecording() {
        isRecording = false
        layer?.borderColor = NSColor.separatorColor.cgColor
        if label.stringValue == Self.recordingPrompt {
            label.stringValue = recordedShortcut.map { shortcutDisplayString(keyCode: $0.keyCode, modifiers: $0.modifiers) } ?? ""
            label.textColor = .labelColor
        }
        stopMonitoring()
    }

    private func startMonitoring() {
        stopMonitoring()
        localMonitor = NSEvent.addLocalMonitorForEvents(matching: [.keyDown, .flagsChanged]) { [weak self] event in
            guard let self = self, self.isRecording else { return event }

            if event.type == .flagsChanged {
                // Ignore standalone modifier presses
                return event
            }

            // Ignore modifier-only key codes
            guard !Self.modifierKeyCodes.contains(event.keyCode) else { return event }

            let mods = event.modifierFlags.intersection([.command, .option, .control, .shift])

            // Require at least one modifier
            guard !mods.isEmpty else {
                // ESC cancels recording
                if event.keyCode == 53 {
                    self.stopRecording()
                }
                return nil // swallow the event
            }

            let keyCode = UInt32(event.keyCode)
            self.setShortcut(keyCode: keyCode, modifiers: mods)
            self.stopRecording()
            self.onShortcutChanged?()
            return nil // swallow the event
        }
    }

    private func stopMonitoring() {
        if let monitor = localMonitor {
            NSEvent.removeMonitor(monitor)
            localMonitor = nil
        }
    }

    func setShortcut(keyCode: UInt32, modifiers: NSEvent.ModifierFlags) {
        recordedShortcut = RecordedShortcut(keyCode: keyCode, modifiers: modifiers)
        label.stringValue = shortcutDisplayString(keyCode: keyCode, modifiers: modifiers)
        label.textColor = .labelColor
    }

    func clear() {
        recordedShortcut = nil
        label.stringValue = ""
        label.textColor = .labelColor
        stopRecording()
    }

    private func shortcutDisplayString(keyCode: UInt32, modifiers: NSEvent.ModifierFlags) -> String {
        var parts: [String] = []
        if modifiers.contains(.control) { parts.append("⌃") }
        if modifiers.contains(.option)  { parts.append("⌥") }
        if modifiers.contains(.shift)   { parts.append("⇧") }
        if modifiers.contains(.command) { parts.append("⌘") }

        let keyName = keyCodeToString(keyCode)
        parts.append(keyName)

        return parts.joined()
    }

    /// Cache ASCII keyboard layout (com.apple.keylayout.ABC) to always return English key names
    private static let asciiLayoutData: Data? = {
        // Find ASCII-capable keyboard layout among all input sources
        let conditions: CFDictionary = [
            kTISPropertyInputSourceCategory as String: kTISCategoryKeyboardInputSource as String,
            kTISPropertyInputSourceIsASCIICapable as String: true
        ] as CFDictionary

        guard let sourceList = TISCreateInputSourceList(conditions, false)?.takeRetainedValue() as? [TISInputSource],
              let asciiSource = sourceList.first(where: {
                  let idRef = TISGetInputSourceProperty($0, kTISPropertyInputSourceID)
                  if let id = unsafeBitCast(idRef, to: CFString?.self) as String? {
                      return id == "com.apple.keylayout.ABC" || id == "com.apple.keylayout.US"
                  }
                  return false
              }) ?? sourceList.first
        else { return nil }

        guard let layoutDataRef = TISGetInputSourceProperty(asciiSource, kTISPropertyUnicodeKeyLayoutData) else { return nil }
        return unsafeBitCast(layoutDataRef, to: CFData.self) as Data
    }()

    private func keyCodeToString(_ keyCode: UInt32) -> String {
        let specialKeys: [UInt32: String] = [
            36: "↩", 48: "⇥", 49: "Space", 51: "⌫", 53: "⎋",
            76: "⌅", 96: "F5", 97: "F6", 98: "F7", 99: "F3",
            100: "F8", 101: "F9", 103: "F11", 105: "F13", 107: "F14",
            109: "F10", 111: "F12", 113: "F15", 114: "Help", 115: "Home",
            116: "⇞", 117: "⌦", 118: "F4", 119: "End", 120: "F2",
            121: "⇟", 122: "F1", 123: "←", 124: "→", 125: "↓", 126: "↑",
        ]

        if let name = specialKeys[keyCode] { return name }

        // Always convert key names using ASCII (English) layout
        guard let data = Self.asciiLayoutData else { return "?" }

        return data.withUnsafeBytes { rawPtr -> String in
            let ptr = rawPtr.bindMemory(to: UCKeyboardLayout.self).baseAddress!
            var deadKeyState: UInt32 = 0
            var length = 0
            var chars = [UniChar](repeating: 0, count: 4)
            UCKeyTranslate(ptr, UInt16(keyCode), UInt16(kUCKeyActionDisplay), 0, UInt32(LMGetKbdType()),
                           UInt32(kUCKeyTranslateNoDeadKeysBit), &deadKeyState, 4, &length, &chars)
            return String(utf16CodeUnits: chars, count: length).uppercased()
        }
    }
}
