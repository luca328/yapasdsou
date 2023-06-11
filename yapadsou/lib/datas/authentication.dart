import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  static authenticate(emailAddress, password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailAddress, password: password);
      return {"credentials": credential};
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return {"error": 'No user found for that email.'};
      } else if (e.code == 'wrong-password') {
        return {"error": 'The password provided is wrong.'};
      }
    }
  }

  static register(emailAddress, password) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return {"credentials": credential};
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return {"error": 'The password provided is too weak.'};
      } else if (e.code == 'email-already-in-use') {
        return {"error": 'The account already exists for that email.'};
      }
    }
  }
}
