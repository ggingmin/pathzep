import Cocoa
import FinderSync

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Show the extension management interface so users can enable the extension
        NSLog("PathZep launched. Opening extension preferences...")
    }

    @IBAction func openExtensionPreferences(_ sender: Any?) {
        FIFinderSyncController.showExtensionManagementInterface()
    }
}
