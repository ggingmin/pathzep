# PathZep 🗂️

Finder에서 파일/폴더의 **절대 경로** 또는 **상대 경로**를 클립보드에 복사하는 macOS 유틸리티.

## 기능

- **절대 경로 복사** — 파일/폴더의 전체 경로 복사 (예: `/Users/me/projects/myapp/src/index.ts`)
- **상대 경로 복사** — 현재 Finder 폴더 기준 상대 경로 복사 (예: `src/index.ts`)
- 여러 파일 선택 시 줄바꿈으로 구분하여 복사
- 단축키 지정 가능

## 설치 방법

### 방법 1: Quick Action (Xcode 불필요, 바로 사용)

```bash
./AutomatorActions/install-quick-actions.sh
```

설치 후 Finder에서 파일/폴더를 **우클릭 → 빠른 동작(Quick Actions)**에서 사용할 수 있습니다.

**제거:**
```bash
./AutomatorActions/uninstall-quick-actions.sh
```

### 방법 2: Finder Sync Extension (Xcode 필요)

네이티브 Finder 확장으로, 우클릭 메뉴 최상위에 바로 표시됩니다.

1. Xcode에서 `PathZep/PathZep.xcodeproj`를 엽니다
2. 본인의 Developer Team을 설정합니다 (Signing & Capabilities)
3. `PathZep` 스킴으로 빌드 & 실행합니다
4. 시스템 설정 → 로그인 항목 및 확장 프로그램에서 **PathZep Finder** 확장을 활성화합니다

## 단축키 설정

Quick Action 방식 사용 시:

1. **시스템 설정** → **키보드** → **키보드 단축키** → **서비스**
2. **파일 및 폴더** 섹션에서 찾기:
   - `절대 경로 복사` — 추천: `⌃⌥⌘C`
   - `상대 경로 복사` — 추천: `⌃⇧⌘C`

## 프로젝트 구조

```
pathzap/
├── PathZep/                          # Xcode 프로젝트 (Finder Sync Extension)
│   ├── PathZep.xcodeproj/
│   ├── PathZep/                      # 메인 앱 (호스트)
│   │   ├── AppDelegate.swift
│   │   ├── ViewController.swift
│   │   ├── Main.storyboard
│   │   ├── Info.plist
│   │   └── PathZep.entitlements
│   └── PathZepFinder/                # Finder Sync Extension
│       ├── FinderSync.swift
│       ├── Info.plist
│       └── PathZepFinder.entitlements
├── AutomatorActions/                 # Quick Action 대안
│   ├── install-quick-actions.sh
│   └── uninstall-quick-actions.sh
└── README.md
```

## 요구사항

- **Quick Action**: macOS 12 Monterey 이상
- **Finder Sync Extension**: macOS 13 Ventura 이상, Xcode 15+

## 라이선스

MIT
