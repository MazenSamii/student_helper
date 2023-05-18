import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/admin/DEPmaterials.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsviewmaterials/aivmaterialsF.dart';
import 'package:student/yearsviewmaterials/aivmaterialsL.dart';
import 'package:student/yearsviewmaterials/aivmaterialsS.dart';
import 'package:student/yearsviewmaterials/aivmaterialsT.dart';

class adminyearsmaterialsai extends StatelessWidget {
  const adminyearsmaterialsai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(aivmaterialsF(),aivmaterialsS(),aivmaterialsT(),aivmaterialsL(),DEPmaterials()),
    );
  }
}
