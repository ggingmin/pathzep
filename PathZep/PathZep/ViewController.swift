import Cocoa
import FinderSync

class ViewController: NSViewController {

    override func loadView() {
        view = NSView(frame: NSRect(x: 0, y: 0, width: 480, height: 320))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        // Title
        let titleLabel = NSTextField(labelWithString: "PathZep")
        titleLabel.font = .boldSystemFont(ofSize: 24)
        titleLabel.alignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)

        // Description
        let descLabel = NSTextField(wrappingLabelWithString:
            "Finder에서 파일/폴더의 상대 경로와 절대 경로를 쉽게 복사하세요.")
        descLabel.alignment = .center
        descLabel.textColor = .secondaryLabelColor
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descLabel)

        // Button
        let button = NSButton(title: "Finder 확장 설정 열기", target: self, action: #selector(openExtensionPreferences))
        button.bezelStyle = .rounded
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)

        // Hint
        let hintLabel = NSTextField(wrappingLabelWithString:
            "시스템 설정 → 로그인 항목 및 확장 프로그램에서\nPathZep Finder 확장을 활성화하세요.")
        hintLabel.alignment = .center
        hintLabel.font = .systemFont(ofSize: 11)
        hintLabel.textColor = .tertiaryLabelColor
        hintLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hintLabel)

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),

            descLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            descLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 360),

            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: descLabel.bottomAnchor, constant: 24),

            hintLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hintLabel.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            hintLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 400),
        ])
    }

    @objc private func openExtensionPreferences() {
        FIFinderSyncController.showExtensionManagementInterface()
    }
}
