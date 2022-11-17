class DangKyuserObject {
  String id;
  final String tennguoichoi;
  final String kimcuong;
  DangKyuserObject({
    this.id = '',
    required this.tennguoichoi,
    this.kimcuong = '0',
  });
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'tennguoichoi': tennguoichoi,
      'kimcuong': kimcuong,
    };
  }
}
