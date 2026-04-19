import Cocoa

class StatusBarController {

    private var statusItem: NSStatusItem!
    private var settingsWindow: NSWindow?

    init() {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

        if let button = statusItem.button {
            let attr = NSAttributedString(string: "~/", attributes: [
                .font: NSFont.boldSystemFont(ofSize: 14),
                .baselineOffset: -0.5
            ])
            button.attributedTitle = attr
        }

        setupMenu()
    }

    private func setupMenu() {
        let menu = NSMenu()

        menu.addItem(withTitle: NSLocalizedString("menu.shortcut_settings", comment: ""), action: #selector(showSettings), keyEquivalent: ",")
        menu.items.last?.target = self
        menu.addItem(.separator())
        menu.addItem(withTitle: NSLocalizedString("menu.quit", comment: ""), action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")

        statusItem.menu = menu
    }

    @objc func showSettings() {
        if let window = settingsWindow {
            window.makeKeyAndOrderFront(nil)
            NSApp.activate(ignoringOtherApps: true)
            return
        }

        let viewController = ShortcutSettingsViewController()
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 420, height: 260),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: false
        )
        window.title = NSLocalizedString("window.shortcut_settings_title", comment: "")
        window.contentViewController = viewController
        window.center()
        window.isReleasedWhenClosed = false
        window.delegate = viewController
        window.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)

        settingsWindow = window
    }
}
