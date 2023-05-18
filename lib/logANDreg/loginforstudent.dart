import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/logANDreg/loginD.dart';

import '../student/studentMainPage.dart';

class studentlogin extends StatelessWidget {
  const studentlogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginpageD(StudentMainPage()),
    );
  }
}
