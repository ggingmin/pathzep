import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    private var statusBarController: StatusBarController!
    private static let hasShownOnboardingKey = "hasShownOnboarding"

    func applicationDidFinishLaunching(_ notification: Notification) {
        HotKeyManager.shared.setup()
        statusBarController = StatusBarController()
        showOnboardingIfNeeded()
    }

    private func showOnboardingIfNeeded() {
        let defaults = UserDefaults.standard
        guard !defaults.bool(forKey: Self.hasShownOnboardingKey) else { return }
        defaults.set(true, forKey: Self.hasShownOnboardingKey)

        DispatchQueue.main.async {
            let alert = NSAlert()
            alert.messageText = NSLocalizedString("onboarding.title", comment: "")
            alert.informativeText = NSLocalizedString("onboarding.message", comment: "")
            alert.alertStyle = .informational
            alert.addButton(withTitle: NSLocalizedString("onboarding.open_settings", comment: ""))
            alert.addButton(withTitle: NSLocalizedString("onboarding.ok", comment: ""))
            alert.icon = NSApp.applicationIconImage

            NSApp.activate(ignoringOtherApps: true)
            let response = alert.runModal()
            if response == .alertFirstButtonReturn {
                self.statusBarController.showSettings()
            }
        }
    }
}
