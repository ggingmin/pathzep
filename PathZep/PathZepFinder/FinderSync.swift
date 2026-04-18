import Cocoa
import FinderSync

class FinderSync: FIFinderSync {

    override init() {
        super.init()

        // Watch the entire filesystem so the context menu appears everywhere
        let rootURL = URL(fileURLWithPath: "/")
        FIFinderSyncController.default().directoryURLs = [rootURL]
    }

    // MARK: - Context Menu

    override func menu(for menuKind: FIMenuKind) -> NSMenu {
        let menu = NSMenu(title: "PathZep")

        let absoluteItem = NSMenuItem(
            title: "절대 경로 복사",
            action: #selector(copyAbsolutePath(_:)),
            keyEquivalent: ""
        )
        absoluteItem.image = NSImage(systemSymbolName: "doc.on.clipboard", accessibilityDescription: nil)
        menu.addItem(absoluteItem)

        let relativeItem = NSMenuItem(
            title: "상대 경로 복사",
            action: #selector(copyRelativePath(_:)),
            keyEquivalent: ""
        )
        relativeItem.image = NSImage(systemSymbolName: "doc.on.clipboard.fill", accessibilityDescription: nil)
        menu.addItem(relativeItem)

        return menu
    }

    // MARK: - Actions

    @objc func copyAbsolutePath(_ sender: AnyObject?) {
        guard let items = FIFinderSyncController.default().selectedItemURLs(), !items.isEmpty else { return }

        let paths = items.map { $0.path }
        let result = paths.joined(separator: "\n")

        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(result, forType: .string)
    }

    @objc func copyRelativePath(_ sender: AnyObject?) {
        guard let items = FIFinderSyncController.default().selectedItemURLs(), !items.isEmpty else { return }
        guard let targetURL = FIFinderSyncController.default().targetedURL() else {
            // Fallback: copy absolute path if we can't determine the container
            copyAbsolutePath(sender)
            return
        }

        let basePath = targetURL.path
        let paths = items.map { itemURL -> String in
            let itemPath = itemURL.path
            if itemPath.hasPrefix(basePath) {
                var relative = String(itemPath.dropFirst(basePath.count))
                if relative.hasPrefix("/") {
                    relative = String(relative.dropFirst())
                }
                return relative.isEmpty ? itemURL.lastPathComponent : relative
            }
            return itemPath
        }

        let result = paths.joined(separator: "\n")

        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(result, forType: .string)
    }
}
