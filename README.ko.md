<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Finder에서 파일 및 폴더 경로를 클립보드로 복사하세요 — 즉시.
</p>

**우클릭 컨텍스트 메뉴**와 **전역 키보드 단축키**로 절대 경로 또는 홈 상대 경로(`~/`)를 복사할 수 있는 가볍고 네이티브한 macOS 유틸리티입니다.

## 기능

- **절대 경로** — 전체 POSIX 경로를 복사합니다 (예: `/Users/me/projects/app/src/index.ts`)
- **상대 경로** — 틸드를 사용한 홈 상대 경로를 복사합니다 (예: `~/projects/app/src/index.ts`)
- **Finder 컨텍스트 메뉴** — Finder에서 파일이나 폴더를 우클릭하세요
- **전역 단축키** — 어떤 앱에서든 작동하는 사용자 지정 단축키를 설정하세요
- **메뉴 막대 앱** — 메뉴 막대에서 조용히 실행되며, Dock 아이콘이 없습니다
- **다중 선택** — 여러 파일을 선택하고 모든 경로를 한 번에 복사합니다 (줄바꿈으로 구분)

## 설치

### 다운로드 (권장)

1. [Releases](https://github.com/ggingmin/pathzep/releases/latest)에서 최신 DMG를 다운로드하세요
2. DMG를 열고 **PathZep.app**을 **응용 프로그램** 폴더로 드래그하세요
3. PathZep을 실행하세요
4. Finder 확장 프로그램을 활성화하세요:  
   **시스템 설정 → 개인정보 보호 및 보안 → 확장 프로그램 → PathZep**

### 소스에서 빌드

Xcode 15 이상이 필요합니다.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## 사용법

### Finder에서 우클릭

확장 프로그램을 활성화한 후, Finder에서 파일이나 폴더를 우클릭하면 다음 메뉴가 표시됩니다:

- **Copy Absolute Path** — 예: `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — 예: `~/projects/app/src/index.ts`

### 전역 단축키

1. 메뉴 막대에서 `~/` 아이콘을 클릭하세요
2. **단축키 설정…**을 선택하세요
3. 입력 필드를 클릭하고 원하는 키 조합을 누르세요 (예: `⌃⌥⌘C`)

단축키는 전역으로 작동합니다 — 어떤 앱에서든 Finder의 경로를 복사할 수 있습니다.

## Quick Actions (대안)

Finder 확장 프로그램 대신 Automator Quick Actions를 선호하는 경우:

```bash
# 설치
./AutomatorActions/install-quick-actions.sh

# 제거
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions는 Finder에서 **우클릭 → Quick Actions** 아래에 표시됩니다.  
**시스템 설정 → 키보드 → 키보드 단축키 → 서비스**에서 키보드 단축키를 지정할 수 있습니다.

## 요구 사항

- macOS 12 Monterey 이상
- Intel 및 Apple Silicon 지원

## 라이선스

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><b>한국어</b></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
