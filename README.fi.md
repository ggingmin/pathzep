[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | **Suomi** | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Kopioi tiedosto- ja kansioiden polut Finderista leikepöydälle — välittömästi.

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
