class CoinModel {
  String? name;
  String? image;
  String? symbol;
  num? current_price;
  num? price_change_24h;
  num? price_change_percentage_24h;

  CoinModel(
      {this.image,
      this.name,
      this.symbol,
      this.current_price,
      this.price_change_24h,
      this.price_change_percentage_24h});

  factory CoinModel.fromJson(Map<String, dynamic> json) {
    return CoinModel(
      image: json['image'],
      name: json['name'],
      symbol: json['symbol'],
      current_price: json['current_price'],
      price_change_24h: json['price_change_24h'],
      price_change_percentage_24h: json['price_change_percentage_24h'],
    );
  }
}
