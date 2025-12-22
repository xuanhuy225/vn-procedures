# 🇻🇳 VN-Procedures

> **Hệ thống quản lý thủ tục hành chính Việt Nam** - Built with Next.js

---

## 📊 Tổng quan Database

### Cấu trúc 6 bảng chính (MVP)

> Đây là số lượng tối ưu cho MVP - Không thiếu, không thừa, không phức tạp

| # | Bảng | Mô tả |
|---|------|-------|
| 1 | `procedures` | Thông tin thủ tục |
| 2 | `procedure_steps` | Các bước thực hiện |
| 3 | `documents` | Giấy tờ cần thiết |
| 4 | `procedure_documents` | Liên kết thủ tục - giấy tờ |
| 5 | `authorities` | Cơ quan thực hiện |
| 6 | `locations` | Địa phương |

---

## 📋 Danh mục thủ tục hành chính

### 🏠 1. Thủ tục đất đai – nhà ở

- ✅ Cấp Giấy chứng nhận quyền sử dụng đất (sổ đỏ)
- ✅ Đăng ký biến động đất đai (sang tên, thừa kế, tách thửa)
- ✅ Chuyển mục đích sử dụng đất
- ✅ Cấp phép xây dựng nhà ở
- ✅ Gia hạn thời hạn sử dụng đất

### 👤 2. Thủ tục dân cư – hộ tịch

- ✅ Cấp/cấp lại Căn cước công dân
- ✅ Đăng ký thường trú, tạm trú
- ✅ Khai sinh, khai tử
- ✅ Đăng ký kết hôn, ly hôn
- ✅ Xác nhận tình trạng hôn nhân

### 💼 3. Thủ tục doanh nghiệp – kinh doanh

- ✅ Đăng ký thành lập doanh nghiệp/hộ kinh doanh
- ✅ Thay đổi nội dung đăng ký kinh doanh
- ✅ Cấp mã số thuế
- ✅ Giải thể, tạm ngừng hoạt động
- ✅ Đăng ký con dấu doanh nghiệp

### 💰 4. Thủ tục thuế – tài chính

- ✅ Kê khai, quyết toán thuế TNCN/TNDN
- ✅ Hoàn thuế
- ✅ Miễn, giảm thuế
- ✅ Đăng ký hóa đơn điện tử
- ✅ Nộp thuế điện tử

### 🎓 5. Thủ tục giáo dục – đào tạo

- ✅ Cấp bằng tốt nghiệp, chứng chỉ
- ✅ Công nhận văn bằng nước ngoài
- ✅ Xác nhận sinh viên
- ✅ Miễn/giảm học phí
- ✅ Đăng ký học nghề

### 🏥 6. Thủ tục y tế – bảo hiểm

- ✅ Cấp thẻ bảo hiểm y tế
- ✅ Tham gia bảo hiểm xã hội
- ✅ Thanh toán chi phí BHYT
- ✅ Cấp giấy phép hành nghề y, dược
- ✅ Cấp giấy khám sức khỏe

### 🚗 7. Thủ tục giao thông – phương tiện

- ✅ Đăng ký xe ô tô, xe máy
- ✅ Đổi/cấp lại giấy phép lái xe
- ✅ Đăng kiểm phương tiện
- ✅ Cấp phù hiệu vận tải
- ✅ Sang tên xe

### 🏗️ 8. Thủ tục xây dựng – quy hoạch

- ✅ Xin giấy phép xây dựng
- ✅ Hoàn công công trình
- ✅ Điều chỉnh quy hoạch
- ✅ Thẩm định thiết kế xây dựng

### 🌱 9. Thủ tục tài nguyên – môi trường

- ✅ Đánh giá tác động môi trường (ĐTM)
- ✅ Cấp phép xả thải
- ✅ Đăng ký chủ nguồn thải chất thải nguy hại
- ✅ Quan trắc môi trường
- ✅ Cấp phép khai thác tài nguyên

### 🛂 10. Thủ tục xuất nhập cảnh – quốc tịch

- ✅ Cấp/gia hạn hộ chiếu
- ✅ Thị thực (visa)
- ✅ Gia hạn tạm trú
- ✅ Nhập/xin thôi quốc tịch Việt Nam

### ⚖️ 11. Thủ tục tư pháp – pháp lý

- ✅ Công chứng hợp đồng, giấy tờ
- ✅ Chứng thực bản sao
- ✅ Cấp Phiếu lý lịch tư pháp
- ✅ Trợ giúp pháp lý

---

## 🚀 Tech Stack

- **Framework**: Next.js
- **Database**: PostgreSQL (via Prisma)
- **ORM**: Prisma

---

