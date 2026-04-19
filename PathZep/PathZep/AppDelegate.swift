import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    private var statusBarController: StatusBarController!

    func applicationDidFinishLaunching(_ notification: Notification) {
        NSLog("PATHZEP: applicationDidFinishLaunching!")
        statusBarController = StatusBarController()
        NSLog("PATHZEP: statusBarController created")
    }

    func applicationWillFinishLaunching(_ notification: Notification) {
        NSLog("PATHZEP: applicationWillFinishLaunching!")
    }
}
