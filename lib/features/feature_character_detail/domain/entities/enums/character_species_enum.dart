enum CharacterSpecies {
  human('Human'),
  alien('Alien');

  final String title;

  const CharacterSpecies(this.title);

  static CharacterSpecies fromString(String value) {
    switch (value.toLowerCase()) {
      case 'human':
        return CharacterSpecies.human;
      case 'alien':
        return CharacterSpecies.alien;
      default:
        return CharacterSpecies.human;
    }
  }

  String iconPath() {
    switch (this) {
      case CharacterSpecies.human:
        return 'assets/icons/species_human.svg';
      case CharacterSpecies.alien:
        return 'assets/icons/species_alien.svg';
    }
  }
}
