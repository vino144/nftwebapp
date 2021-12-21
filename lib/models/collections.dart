import 'package:nftwebapp/models/traits.dart';
import 'package:nftwebapp/models/stats.dart';
import 'package:nftwebapp/models/display_data.dart';

class Collections {

  final List<Object> primary_asset_contracts;
  final Traits traits;
  final Stats stats;
  final Object banner_image_url;
  final Object chat_url;
  final String created_date;
  final bool default_to_fiat;
  final String description;
  final String dev_buyer_fee_basis_points;
  final String dev_seller_fee_basis_points;
  final Object discord_url;
  final Display_data display_data;
  final Object external_url;
  final bool featured;
  final Object featured_image_url;
  final bool hidden;
  final String safelist_request_status;
  final Object image_url;
  final bool is_subject_to_whitelist;
  final Object large_image_url;
  final Object medium_username;
  final String name;
  final bool only_proxied_transfers;
  final String opensea_buyer_fee_basis_points;
  final String opensea_seller_fee_basis_points;
  final Object payout_address;
  final bool require_email;
  final Object short_description;
  final String slug;
  final Object telegram_url;
  final Object twitter_username;
  final Object instagram_username;
  final Object wiki_url;

	Collections.fromJsonMap(Map<String, dynamic> map): 
		primary_asset_contracts = map["primary_asset_contracts"],
		traits = Traits.fromJsonMap(map["traits"]),
		stats = Stats.fromJsonMap(map["stats"]),
		banner_image_url = map["banner_image_url"],
		chat_url = map["chat_url"],
		created_date = map["created_date"],
		default_to_fiat = map["default_to_fiat"],
		description = map["description"],
		dev_buyer_fee_basis_points = map["dev_buyer_fee_basis_points"],
		dev_seller_fee_basis_points = map["dev_seller_fee_basis_points"],
		discord_url = map["discord_url"],
		display_data = Display_data.fromJsonMap(map["display_data"]),
		external_url = map["external_url"],
		featured = map["featured"],
		featured_image_url = map["featured_image_url"],
		hidden = map["hidden"],
		safelist_request_status = map["safelist_request_status"],
		image_url = map["image_url"],
		is_subject_to_whitelist = map["is_subject_to_whitelist"],
		large_image_url = map["large_image_url"],
		medium_username = map["medium_username"],
		name = map["name"],
		only_proxied_transfers = map["only_proxied_transfers"],
		opensea_buyer_fee_basis_points = map["opensea_buyer_fee_basis_points"],
		opensea_seller_fee_basis_points = map["opensea_seller_fee_basis_points"],
		payout_address = map["payout_address"],
		require_email = map["require_email"],
		short_description = map["short_description"],
		slug = map["slug"],
		telegram_url = map["telegram_url"],
		twitter_username = map["twitter_username"],
		instagram_username = map["instagram_username"],
		wiki_url = map["wiki_url"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['primary_asset_contracts'] = primary_asset_contracts;
		data['traits'] = traits == null ? null : traits.toJson();
		data['stats'] = stats == null ? null : stats.toJson();
		data['banner_image_url'] = banner_image_url;
		data['chat_url'] = chat_url;
		data['created_date'] = created_date;
		data['default_to_fiat'] = default_to_fiat;
		data['description'] = description;
		data['dev_buyer_fee_basis_points'] = dev_buyer_fee_basis_points;
		data['dev_seller_fee_basis_points'] = dev_seller_fee_basis_points;
		data['discord_url'] = discord_url;
		data['display_data'] = display_data == null ? null : display_data.toJson();
		data['external_url'] = external_url;
		data['featured'] = featured;
		data['featured_image_url'] = featured_image_url;
		data['hidden'] = hidden;
		data['safelist_request_status'] = safelist_request_status;
		data['image_url'] = image_url;
		data['is_subject_to_whitelist'] = is_subject_to_whitelist;
		data['large_image_url'] = large_image_url;
		data['medium_username'] = medium_username;
		data['name'] = name;
		data['only_proxied_transfers'] = only_proxied_transfers;
		data['opensea_buyer_fee_basis_points'] = opensea_buyer_fee_basis_points;
		data['opensea_seller_fee_basis_points'] = opensea_seller_fee_basis_points;
		data['payout_address'] = payout_address;
		data['require_email'] = require_email;
		data['short_description'] = short_description;
		data['slug'] = slug;
		data['telegram_url'] = telegram_url;
		data['twitter_username'] = twitter_username;
		data['instagram_username'] = instagram_username;
		data['wiki_url'] = wiki_url;
		return data;
	}
}
