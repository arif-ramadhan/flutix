part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(Users user) async {
    _userCollection.doc(user.id).set({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'selectedGenres': user.selectedGenres,
      'selectedLanguage': user.selectedLanguage,
      'profilePicture': user.profilePicture ?? ""
    });
  }

  static Future<Users> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    return Users(
      id,
      snapshot.data()!['email'],
      balance: snapshot.data()!['balance'],
      profilePicture: snapshot.data()!['profilePicture'],
      selectedGenres: (snapshot.data()!['selectedGenres'] as List)
          .map((e) => e.toString())
          .toList(),
      name: snapshot.data()!['name'],
    );
  }
}
