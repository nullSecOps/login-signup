import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //instance for auth
  final FirebaseAuth auth = FirebaseAuth.instance;
  //sign in
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try {
      UserCredential usercredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return usercredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
}
