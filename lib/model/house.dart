class House {
  String name;
  String address;
  String imgurl;

  House(this.name, this.address, this.imgurl);
  static List<House> generateRecomended() {
    return [
      House('Baciro', 'jln.Andong,Baciro,', 'assets/image/house1.jpeg'),
      House('Baciro', 'jln.Andong,Baciro,', 'assets/image/house1.jpeg'),
    ];
  }

  static List<House> generateBestOffer() {
    return [
      House('Baciro', 'jln.Andong,Baciro,', 'assets/image/offer01.jpeg'),
      House('Baciro', 'jln.Andong,Baciro,', 'assets/image/offer02.jpeg'),
    ];
  }
}
