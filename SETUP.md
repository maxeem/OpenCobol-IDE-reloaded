# Setup Guide (Python 3.10+ / Ubuntu)

The original project is unmaintained and has compatibility issues with Python 3.10+
and newer PyQt5. This fork includes fixes. Follow the steps below.

## Prerequisites

Install system dependencies (once):

```bash
sudo apt-get install -y python3-pyqt5 python3-pyqt5.qtsvg gnucobol
```

## First-time setup

```bash
cd ~/sandboxes/cobol/OpenCobol-IDE-reloaded
bash setup_venv.sh
```

## Run the IDE

```bash
cd ~/sandboxes/cobol/OpenCobol-IDE-reloaded
source venv/bin/activate
python3 OpenCobolIDE.pyw
```

## What was fixed

| Issue | Fix |
|-------|-----|
| `enum` module shadowed by vendored `extlibs/enum.py` | Deleted `extlibs/enum.py` |
| Vendored `pygments` breaks `re` module on Python 3.12 | Deleted `extlibs/pygments/` (pip version used) |
| Vendored `keyring` uses removed `collections.Callable` | Deleted `extlibs/keyring/` (pip version used) |
| Vendored `qcrash` uses removed `collections.Iterable` | Replaced with patched version in `extlibs/qcrash/` |
| `platform.linux_distribution()` removed in Python 3.8 | Fixed in `open_cobol_ide/system.py` |
| `QPainter.drawLine()` rejects floats in newer PyQt5 | Fixed in `extlibs/pyqode/cobol/modes/margins.py` |
| `future` package shadows stdlib modules | Uninstalled in `setup_venv.sh` |
