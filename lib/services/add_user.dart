import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future addUser(name, email, password, address, number) async {
  final docUser = FirebaseFirestore.instance.collection('Users').doc();

  final json = {
    'name': name,
    'address': address,
    'number': number,
    'email': email,
    'password': password,
    'dateTime': DateTime.now(),
    'uid': FirebaseAuth.instance.currentUser!.uid
  };

  await docUser.set(json);
}
