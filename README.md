# Chúc mừng sinh nhật Minh Anh 🎂

Thiệp sinh nhật online (3 trang: Intro → Message → Final + pháo hoa, QR chia sẻ).

---

## Đẩy lên GitHub (để có link + QR có kết quả)

**QR chỉ trỏ đúng link khi bạn mở thiệp bằng link GitHub Pages.** Mở file `index.html` trên máy thì QR không dùng được.

### Cách 1: Chạy script có sẵn (nhanh)

1. **Cài Git** nếu chưa có: [git-scm.com/download/win](https://git-scm.com/download/win)
2. Trong thư mục `thiep-chuc-mung`, **double-click** `day-len-github.bat`  
   hoặc mở PowerShell ở đây và chạy: `.\day-len-github.ps1`
3. Làm theo hướng dẫn in ra: tạo repo trên GitHub → chạy 2 lệnh `git remote add ...` và `git push ...`
4. Vào repo → **Settings** → **Pages** → Source: **Deploy from a branch** → branch **main**, folder **/ (root)** → Save
5. Đợi 1–2 phút. Link thiệp: **https://TÊN-GITHUB-CỦA-BẠN.github.io/thiep-chuc-mung/**

### Cách 2: Làm tay từng bước

1. Vào [github.com/new](https://github.com/new) → tạo repo tên `thiep-chuc-mung` (Public) → Create repository.
2. Mở **Command Prompt** hoặc **PowerShell** trong thư mục chứa `index.html`, chạy:

```bash
git init
git add .
git commit -m "Thiep sinh nhat"
git branch -M main
git remote add origin https://github.com/TÊN-GITHUB-CỦA-BẠN/thiep-chuc-mung.git
git push -u origin main
```

3. Trên GitHub: **Settings** → **Pages** → **Deploy from a branch** → branch **main**, folder **/ (root)** → Save.
4. Link thiệp: **https://TÊN-GITHUB-CỦA-BẠN.github.io/thiep-chuc-mung/**

---

## QR code

- Sau khi bật GitHub Pages, mở thiệp **bằng link** (không mở file local). Ở **trang cuối** sẽ có:
  - **QR code** trỏ đúng link thiệp (quét là mở được).
  - Nút **Copy link** để gửi.
- Chụp màn hình phần QR hoặc in trang để gửi cho người khác quét.

---

## File cần có trong repo

- `index.html` (bắt buộc)
- `MAnh.jpg`, `older.jpg` (ảnh)
- `1.mp4` (nhạc nền, tùy chọn)
- Nếu có file tiếng pháo: đặt trong repo và sửa `src` của `#soundExplosion` trong `index.html`
