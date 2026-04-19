<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Kopioi tiedosto- ja kansioiden polut Finderista leikepöydälle — välittömästi.
</p>

Kevyt, natiivi macOS-apuohjelma, joka lisää **hiiren oikean painikkeen kontekstivalikon** ja **yleiset pikanäppäimet** absoluuttisten tai kotihakemistoon suhteellisten (`~/`) polkujen kopioimiseen.

## Ominaisuudet

- **Absoluuttinen polku** — Kopioi täydellinen POSIX-polku (esim. `/Users/me/projects/app/src/index.ts`)
- **Suhteellinen polku** — Kopioi kotihakemistoon suhteellinen polku tildellä (esim. `~/projects/app/src/index.ts`)
- **Finderin kontekstivalikko** — Napsauta hiiren oikealla painikkeella mitä tahansa tiedostoa tai kansiota Finderissa
- **Yleiset pikanäppäimet** — Määritä mukautetut pikanäppäimet, jotka toimivat mistä tahansa sovelluksesta
- **Valikkopalkkisovellus** — Toimii hiljaisesti valikkopalkissa, ei Dock-kuvaketta
- **Monivalinta** — Valitse useita tiedostoja ja kopioi kaikki polut kerralla (rivinvaihdolla erotettuina)

## Asennus

### Lataa (suositeltu)

1. Lataa uusin DMG [Releases](https://github.com/ggingmin/pathzep/releases/latest)-sivulta
2. Avaa DMG ja vedä **PathZep.app** **Ohjelmat**-kansioon
3. Käynnistä PathZep
4. Ota Finder-laajennus käyttöön:  
   **Järjestelmäasetukset → Tietosuoja ja turvallisuus → Laajennukset → PathZep**

### Käännä lähdekoodista

Vaatii Xcode 15+.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Käyttö

### Oikea napsautus Finderissa

Kun laajennus on otettu käyttöön, napsauta hiiren oikealla painikkeella mitä tahansa tiedostoa tai kansiota Finderissa nähdäksesi:

- **Copy Absolute Path** — esim. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — esim. `~/projects/app/src/index.ts`

### Yleiset pikanäppäimet

1. Napsauta `~/`-kuvaketta valikkopalkissa
2. Valitse **Pikanäppäinasetukset…**
3. Napsauta kenttää ja paina haluamaasi näppäinyhdistelmää (esim. `⌃⌥⌘C`)

Pikanäppäimet toimivat kaikkialla — kopioi polkuja Finderista ollessasi missä tahansa sovelluksessa.

## Quick Actions (vaihtoehto)

Jos haluat käyttää Automator Quick Actions -toimintoja Finder-laajennuksen sijaan:

```bash
# Asenna
./AutomatorActions/install-quick-actions.sh

# Poista asennus
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions näkyy kohdassa **oikea napsautus → Pikatoiminnot** Finderissa.  
Voit määrittää pikanäppäimet kohdassa **Järjestelmäasetukset → Näppäimistö → Pikanäppäimet → Palvelut**.

## Vaatimukset

- macOS 12 Monterey tai uudempi
- Intel ja Apple Silicon tuettu

## Lisenssi

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><b>Suomi</b></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
