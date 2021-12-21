
class Display_data {

  final String card_display_style;

	Display_data.fromJsonMap(Map<String, dynamic> map): 
		card_display_style = map["card_display_style"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['card_display_style'] = card_display_style;
		return data;
	}
}
