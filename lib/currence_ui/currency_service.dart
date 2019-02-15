import 'package:flutter/material.dart';
import 'package:flutter_notebook/currence_ui/dashboard.dart';

class CurrencyService {
  getCurrencyString(currency) {
    if (currency == 'USD') return 'United States Doller';
    if (currency == 'RUB') return 'Russian Ruble';
    if (currency == 'KRW') return 'Korea Won';
    if (currency == 'JPY') return 'Japanese Yen';
  }

  convertCurrency(String fromCurrency, String toCurrency, int amount, context) {
    if (fromCurrency == 'USD') {
      switch (toCurrency) {
        case 'RUB':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                    currencyVal: amount,
                    convertedCurrency: (amount * 65).roundToDouble(),
                    currencyone: fromCurrency,
                    currencytwo: toCurrency,
                    isWhite: false,
                  )));
          break;

        case 'JPY':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                    currencyVal: amount,
                    convertedCurrency: (amount * 110.55).roundToDouble(),
                    currencyone: fromCurrency,
                    currencytwo: toCurrency,
                    isWhite: false,
                  )));

          break;

        case 'KRW':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                currencyVal: amount,
                convertedCurrency: (amount * 1127.20).roundToDouble(),
                currencyone: fromCurrency,
                currencytwo: toCurrency,
                isWhite: false,
              )));

          break;
      }
    }

    if (fromCurrency == 'RUB') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
                currencyVal: (amount / 65).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                isWhite: true,
              )));
    }

    if (fromCurrency == 'JPY') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: (amount * 0.0091).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }

    if (fromCurrency == 'KRW') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: (amount * 0.0091).toStringAsFixed(2),
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }
  }
}
