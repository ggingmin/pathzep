[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | **हिन्दी** | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Finder से फ़ाइल और फ़ोल्डर पथ अपने क्लिपबोर्ड पर कॉपी करें — तुरंत।

एक हल्की, नेटिव macOS यूटिलिटी जो **राइट-क्लिक कॉन्टेक्स्ट मेनू** और **ग्लोबल कीबोर्ड शॉर्टकट** के ज़रिए एब्सोल्यूट या होम-रिलेटिव (`~/`) पथ कॉपी करने की सुविधा देती है।

## विशेषताएँ

- **एब्सोल्यूट पथ** — पूरा POSIX पथ कॉपी करें (उदा. `/Users/me/projects/app/src/index.ts`)
- **रिलेटिव पथ** — टिल्ड के साथ होम-रिलेटिव पथ कॉपी करें (उदा. `~/projects/app/src/index.ts`)
- **Finder कॉन्टेक्स्ट मेनू** — Finder में किसी भी फ़ाइल या फ़ोल्डर पर राइट-क्लिक करें
- **ग्लोबल शॉर्टकट** — किसी भी ऐप से काम करने वाले कस्टम हॉटकी सेट करें
- **मेनू बार ऐप** — मेनू बार में चुपचाप चलता है, Dock में कोई आइकन नहीं
- **मल्टी-सेलेक्ट** — कई फ़ाइलें चुनें और सभी पथ एक साथ कॉपी करें (नई पंक्ति से अलग)

## इंस्टॉलेशन

### डाउनलोड (अनुशंसित)

1. [Releases](https://github.com/ggingmin/pathzep/releases/latest) से नवीनतम DMG डाउनलोड करें
2. DMG खोलें और **PathZep.app** को **Applications** में ड्रैग करें
3. PathZep लॉन्च करें
4. Finder एक्सटेंशन सक्षम करें:  
   **System Settings → Privacy & Security → Extensions → PathZep**

### सोर्स से बिल्ड करें

Xcode 15 या उससे ऊपर आवश्यक है।

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## उपयोग

### Finder में राइट-क्लिक

एक्सटेंशन सक्षम करने के बाद, Finder में किसी भी फ़ाइल या फ़ोल्डर पर राइट-क्लिक करें:

- **Copy Absolute Path** — उदा. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — उदा. `~/projects/app/src/index.ts`

### ग्लोबल शॉर्टकट

1. मेनू बार में `~/` आइकन पर क्लिक करें
2. **शॉर्टकट सेटिंग्स…** चुनें
3. एक फ़ील्ड पर क्लिक करें और अपनी पसंदीदा कुंजी संयोजन दबाएँ (उदा. `⌃⌥⌘C`)

शॉर्टकट ग्लोबली काम करते हैं — किसी भी ऐप में रहते हुए Finder से पथ कॉपी करें।

## Quick Actions (वैकल्पिक)

अगर आप Finder एक्सटेंशन की बजाय Automator Quick Actions पसंद करते हैं:

```bash
# इंस्टॉल करें
./AutomatorActions/install-quick-actions.sh

# अनइंस्टॉल करें
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions Finder में **राइट-क्लिक → Quick Actions** के अंतर्गत दिखाई देते हैं।  
आप **System Settings → Keyboard → Keyboard Shortcuts → Services** में कीबोर्ड शॉर्टकट असाइन कर सकते हैं।

## आवश्यकताएँ

- macOS 12 Monterey या बाद का संस्करण
- Intel और Apple Silicon दोनों समर्थित

## लाइसेंस

[MIT](LICENSE)
