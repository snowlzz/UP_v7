// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> publicLog(String page) async {
  await FirebaseFirestore.instance
      .collection("Public")
      .doc()
      .set({'DateTime': Timestamp.now(), 'Page': page});
}
