// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference eduDetailsRef =
    FirebaseFirestore.instance.collection('edu_KYC');

Future<void> updateEducationDetails(
    String userId,
    String schoolName,
    String marksScored10,
    String registeredNumber10,
    String marksCard10,
    String board10,
    String usn,
    String firstname,
    String ctype,
    String cName,
    String grade12marks,
    String board12,
    String cRegNum,
    String markscard12) {
  return eduDetailsRef.doc(userId).get().then((docSnapshot) {
    if (docSnapshot.exists) {
      eduDetailsRef
          .doc(userId)
          .update({
            'usn': usn,
            'name': firstname,
            'School_Name': schoolName,
            'Grade10_marks': marksScored10,
            'regNum_10': registeredNumber10,
            'markscard_10': marksCard10,
            'board_10': board10,
            'cType': ctype,
            'cName': cName,
            'grade12_marks': grade12marks,
            'board12': board12,
            'CregNum': cRegNum,
            'markscard_12': markscard12
          })
          .then((value) => print('Education details updated'))
          .catchError(
              (error) => print('Failed to update education details: $error'));
    } else {
      eduDetailsRef
          .doc(userId)
          .set({
            'usn': usn,
            'name': firstname,
            'School_Name': schoolName,
            'Grade10_marks': marksScored10,
            'regNum_10': registeredNumber10,
            'markscard_10': marksCard10,
            'board_10': board10,
            'cType': ctype,
            'cName': cName,
            'grade12_marks': grade12marks,
            'board12': board12,
            'CregNum': cRegNum,
            'markscard_12': markscard12
          })
          .then((value) => print('Education details added'))
          .catchError(
              (error) => print('Failed to add education details: $error'));
    }
  });
}
