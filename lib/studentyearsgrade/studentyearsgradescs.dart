import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearviewgrades/firstyearviewgradescs.dart';

import '../student/DEPstudentgrades.dart';
import '../yearviewgrades/lastyearviewgradescs.dart';
import '../yearviewgrades/secondyearviewgradescs.dart';
import '../yearviewgrades/thirdyearviewgradescs.dart';

class studentyearsgradescs extends StatelessWidget {
  const studentyearsgradescs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(firstyearviewgradescs(),secondyearviewgradescs(),thirdyearviewgradescs(),lastyearviewgradescs(),DEPstudentgrades()),
    );
  }
}
