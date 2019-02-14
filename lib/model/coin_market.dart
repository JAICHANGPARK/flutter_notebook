import 'package:flutter/material.dart';

class CoinMarket {
  final String id;
  final String name;
  final String symbol;
  final String priceUsd;
  final String percentChange1h;
  final String percentChange24h;
  final String percentChange7d;

  CoinMarket(
      {Key key,
      this.id,
      this.name,
      this.symbol,
      this.priceUsd,
      this.percentChange1h,
      this.percentChange24h,
      this.percentChange7d});

  factory CoinMarket.fromJson(Map<String, dynamic> json) {
    return CoinMarket(
      id: json['id'],
      name: json['name'],
      symbol: json['symbol'],
      priceUsd: json['price_usd'],
      percentChange1h: json['percent_change_1h'],
      percentChange24h: json['percent_change_24h'],
      percentChange7d: json['percent_change_7d'],
    );
  }
}
