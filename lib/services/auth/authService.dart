import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //instances of auth and firestore
  final FirebaseAuth _auth = FirebaseAuth.instance;

  
  //get current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  //sign in
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign up
  Future<UserCredential> signUpWithEmailAndPassword(String email, password) async {
    try {
      //create user
      UserCredential userCredential =
        await _auth.createUserWithEmailAndPassword(email: email, password: password);
    

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }


  //sign out
  Future<void> signOut() async {
    return await _auth.signOut();
  }


  //errors

}