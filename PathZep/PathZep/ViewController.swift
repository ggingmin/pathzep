import Cocoa
import FinderSync

class ViewController: NSViewController {

    @IBOutlet weak var statusLabel: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openExtensionPreferences(_ sender: Any) {
        FIFinderSyncController.showExtensionManagementInterface()
    }
}
