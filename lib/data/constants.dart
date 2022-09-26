class Constants {
  //size constants
  static const kMaxWidth = 800;
  static const kMaxHeight = 450;

  //data values
  static const kWeddingDateInMillis = 1964601000229; //date in millis
  static const kChuchMapsLink = 'https://goo.gl/maps/h5a1icpqs8VrSkuE8';
  static const kRestaurantMapsLink = 'https://goo.gl/maps/nLdSUCCf8zuGRaH6A';
  static const kWhatsappLink = 'https://wa.me/+393341234567890';
  static const kTelegramLink = 'https://t.me/paperino';
  static const kMailLink = 'mailto:info@paperino.it';

  //labels
  static const kWeddingHeaderLabel = 'Wedding Day';
  static const kWeddingDateLabel = '3 april 2032';
  static const kWeddingNames = 'Paperino & Paperina';
  static const kHeaderButtons = 'Luoghi dell\'evento';
  static const kMarriedFor = 'Married for ';
  static const kChuchLabel = 'Church\ndirections';
  static const kRestaurantLabel = 'Restaurant\ndirections';
  static const kHaveQuestionsLabel = 'Any questions? Contact us!';
  static const kDayLabelSingular = 'day';
  static const kDayLabelPlural = 'days';
  static const kHourLabelSingular = 'hour';
  static const kHourLabelPlural = 'hours';
  static const kMinuteLabelSingular = 'minute';
  static const kMinuteLabelPlural = 'minutes';
  static const kSecondLabelSingular = 'second';
  static const kSecondLabelPlural = 'seconds';

  //all images link
  static List<String> getCarouselImages() {
    final list = [
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
      'https://i.imgur.com/xRNtHWm.png',
    ]..shuffle();
    return list;
  }
}
