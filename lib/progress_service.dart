import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProgressService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String get userId => FirebaseAuth.instance.currentUser?.uid ?? '';

  Future<void> updateProgress(int streaks, int sessions) async {
    await _firestore.collection('users').doc(userId).set({
      'streaks': streaks,
      'sessions': sessions,
    }, SetOptions(merge: true));
  }

  Future<Map<String, dynamic>?> getProgress() async {
    DocumentSnapshot doc = await _firestore.collection('users').doc(userId).get();
    return doc.exists ? doc.data() as Map<String, dynamic> : null;
  }
}
