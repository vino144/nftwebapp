class TokenModel{
  String name;
  int num_sales;
  String image_url;
  String payment_symbol;
  double payment_eth_price;
  double payment_usd_price;
  double total_sales;
  double total_supply;
  double count;
  double num_owners;
  double avg_price;
  String createdDate;

  TokenModel(
      this.name,
      this.num_sales,
      this.image_url,
      this.payment_symbol,
      this.payment_eth_price,
      this.payment_usd_price,
      this.total_sales,
      this.total_supply,
      this.count,
      this.num_owners,
      this.avg_price,
      this.createdDate);
}