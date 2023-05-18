import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/logANDreg/loginD.dart';
import 'package:student/test.dart';

import '../student/studentMainPage.dart';

class chatLogin extends StatelessWidget {
  const chatLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginpageD(sender()),
    );
  }
}