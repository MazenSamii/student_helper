import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/departD.dart';
import 'package:student/student/CSaddmaterials.dart';
import 'package:student/studentyearsmaterials/studentyearsmaterialsbi.dart';

import '../studentyearsmaterials/studentyearsmaterialsai.dart';
import '../studentyearsmaterials/studentyearsmaterialscs.dart';
import '../studentyearsmaterials/studentyearsmaterialsis.dart';
import 'AIaddmaterials.dart';
import 'BIaddmaterials.dart';
import 'ISaddmaterials.dart';

class DEPstudentmaterials extends StatelessWidget {
  const DEPstudentmaterials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: departementD(studentyearsmaterialscs(),studentyearsmaterialsis(),studentyearsmaterialsai(),studentyearsmaterialsbi()),
    );
  }
}
