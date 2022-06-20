class Data {
  //size constants
  static const kMaxWidth = 800;
  static const kMaxHeight = 450;

  //data values
  static const kWeddingDateInMillis = 1662193800000; //03/09/2022 in millis
  // static const kWeddingDateInMillis = 1005210148293; //03/09/2022 in millis
  static const kWeddingHeaderLabel = 'Wedding Day';
  static const kWeddingDateLabel = '3 settembre 2022';
  static const kWeddingNames = 'Nicola & Roberta';
  static const kHeaderButtons = 'Luoghi dell\'evento';

  //all images link
  static List<String> images() {
    final list = [
      'https://i.imgur.com/u1a369r.jpg',
      'https://i.imgur.com/uTmgU6m.jpg',
      'https://i.imgur.com/IsbLAJs.jpg',
      'https://i.imgur.com/CiTHOFp.jpg',
      'https://i.imgur.com/j6D1G93.jpg',
      'https://i.imgur.com/iRe6l75.jpg',
      'https://i.imgur.com/XNTmbZd.jpg',
      'https://i.imgur.com/xAXC2Nj.jpg',
      'https://i.imgur.com/6N2xga7.jpg',
      'https://i.imgur.com/Vs8EMa5.jpg',
      'https://i.imgur.com/MkbZBiv.jpg',
      'https://i.imgur.com/pwTZoTm.jpg',
      'https://i.imgur.com/Vji4ZPF.jpg',
      'https://i.imgur.com/r75Qlsy.jpg',
      'https://i.imgur.com/ENjgFqo.jpg',
      'https://i.imgur.com/uPAHt5R.jpg',
      'https://i.imgur.com/ayHmZr4.jpg',
      'https://i.imgur.com/Lc4P11E.jpg',
      'https://i.imgur.com/truO2dQ.jpg',
      'https://i.imgur.com/9V0hvQ2.jpg',
      'https://i.imgur.com/VwkFHwX.jpg',
      'https://i.imgur.com/z3iXKz8.jpg',
      'https://i.imgur.com/zk3RSu1.jpg',
      'https://i.imgur.com/6hKWQIA.jpg',
      'https://i.imgur.com/0hB3Wk7.jpg',
      'https://i.imgur.com/kNmhJ13.jpg',
      'https://i.imgur.com/kfSruHM.jpg',
      'https://i.imgur.com/Sm2cdkn.jpg',
    ]..shuffle();
    return list;
  }
}
