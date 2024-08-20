-- Tạo cơ sở dữ liệu
CREATE DATABASE QuanLyDonHangThuongMaiDienTu;
USE QuanLyDonHangThuongMaiDienTu;

-- Tạo bảng SanPham
CREATE TABLE SanPham (
    MaSP VARCHAR(10) PRIMARY KEY,
    TenSanPham NVARCHAR(255) NOT NULL,
    MoTa TEXT,
    Gia DECIMAL(10, 2) NOT NULL,
    SoLuongTonKho INT NOT NULL,
    DanhMuc NVARCHAR(255),
    NgayTao DATE NOT NULL,
    TrangThai NVARCHAR(50) NOT NULL,
    DonViTinh VARCHAR(50)
);

-- Chèn dữ liệu vào bảng SanPham
INSERT INTO SanPham (MaSP, TenSanPham, MoTa, Gia, SoLuongTonKho, DanhMuc, NgayTao, TrangThai, DonViTinh)
VALUES
('SP001', N'Iphone 15', N'Điện Thoại Thông Minh', 10000000.00, 50, N'Điện Tử', '2024-08-01', N'Còn Hàng', N'Cái'),
('SP002', N'Laptop Asus', N'Máy Tính Sách Tay', 20000000.00, 30, N'Điện Tử', '2024-08-02', N'Còn Hàng', N'Cái'),
('SP003', N'Quần Jean', N'Quần Jean Siêu Đẹp', 3000000.00, 100, N'Thời Trang', '2024-08-03', N'Còn Hàng', N'Cái'),
('SP004', N'Quần Âu', N'Quần Âu Siêu Đẹp', 340000.00, 0, N'Thời Trang', '2024-08-02', N'Hết Hàng', N'Cái'),
('SP005', N'Áo Thun', N'Áo Thun Siêu Bền', 280000.00, 100, N'Thời Trang', '2024-08-02', N'Còn Hàng', N'Cái');

-- Tạo bảng KhachHang
CREATE TABLE KhachHang (
    MaKH VARCHAR(10) PRIMARY KEY,
    TenKhachHang NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    DiaChi NVARCHAR(255),
    SoDienThoai NVARCHAR(10),
    NgayTao DATE NOT NULL,
    GioiTinh NVARCHAR(10)
);

-- Chèn dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (MaKH, TenKhachHang, Email, DiaChi, SoDienThoai, NgayTao, GioiTinh)
VALUES
('KH001', N'Nguyễn Văn A', 'a@gmail.com', N'123 Đường A', '0123456789', '2024-08-06', 'Nam'),
('KH002', N'Trần Thị B', 'b@gmail.com', N'456 Đường B', '0987654321', '2024-08-03', 'Nữ'),
('KH003', N'Trần Văn C', 'c@gmail.com', N'785 Đường C', '0987847390', '2024-08-02', 'Nam');

-- Tạo bảng NhanVien
CREATE TABLE NhanVien (
    MaNV VARCHAR(10) PRIMARY KEY,
    TenLetan NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    MatKhau VARCHAR(255) NOT NULL,
    SoDienThoai VARCHAR(10) NOT NULL
);

-- Chèn dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (MaNV, TenLetan, Email, MatKhau, SoDienThoai)
VALUES
('NV001', N'Nguyễn Văn E', 'nguyenvane@gmail.com', 'nguyenvane123', '0123456789'),
('NV002', N'Nguyễn Thị F', 'nguyenthif@gmail.com', 'nguyenthif123', '0987654321'),
('NV003', N'Le Thi H', 'lethih@gmail.com', 'lethih123', '0928372728');

-- Tạo bảng QuanLy
CREATE TABLE QuanLy (
    MaQL VARCHAR(10) PRIMARY KEY,
    TenQuanLy NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    MatKhau NVARCHAR(255) NOT NULL,
    SoDienThoai VARCHAR(10)
);

-- Chèn dữ liệu vào bảng QuanLy
INSERT INTO QuanLy (MaQL, TenQuanLy, Email, MatKhau, SoDienThoai)
VALUES
('QL001', N'Nguyễn Trung H', 'ntrungh@gmail.com', 'ntrungh123', '0123456789'),
('QL002', N'Nguyễn Thị D', 'nguyenthid@gmail.com', 'nguyenthid123', '0987654321'),
('QL003', N'Nguyễn Văn Q', 'nguyenvanq@gmail.com', 'nguyenvanq', '0937472728');

-- Tạo bảng KhuyenMai
CREATE TABLE KhuyenMai (
    MaKM VARCHAR(10) PRIMARY KEY,
    TenKhuyenMai NVARCHAR(255) NOT NULL,
    MoTa TEXT,
    LoaiKhuyenMai NVARCHAR(225) NOT NULL,
    GiaTri DECIMAL(10, 2) NOT NULL,
    NgayBatDau DATE NOT NULL,
    NgayKetThuc DATE NOT NULL,
    TrangThai NVARCHAR(20) NOT NULL
);

