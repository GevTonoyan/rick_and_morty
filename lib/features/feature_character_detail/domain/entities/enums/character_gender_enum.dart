enum CharacterGender {
  male('Male'),
  female('Female'),
  unknown('Unknown');

  final String title;

  const CharacterGender(this.title);

  static CharacterGender fromString(String value) {
    switch (value.toLowerCase()) {
      case 'male':
        return CharacterGender.male;
      case 'female':
        return CharacterGender.female;
      case 'unknown':
        return CharacterGender.unknown;
      default:
        return CharacterGender.unknown;
    }
  }

  String iconPath() {
    switch (this) {
      case CharacterGender.male:
        return 'assets/icons/gender_male.svg';
      case CharacterGender.female:
        return 'assets/icons/gender_female.svg';
      case CharacterGender.unknown:
        return 'assets/icons/gender_unknown.svg';
    }
  }
}
