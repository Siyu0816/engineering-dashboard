@echo off

cd /d "C:\Users\bais\Documents\GitHub\engineering-dashboard"

python build_data.py

"C:\Users\bais\AppData\Local\GitHubDesktop\app-3.7.0\resources\app\git\cmd\git.exe" add .

"C:\Users\bais\AppData\Local\GitHubDesktop\app-3.7.0\resources\app\git\cmd\git.exe" diff --cached --quiet

if errorlevel 1 (
    "C:\Users\bais\AppData\Local\GitHubDesktop\app-3.7.0\resources\app\git\cmd\git.exe" commit -m "Dashboard Data Update"

    "C:\Users\bais\AppData\Local\GitHubDesktop\app-3.7.0\resources\app\git\cmd\git.exe" push

    echo Dashboard updated successfully.
) else (
    echo No data changes detected.
)

pause