# Termux Dvorak Extra-Keys (`dvorak-extra-keys`)

A collection of **Dvorak** `extra-keys` keyboard configurations for [Termux](https://termux.dev/) (`~/.termux/termux.properties`), complete with swipe-up Shift/symbol popups, toolbar height scaling, and one-command install/restore scripts.

---

## Included Layouts

### 1. 10-Column Aligned Dvorak Grid (`termux.properties.dvorak-10col`)
Strictly aligned 10x5 grid designed for portrait phone screens so every column lines up vertically without horizontal offset:

| Col 1 | Col 2 | Col 3 | Col 4 | Col 5 | Col 6 | Col 7 | Col 8 | Col 9 | Col 10 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| `1` (`!`) | `2` (`@`) | `3` (`#`) | `4` (`$`) | `5` (`%`) | `6` (`^`) | `7` (`&`) | `8` (`*`) | `9` (`(`) | `0` (`)`) |
| `'` (`"`) | `,` (`<`) | `.` (`>`) | `p` (`P`) | `y` (`Y`) | `f` (`F`) | `g` (`G`) | `c` (`C`) | `r` (`R`) | `l` (`L`) |
| `a` (`A`) | `o` (`O`) | `e` (`E`) | `u` (`U`) | `i` (`I`) | `d` (`D`) | `h` (`H`) | `t` (`T`) | `n` (`N`) | `s` (`S`) |
| `;` (`:`) | `q` (`Q`) | `j` (`J`) | `k` (`K`) | `x` (`X`) | `b` (`B`) | `m` (`M`) | `w` (`W`) | `v` (`V`) | `z` (`Z`) |
| `ESC` (`KBD`) | `TAB` (`` ` ``) | `CTRL` (`ALT`) | `-` (`_`) | `SPACE` (`\|`) | `/` (`?`) | `LEFT` (`DOWN`) | `UP` (`RIGHT`) | `BKSP` (`DEL`) | `ENTER` (`=`) |

### 2. Full 12/13-Column Dvorak Layout (`termux.properties.dvorak-full`)
Extended 5-row Dvorak layout including dedicated `[` (`{`), `]` (`}`), `` ` `` (`~`), `/` (`?`), `=` (`+`), and `\` (`|`) keys for wider displays or tablets.

### 3. Standard 2-Row Coding Bar (`termux.properties.default-2row`)
Compact 2-row Termux `extra-keys` toolbar (`ESC`, `TAB`, `CTRL`, `ALT`, arrows, and common shell/coding symbols) meant to pair with your standard Android soft keyboard.

---

## Usage

```bash
# Install the 10-column aligned Dvorak extra-keys layout
./install.sh 10col

# Install the full 13-column Dvorak extra-keys layout
./install.sh full

# Remove Dvorak extra-keys and restore the standard 2-row bar
./install.sh restore
```

> **Note:** Termux calculates the vertical container height of `extra-keys` on app startup. When switching between a 5-row Dvorak layout and a 2-row layout, restart the Termux app once after running `termux-reload-settings` so the toolbar height resizes cleanly.
