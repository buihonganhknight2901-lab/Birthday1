# Script day thiep len GitHub (chay trong thu muc thiep-chuc-mung)
# Can cai Git: https://git-scm.com/download/win

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Write-Host "=== Day thiep len GitHub ===" -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Chua cai Git. Vao https://git-scm.com/download/win tai va cai, roi chay lai script nay." -ForegroundColor Yellow
    exit 1
}

# Khoi tao repo va commit
if (-not (Test-Path .git)) {
    git init
    Write-Host "Da git init." -ForegroundColor Green
}
git add .
git status
git commit -m "Thiep sinh nhat Minh Anh" 2>$null
if ($LASTEXITCODE -ne 0) {
    git commit -m "Thiep sinh nhat Minh Anh"
}
git branch -M main 2>$null

Write-Host ""
Write-Host "Buoc tiep theo (lam tay):" -ForegroundColor Cyan
Write-Host "1. Vao https://github.com/new"
Write-Host "2. Repository name: thiep-chuc-mung (hoac ten khac)"
Write-Host "3. Chon Public -> Create repository"
Write-Host "4. Trong thu muc nay mo PowerShell/CMD va chay (thay USERNAME = ten GitHub cua ban):"
Write-Host ""
Write-Host "   git remote add origin https://github.com/USERNAME/thiep-chuc-mung.git" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "5. Vao repo -> Settings -> Pages -> Source: Deploy from branch -> branch main, folder / (root) -> Save"
Write-Host "6. Sau 1-2 phut link thiep: https://USERNAME.github.io/thiep-chuc-mung/"
Write-Host "   QR o trang cuoi se tro dung link do." -ForegroundColor Green
