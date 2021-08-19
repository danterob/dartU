// To parse this JSON data, do
//
//     final reqresCountry = reqresCountryFromJson(jsonString);

import 'dart:convert';

import 'package:dart_application_udemy/classes/currency.dart';
import 'package:dart_application_udemy/classes/lenguage.dart';
import 'package:dart_application_udemy/classes/regionalblock.dart';
import 'package:dart_application_udemy/classes/translations.dart';

ReqresCountry reqresCountryFromJson(String str) =>
    ReqresCountry.fromJson(json.decode(str));

String reqresCountryToJson(ReqresCountry data) => json.encode(data.toJson());

class ReqresCountry {
  ReqresCountry({
    required this.name,
    required this.topLevelDomain,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.callingCodes,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.population,
    required this.latlng,
    required this.demonym,
    required this.area,
    required this.gini,
    required this.timezones,
    required this.borders,
    required this.nativeName,
    required this.numericCode,
    required this.currencies,
    required this.languages,
    required this.translations,
    required this.flag,
    required this.regionalBlocs,
    required this.cioc,
  });

  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String region;
  String subregion;
  int population;
  List<int> latlng;
  String demonym;
  int area;
  double gini;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  String numericCode;
  List<Currency> currencies;
  List<Language> languages;
  Translations translations;
  String flag;
  List<RegionalBloc> regionalBlocs;
  String cioc;

  factory ReqresCountry.fromJson(Map<String, dynamic> json) => ReqresCountry(
        name: json['name'],
        topLevelDomain: List<String>.from(json['topLevelDomain'].map((x) => x)),
        alpha2Code: json['alpha2Code'],
        alpha3Code: json['alpha3Code'],
        callingCodes: List<String>.from(json['callingCodes'].map((x) => x)),
        capital: json['capital'],
        altSpellings: List<String>.from(json['altSpellings'].map((x) => x)),
        region: json['region'],
        subregion: json['subregion'],
        population: json['population'],
        latlng: List<int>.from(json['latlng'].map((x) => x.toInt())),
        demonym: json['demonym'],
        area: json['area'].toInt(),
        gini: json['gini'].toDouble(),
        timezones: List<String>.from(json['timezones'].map((x) => x)),
        borders: List<String>.from(json['borders'].map((x) => x)),
        nativeName: json['nativeName'],
        numericCode: json['numericCode'],
        currencies: List<Currency>.from(
            json['currencies'].map((x) => Currency.fromJson(x))),
        languages: List<Language>.from(
            json['languages'].map((x) => Language.fromJson(x))),
        translations: Translations.fromJson(json['translations']),
        flag: json['flag'],
        regionalBlocs: List<RegionalBloc>.from(
            json['regionalBlocs'].map((x) => RegionalBloc.fromJson(x))),
        cioc: json['cioc'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'topLevelDomain': List<dynamic>.from(topLevelDomain.map((x) => x)),
        'alpha2Code': alpha2Code,
        'alpha3Code': alpha3Code,
        'callingCodes': List<dynamic>.from(callingCodes.map((x) => x)),
        'capital': capital,
        'altSpellings': List<dynamic>.from(altSpellings.map((x) => x)),
        'region': region,
        'subregion': subregion,
        'population': population,
        'latlng': List<dynamic>.from(latlng.map((x) => x)),
        'demonym': demonym,
        'area': area,
        'gini': gini,
        'timezones': List<dynamic>.from(timezones.map((x) => x)),
        'borders': List<dynamic>.from(borders.map((x) => x)),
        'nativeName': nativeName,
        'numericCode': numericCode,
        'currencies': List<dynamic>.from(currencies.map((x) => x.toJson())),
        'languages': List<dynamic>.from(languages.map((x) => x.toJson())),
        'translations': translations.toJson(),
        'flag': flag,
        'regionalBlocs':
            List<dynamic>.from(regionalBlocs.map((x) => x.toJson())),
        'cioc': cioc,
      };
}
