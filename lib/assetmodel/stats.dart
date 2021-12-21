
class Stats {

  final double one_day_volume;
  final double one_day_change;
  final int one_day_sales;
  final double one_day_average_price;
  final double seven_day_volume;
  final double seven_day_change;
  final int seven_day_sales;
  final double seven_day_average_price;
  final double thirty_day_volume;
  final double thirty_day_change;
  final int thirty_day_sales;
  final double thirty_day_average_price;
  final double total_volume;
  final int total_sales;
  final int total_supply;
  final int count;
  final int num_owners;
  final double average_price;
  final int num_reports;
  final double market_cap;
  final int floor_price;

	Stats.fromJsonMap(Map<String, dynamic> map): 
		one_day_volume = map["one_day_volume"],
		one_day_change = map["one_day_change"],
		one_day_sales = map["one_day_sales"],
		one_day_average_price = map["one_day_average_price"],
		seven_day_volume = map["seven_day_volume"],
		seven_day_change = map["seven_day_change"],
		seven_day_sales = map["seven_day_sales"],
		seven_day_average_price = map["seven_day_average_price"],
		thirty_day_volume = map["thirty_day_volume"],
		thirty_day_change = map["thirty_day_change"],
		thirty_day_sales = map["thirty_day_sales"],
		thirty_day_average_price = map["thirty_day_average_price"],
		total_volume = map["total_volume"],
		total_sales = map["total_sales"],
		total_supply = map["total_supply"],
		count = map["count"],
		num_owners = map["num_owners"],
		average_price = map["average_price"],
		num_reports = map["num_reports"],
		market_cap = map["market_cap"],
		floor_price = map["floor_price"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['one_day_volume'] = one_day_volume;
		data['one_day_change'] = one_day_change;
		data['one_day_sales'] = one_day_sales;
		data['one_day_average_price'] = one_day_average_price;
		data['seven_day_volume'] = seven_day_volume;
		data['seven_day_change'] = seven_day_change;
		data['seven_day_sales'] = seven_day_sales;
		data['seven_day_average_price'] = seven_day_average_price;
		data['thirty_day_volume'] = thirty_day_volume;
		data['thirty_day_change'] = thirty_day_change;
		data['thirty_day_sales'] = thirty_day_sales;
		data['thirty_day_average_price'] = thirty_day_average_price;
		data['total_volume'] = total_volume;
		data['total_sales'] = total_sales;
		data['total_supply'] = total_supply;
		data['count'] = count;
		data['num_owners'] = num_owners;
		data['average_price'] = average_price;
		data['num_reports'] = num_reports;
		data['market_cap'] = market_cap;
		data['floor_price'] = floor_price;
		return data;
	}
}