-- Chèn dữ liệu vào bảng KhuyenMai
INSERT INTO KhuyenMai (MaKM, TenKhuyenMai, MoTa, LoaiKhuyenMai, GiaTri, NgayBatDau, NgayKetThuc, TrangThai)
VALUES
('KM001', N'Khuyến Mãi 20%', N'Giảm 20%', N'phantram', 20.00, '2024-08-01', '2025-01-01', 'HoatDong'),
('KM002', N'Khuyến Mãi 50%', N'Giảm 50%', N'phantram', 50.00, '2024-08-01', '2024-08-13', 'HetHan'),
('KM003', N'Khuyến Mãi 50K', N'Giảm 50k', N'tien', 50000.00, '2024-08-01', '2024-08-31', 'HoatDong');

-- Tạo bảng DonHang
CREATE TABLE DonHang (
    MaDH VARCHAR(10) PRIMARY KEY,
    KhachHangID VARCHAR(10),
    NgayTao DATE NOT NULL,
    TongTien DECIMAL(10, 2) NOT NULL,
    TrangThaiDonHang NVARCHAR(50) NOT NULL,
    FOREIGN KEY (KhachHangID) REFERENCES KhachHang(MaKH)
);

-- Chèn dữ liệu vào bảng DonHang
INSERT INTO DonHang (MaDH, KhachHangID, NgayTao, TongTien, TrangThaiDonHang)
VALUES
('DH001', 'KH001', '2024-08-01', 100000.00, 'ChuaGiao'),
('DH002', 'KH002', '2024-08-01', 200000.00, 'ChuaGiao');

-- Tạo bảng HoaDon
CREATE TABLE HoaDon (
    MaHD VARCHAR(10) PRIMARY KEY,
    DonHangID VARCHAR(10),
    KhachHangID VARCHAR(10),
    NgayTao DATE NOT NULL,
    TongTien DECIMAL(10, 2) NOT NULL,
    TrangThaiHoaDon NVARCHAR(50) NOT NULL,
    PhuongThucThanhToan NVARCHAR(50) NOT NULL,
    NgayThanhToan DATE,
    FOREIGN KEY (DonHangID) REFERENCES DonHang(MaDH),
    FOREIGN KEY (KhachHangID) REFERENCES KhachHang(MaKH)
);

-- Chèn dữ liệu vào bảng HoaDon
INSERT INTO HoaDon (MaHD, DonHangID, KhachHangID, NgayTao, TongTien, TrangThaiHoaDon, PhuongThucThanhToan)
VALUES
('HD001', 'DH001', 'KH001', '2024-08-01', 100000.00, 'ChoThanhToan', 'TheTinDung'),
('HD002', 'DH002', 'KH002', '2024-08-01', 200000.00, 'ChoThanhToan', 'TheTinDung');

-- Tạo bảng ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
    MaCTHD VARCHAR(10) PRIMARY KEY,
    HoaDonID VARCHAR(10),
    SanPhamID VARCHAR(10),
    SoLuong INT NOT NULL,
    GiaBan DECIMAL(10, 2) NOT NULL,
    GiamGia DECIMAL(10, 2),
    ThanhTien DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (HoaDonID) REFERENCES HoaDon(MaHD),
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(MaSP)
);

-- Chèn dữ liệu vào bảng ChiTietHoaDon
INSERT INTO ChiTietHoaDon (MaCTHD, HoaDonID, SanPhamID, SoLuong, GiaBan, GiamGia, ThanhTien)
VALUES
('CTHD001', 'HD001', 'SP001', 1, 10000000.00, 2000000.00, 8000000.00),
('CTHD002', 'HD002', 'SP002', 1, 20000000.00, 50000.00, 19950000.00);

-- Tạo bảng ChiTietKhuyenMai
CREATE TABLE ChiTietKhuyenMai (
    MaCTKM VARCHAR(10) PRIMARY KEY,
    KhuyenMaiID VARCHAR(10),
    SanPhamID VARCHAR(10),
    GiaTriKhuyenMai DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (KhuyenMaiID) REFERENCES KhuyenMai(MaKM),
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(MaSP)
);

-- Chèn dữ liệu vào bảng ChiTietKhuyenMai
INSERT INTO ChiTietKhuyenMai (MaCTKM, KhuyenMaiID, SanPhamID, GiaTriKhuyenMai)
VALUES
('CTKM001', 'KM001', 'SP001', 2000000.00),
('CTKM002', 'KM003', 'SP005', 50000.00);
