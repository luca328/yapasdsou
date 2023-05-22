import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer' as developper;

class Authentication {
  static authenticate(emailAddress, password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        developper.log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        developper.log('Wrong password provided for that user.');
      }
    }
  }

  static register(emailAddress, password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        developper.log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        developper.log('The account already exists for that email.');
      }
    } catch (e) {
      developper.log(e.toString());
    }
  }
}
