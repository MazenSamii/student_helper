import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/admin/AIaddsch.dart';
import 'package:student/admin/BIaddsch.dart';
import 'package:student/admin/CSaddsch.dart';
import 'package:student/admin/ISaddsch.dart';
import 'package:student/mainPages/departD.dart';
import 'package:student/yearsSCH/adminyearsSCHai.dart';

import '../yearsSCH/adminyearsSCHbi.dart';
import '../yearsSCH/adminyearsSCHcs.dart';
import '../yearsSCH/adminyearsSCHis.dart';

class DEPsch extends StatelessWidget {
  const DEPsch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: departementD(adminyearsSCHcs(),adminyearsSCHis(),adminyearsSCHai(),adminyearsSCHbi()),
    );
  }
}
