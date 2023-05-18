import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';

import '../student/DEPstudentgrades.dart';
import '../yearviewgrades/biviewgradesF.dart';
import '../yearviewgrades/biviewgradesL.dart';
import '../yearviewgrades/biviewgradesS.dart';
import '../yearviewgrades/biviewgradesT.dart';

class studentyearsgradescsbi extends StatelessWidget {
  const studentyearsgradescsbi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(biviewgradesF(),biviewgradesS(),biviewgradesT(),biviewgradesL(),DEPstudentgrades()),
    );
  }
}
