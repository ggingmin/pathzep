import Cocoa
import FinderSync

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    private var window: NSWindow!

    func applicationDidFinishLaunching(_ notification: Notification) {
        let viewController = ViewController()

        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 320),
            styleMask: [.titled, .closable, .miniaturizable],
            backing: .buffered,
            defer: false
        )
        window.title = "PathZep"
        window.contentViewController = viewController
        window.center()
        window.makeKeyAndOrderFront(nil)

        setupMainMenu()
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

    private func setupMainMenu() {
        let mainMenu = NSMenu()

        // App menu
        let appMenuItem = NSMenuItem()
        let appMenu = NSMenu()
        appMenu.addItem(withTitle: "About PathZep", action: #selector(NSApplication.orderFrontStandardAboutPanel(_:)), keyEquivalent: "")
        appMenu.addItem(.separator())

        let prefsItem = NSMenuItem(title: "Finder Extension Preferences…", action: #selector(openExtensionPreferences), keyEquivalent: ",")
        appMenu.addItem(prefsItem)
        appMenu.addItem(.separator())

        appMenu.addItem(withTitle: "Quit PathZep", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
        appMenuItem.submenu = appMenu
        mainMenu.addItem(appMenuItem)

        NSApplication.shared.mainMenu = mainMenu
    }

    @objc func openExtensionPreferences() {
        FIFinderSyncController.showExtensionManagementInterface()
    }
}
