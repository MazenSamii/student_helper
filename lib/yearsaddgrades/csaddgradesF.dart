import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/test2.dart';

import '../yearsGrades/adminyearscs.dart';
class csaddgradesF extends StatefulWidget {
  @override
  _FileUploadScreenState createState() => _FileUploadScreenState();
}
class _FileUploadScreenState extends State<csaddgradesF> {
  File? _file;
  String? _fileName;
  String _collectionName = 'CS1';
  void _selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        final path = result.files.single.path;
        if (path != null) {
          _file = File(path);
        }
        _fileName = result.files.single.name;
      });
    }
  }
  Future<void> _uploadFileToFirebase() async {
    final Reference storageReference = FirebaseStorage.instance
        .ref()
        .child(_fileName!); // اسم الملف المحمل على Firebase Storage
    final UploadTask uploadTask = storageReference.putFile(_file!);
    final TaskSnapshot downloadUrl = (await uploadTask.whenComplete(() => null));
    final String url = (await downloadUrl.ref.getDownloadURL());
    final DocumentReference documentReference = FirebaseFirestore.instance
        .collection(_collectionName)
        .doc(); // إنشاء مستند جديد في Firestore
    documentReference.set({
      'name': _fileName, // اسم الملف
      'url': url, // رابط تحميل الملف
      'createdAt': DateTime.now(), // تاريخ إنشاء الملف في Firestore
    });
    setState(() {
      _file = null;
      _fileName = null;
    });
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('File Uploaded..')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Upload CS grades 1st'),
          backgroundColor: Colors.purple[200],
        ),
        body:Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/ground.jpg'),
                  fit: BoxFit.cover,
                  opacity: 150
              )
          ),

          child:Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 220),
                ),
                if (_file != null) Text(_fileName!),
                SizedBox(height: 20),
                MaterialButton(
                  height: 55,
                  color: Colors.white,
                  child: Text('Choose File',style: TextStyle(fontSize: 20),),
                  onPressed: _selectFile,
                ),
                SizedBox(height: 20),
                MaterialButton(
                  height: 55,
                  color: Colors.white,
                  child: Text('Upload File',style: TextStyle(fontSize: 20),),
                  onPressed: (_file != null) ? _uploadFileToFirebase : null,
                ),
                Container(
                  padding: EdgeInsets.only(top: 250),
                  child:MaterialButton(
                      child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.grey),),
                      onPressed:(){
Get.back(result: adminyearscsgrades());
                      }
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
