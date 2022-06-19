# windows-service-program

This can be used creates a Windows Service Program from a Flask app that can be installed and uninstalled

## Usage
- Install requirements

``pip install requirements.txt``

- Install the latest pywin32.exe 

Download and install pywin32 exe, for 32bit pywin32-302.win32-py3.x.exe, for 64 bit pywin32-302.win-amd64-py3.x.exe

``https://github.com/mhammond/pywin32/releases``

- Compile your server.py using pyinstaller

``pyinstaller --onefile server.py --hidden-import=win32timezone --clean --uac-admin``

- Download and install the Inno Setup Compiler

``https://jrsoftware.org/isdl.php``

- open the script.iss with Inno Setup Compiler, modify(optional), compile and find the exe in the installer folder.
