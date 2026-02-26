@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === Day thiep len GitHub ===
where git >nul 2>&1
if errorlevel 1 (
    echo Chua cai Git. Tai tai: https://git-scm.com/download/win
    pause
    exit /b 1
)
if not exist .git (
    git init
    echo Da git init.
)
git add .
git status
git commit -m "Thiep sinh nhat Minh Anh"
git branch -M main
echo.
echo Buoc tiep theo:
echo 1. Vao https://github.com/new
echo 2. Repository name: thiep-chuc-mung
echo 3. Create repository
echo 4. Chay 2 lenh sau (thay USERNAME = ten GitHub cua ban):
echo    git remote add origin https://github.com/USERNAME/thiep-chuc-mung.git
echo    git push -u origin main
echo 5. Settings -^> Pages -^> Deploy from branch: main, / (root)
echo 6. Link thiep: https://USERNAME.github.io/thiep-chuc-mung/
echo.
pause
