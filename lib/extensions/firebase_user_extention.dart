part of 'extensions.dart';

extension FirebaseUserExtension on User {
  Users convertToUser(
          {String name = 'No Name',
          List<String> selectedGenres = const [],
          String selectedLanguage = 'English',
          int balance = 50000}) =>
      Users(this.uid, this.email,
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);

  Future<Users> fromFireStore() async => await UserServices.getUser(this.uid);
}
