// To parse this JSON data, do
//
//     final coinModel = coinModelFromJson(jsonString);

import 'dart:convert';

List<CoinModel> coinModelFromJson(String str) =>
    List<CoinModel>.from(json.decode(str).map((x) => CoinModel.fromJson(x)));

String coinModelToJson(List<CoinModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoinModel {
  CoinModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high24H,
    required this.low24H,
    required this.priceChange24H,
    required this.priceChangePercentage24H,
    required this.marketCapChange24H,
    required this.marketCapChangePercentage24H,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.athChangePercentage,
    required this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
    required this.roi,
    required this.lastUpdated,
  });

  String id;
  String symbol;
  String name;
  String image;
  double currentPrice;
  int marketCap;
  int marketCapRank;
  int fullyDilutedValuation;
  int totalVolume;
  double high24H;
  double low24H;
  double priceChange24H;
  double priceChangePercentage24H;
  double marketCapChange24H;
  double marketCapChangePercentage24H;
  double circulatingSupply;
  double totalSupply;
  double maxSupply;
  double ath;
  double athChangePercentage;
  DateTime athDate;
  double atl;
  double atlChangePercentage;
  DateTime atlDate;
  Roi roi;
  DateTime lastUpdated;

  factory CoinModel.fromJson(Map<String, dynamic> json) => CoinModel(
        id: json["id"] == null ? null : json["id"],
        symbol: json["symbol"] == null ? null : json["symbol"],
        name: json["name"] == null ? null : json["name"],
        image: json["image"] == null ? null : json["image"],
        currentPrice: json["current_price"] == null
            ? null
            : json["current_price"].toDouble(),
        marketCap: json["market_cap"] == null ? null : json["market_cap"],
        marketCapRank:
            json["market_cap_rank"] == null ? null : json["market_cap_rank"],
        fullyDilutedValuation: json["fully_diluted_valuation"] == null
            ? null
            : json["fully_diluted_valuation"],
        totalVolume: json["total_volume"] == null ? null : json["total_volume"],
        high24H: json["high_24h"] == null ? null : json["high_24h"].toDouble(),
        low24H: json["low_24h"] == null ? null : json["low_24h"].toDouble(),
        priceChange24H: json["price_change_24h"] == null
            ? null
            : json["price_change_24h"].toDouble(),
        priceChangePercentage24H: json["price_change_percentage_24h"] == null
            ? null
            : json["price_change_percentage_24h"].toDouble(),
        marketCapChange24H: json["market_cap_change_24h"] == null
            ? null
            : json["market_cap_change_24h"].toDouble(),
        marketCapChangePercentage24H:
            json["market_cap_change_percentage_24h"] == null
                ? null
                : json["market_cap_change_percentage_24h"].toDouble(),
        circulatingSupply: json["circulating_supply"] == null
            ? null
            : json["circulating_supply"].toDouble(),
        totalSupply: json["total_supply"] == null
            ? null
            : json["total_supply"].toDouble(),
        maxSupply:
            json["max_supply"] == null ? null : json["max_supply"].toDouble(),
        ath: json["ath"] == null ? null : json["ath"].toDouble(),
        athChangePercentage: json["ath_change_percentage"] == null
            ? null
            : json["ath_change_percentage"].toDouble(),
        athDate:
            json["ath_date"] == null ? null : DateTime.parse(json["ath_date"]),
        atl: json["atl"] == null ? null : json["atl"].toDouble(),
        atlChangePercentage: json["atl_change_percentage"] == null
            ? null
            : json["atl_change_percentage"].toDouble(),
        atlDate:
            json["atl_date"] == null ? null : DateTime.parse(json["atl_date"]),
        roi: json["roi"] == null ? null : Roi.fromJson(json["roi"]),
        lastUpdated: json["last_updated"] == null
            ? null
            : DateTime.parse(json["last_updated"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "symbol": symbol == null ? null : symbol,
        "name": name == null ? null : name,
        "image": image == null ? null : image,
        "current_price": currentPrice == null ? 0.0 : currentPrice,
        "market_cap": marketCap == null ? 0 : marketCap,
        "market_cap_rank": marketCapRank == null ? null : marketCapRank,
        "fully_diluted_valuation":
            fullyDilutedValuation == null ? null : fullyDilutedValuation,
        "total_volume": totalVolume == null ? null : totalVolume,
        "high_24h": high24H == null ? null : high24H,
        "low_24h": low24H == null ? null : low24H,
        "price_change_24h": priceChange24H == null ? null : priceChange24H,
        "price_change_percentage_24h":
            priceChangePercentage24H == null ? null : priceChangePercentage24H,
        "market_cap_change_24h":
            marketCapChange24H == null ? null : marketCapChange24H,
        "market_cap_change_percentage_24h": marketCapChangePercentage24H == null
            ? null
            : marketCapChangePercentage24H,
        "circulating_supply":
            circulatingSupply == null ? null : circulatingSupply,
        "total_supply": totalSupply == null ? null : totalSupply,
        "max_supply": maxSupply == null ? null : maxSupply,
        "ath": ath == null ? null : ath,
        "ath_change_percentage":
            athChangePercentage == null ? null : athChangePercentage,
        "ath_date": athDate == null ? null : athDate.toIso8601String(),
        "atl": atl == null ? null : atl,
        "atl_change_percentage":
            atlChangePercentage == null ? null : atlChangePercentage,
        "atl_date": atlDate == null ? null : atlDate.toIso8601String(),
        "roi": roi == null ? null : roi.toJson(),
        "last_updated":
            lastUpdated == null ? null : lastUpdated.toIso8601String(),
      };
}

class Roi {
  Roi({
    required this.times,
    required this.currency,
    required this.percentage,
  });

  double times;
  String currency;
  double percentage;

  factory Roi.fromJson(Map<String, dynamic> json) => Roi(
        times: json["times"] == null ? null : json["times"].toDouble(),
        currency: json["currency"] == null ? null : json["currency"],
        percentage:
            json["percentage"] == null ? null : json["percentage"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "times": times == null ? null : times,
        "currency": currency == null ? null : currency,
        "percentage": percentage == null ? null : percentage,
      };
}
