import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth_firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => FirebaseAuth_firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => FirebaseAuth_firebaseAuth.authStateChanges();

  Future<void> signInWithEmailandPassword({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth_firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> createUserWithEmailandPassword({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth_firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await FirebaseAuth_firebaseAuth.signOut();
  }
}
