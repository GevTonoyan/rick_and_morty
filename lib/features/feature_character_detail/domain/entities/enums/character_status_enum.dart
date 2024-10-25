enum CharacterStatus {
  alive('Alive'),
  dead('Dead'),
  unknown('Unknown');

  final String title;

  const CharacterStatus(this.title);

  static CharacterStatus fromString(String status) {
    switch (status.toLowerCase()) {
      case 'alive':
        return CharacterStatus.alive;
      case 'dead':
        return CharacterStatus.dead;
      case 'unknown':
        return CharacterStatus.unknown;
      default:
        return CharacterStatus.unknown;
    }
  }

  String iconPath() {
    switch (this) {
      case CharacterStatus.alive:
        return 'assets/icons/status_alive.svg';
      case CharacterStatus.dead:
        return 'assets/icons/status_dead.svg';
      case CharacterStatus.unknown:
        return 'assets/icons/status_unknown.svg';
    }
  }
}
