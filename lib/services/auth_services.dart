part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future SignUp(String email, String password, String name,
      List<String> selectedGenres, String selectedLanguange) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {}
  }
}
