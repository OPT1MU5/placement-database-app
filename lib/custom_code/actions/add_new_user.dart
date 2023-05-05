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

final CollectionReference RegStuRef =
    FirebaseFirestore.instance.collection('registered_students');

Future<void> addNewUser(String userId, String name, String email, String phone,
    String comp, String usn) async {
  QuerySnapshot<Map<String, dynamic>> snapshot =
      await RegStuRef.where('usn', isEqualTo: usn).get()
          as QuerySnapshot<Map<String, dynamic>>;

  if (snapshot.docs.isNotEmpty) {
    // User already exists with this USN
    // Check if any document has the same company name
    bool foundMatchingCompany = false;
    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      if (doc.get('companyN') == comp) {
        // Found a matching document, update it
        foundMatchingCompany = true;
        await doc.reference.update({
          'display_name': name,
          'email': email,
          'phone_number': phone,
          'companyN': comp,
        });
        print('User updated');
      }
    }
    if (!foundMatchingCompany) {
      // No matching document found, add a new one
      await RegStuRef.add({
        'usn': usn,
        'display_name': name,
        'email': email,
        'phone_number': phone,
        'companyN': comp,
      });
      print('New user added');
    }
  } else {
    // User does not exist with this USN, add a new document
    await RegStuRef.add({
      'usn': usn,
      'display_name': name,
      'email': email,
      'phone_number': phone,
      'companyN': comp,
    });
    print('New user added');
  }
}
