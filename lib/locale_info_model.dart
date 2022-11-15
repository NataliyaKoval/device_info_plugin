class LocaleInfo {
  final String language;
  final String country;

  LocaleInfo(this.language, this.country);

  static LocaleInfo fromMap(Map map) {
    return LocaleInfo(
      map['language'] as String,
      map['country'] as String,
    );
  }
}
