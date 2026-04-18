import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    private var statusBarController: StatusBarController!

    func applicationDidFinishLaunching(_ notification: Notification) {
        statusBarController = StatusBarController()
        statusBarController.showSettings()
    }
}
