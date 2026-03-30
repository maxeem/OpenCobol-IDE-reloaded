#!/bin/bash
# Sets up the virtualenv for OpenCobolIDE on Python 3.10+
set -e

python3 -m venv venv --system-site-packages
source venv/bin/activate
pip install pygments pyqode.core pyqode.cobol pyqode.qt qcrash qdarkstyle
pip uninstall -y future 2>/dev/null || true
pip install -e .

echo ""
echo "Setup complete. To run the IDE:"
echo "  source venv/bin/activate"
echo "  python3 OpenCobolIDE.pyw"
