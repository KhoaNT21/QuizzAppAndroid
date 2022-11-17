import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/obj/dangky_obj.dart';
import 'package:flutter_application_1/obj/dangkyuser_obj.dart';
import 'package:flutter_application_1/provider/dangky_provider.dart';

class register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return registerState();
  }
}

class registerState extends State<register> {
  TextEditingController txtTentaikhoan = new TextEditingController();
  TextEditingController txtMatkhau = new TextEditingController();
  TextEditingController txtSdt = new TextEditingController();
  TextEditingController txtTenNguoiChoi = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black87,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Đăng Ký",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 250, left: 40, right: 40),
              child: TextField(
                controller: txtTentaikhoan,
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(13),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Tên Đăng Nhập',
                    hintText: '*',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(left: 40, right: 40),
            //   child: TextField(
            //     controller: txtTenNguoiChoi,
            //     decoration: InputDecoration(
            //         isCollapsed: true,
            //         contentPadding: EdgeInsets.all(13),
            //         fillColor: Colors.white,
            //         filled: true,
            //         hintText: 'Tên Người Chơi',
            //         border: OutlineInputBorder(
            //             borderSide: BorderSide.none,
            //             borderRadius: BorderRadius.circular(12))),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextField(
                controller: txtMatkhau,
                obscureText: true,
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(13),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Mật Khẩu',
                    hintText: '*',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextField(
                controller: txtSdt,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(13),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Số Điện Thoại',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(185, 236, 171, 100),
                    foregroundColor: Color.fromRGBO(68, 58, 58, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(239, 50)),
                onPressed: () {
                  if (txtTentaikhoan.text.isEmpty ||
                      txtMatkhau.text.isEmpty ||
                      txtSdt.text.isEmpty) {
                    final snackBar = SnackBar(content: Text('Chưa Nhập Đủ'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                  if (txtSdt.text.length != 10) {
                    final snackBar =
                        SnackBar(content: Text('Sai Định Dạng Số Điện Thoại'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                  final taikhoan = DangKyObject(
                    tentaikhoan: txtTentaikhoan.text,
                    matkhau: txtMatkhau.text,
                    Sdt: txtSdt.text,
                  );
                  // final nguoichoi =
                  //     DangKyuserObject(tennguoichoi: txtTenNguoiChoi.text);
                  DangKy(taikhoan);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Đăng Ký',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
