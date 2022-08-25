import 'dart:convert';

Translations personaFromJson(String str) => Translations.fromJson(json.decode(str));

String personaToJson(Translations data) => json.encode(data.toJson());

class Translations {
  String br;
  String pt;
  String nl;
  String hr;
  String fa;
  String de;
  String es;
  String fr;
  String ja;
  String it;
  String hu;

  Translations({
    required this.br,
    required this.pt,
    required this.nl,
    required this.hr,
    required this.fa,
    required this.de,
    required this.es,
    required this.fr,
    required this.ja,
    required this.it,
    required this.hu,
  });

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
    pt : json['pt'],
    nl : json['nl'],
    hr : json['hr'],
    fa : json['fa'],
    de : json['de'],
    br : json['br'],
    es : json['es'],
    fr : json['fr'],
    ja : json['ja'],
    it : json['it'],
    hu : json['hu'],
  );

  Map<String, dynamic> toJson() => {
    'br' : br,
    'pt' : pt,
    'nl' : nl,
    'hr' : hr,
    'fa' : fa,
    'de' : de,
    'es' : es,
    'fr' : fr,
    'ja' : ja,
    'it' : it,
    'hu' : hu,
  };
}