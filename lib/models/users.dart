part of 'models.dart';

class Users extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final String? profilePicture;
  final List<String>? selectedGenres;
  final String? selectedLanguage;
  final int? balance;

  Users(this.id, this.email,
      {this.name,
      this.profilePicture,
      this.selectedGenres,
      this.selectedLanguage,
      this.balance});

  @override
  String toString() {
    return "[$id] - $name, $email";
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        email,
        name,
        profilePicture,
        selectedGenres,
        selectedLanguage,
        balance,
      ];
}
