import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/admin/BImaterials.dart';
import 'package:student/admin/CSmaterials.dart';
import 'package:student/admin/ISmaterials.dart';
import 'package:student/mainPages/departD.dart';
import 'package:student/yearsMaterials/adminyearsmaterialsai.dart';
import 'package:student/yearsMaterials/adminyearsmaterialsbi.dart';
import 'package:student/yearsMaterials/adminyearsmaterialscs.dart';
import 'package:student/yearsMaterials/adminyearsmaterialsis.dart';
import 'AImaterials.dart';
class DEPmaterials extends StatelessWidget{
  const DEPmaterials({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: departementD(adminyearsmaterialscs(),adminyearsmaterialsis(),adminyearsmaterialsai(),adminyearsmaterialsbi()),
    );
  }
}
