import 'awesome_place_model.dart';
import '../../domain/entities/awesome_place_entity.dart';

class PredictionModel extends PredictionEntity {
  PredictionModel({
    double? latitude,
    double? longitude,
    String? description,
    List<MatchedSubstring>? matchedSubstrings,
    String? placeId,
    String? reference,
    StructuredFormatting? structuredFormatting,
    List<Term>? terms,
    List<String>? types,
  }) : super(
          latitude: latitude,
          longitude: longitude,
          description: description,
          matchedSubstrings: matchedSubstrings,
          placeId: placeId,
          reference: reference,
          structuredFormatting: structuredFormatting,
          terms: terms,
          types: types,
        );

  factory PredictionModel.fromJson(Map<String, dynamic> json) =>
      PredictionModel(
        description: json["description"],
        matchedSubstrings: json["matched_substrings"] == null
            ? []
            : List<MatchedSubstring>.from(json["matched_substrings"]!
                .map((x) => MatchedSubstring.fromJson(x))),
        placeId: json["place_id"],
        reference: json["reference"],
        structuredFormatting: json["structured_formatting"] == null
            ? null
            : StructuredFormatting.fromJson(json["structured_formatting"]),
        terms: json["terms"] == null
            ? []
            : List<Term>.from(json["terms"]!.map((x) => Term.fromJson(x))),
        types: json["types"] == null
            ? []
            : List<String>.from(json["types"]!.map((x) => x)),
      );


  Map<String, dynamic> toMap() {
    return {
      'latitude': this.latitude,
      'longitude': this.longitude,
      'description': this.description,
      'matchedSubstrings': this.matchedSubstrings,
      'placeId': this.placeId,
      'reference': this.reference,
      'structuredFormatting': this.structuredFormatting,
      'terms': this.terms,
      'types': this.types,
    };
  }
  @override
  String toString() {
    return 'PredictionModel{' +
        ' latitude: $latitude,' +
        ' longitude: $longitude,' +
        ' description: $description,' +
        ' matchedSubstrings: $matchedSubstrings,' +
        ' placeId: $placeId,' +
        ' reference: $reference,' +
        ' structuredFormatting: $structuredFormatting,' +
        ' terms: $terms,' +
        ' types: $types,' +
        '}';
  }

  factory PredictionModel.fromMap(Map<String, dynamic> map) {
    return PredictionModel(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      description: map['description'] as String,
      matchedSubstrings: map['matchedSubstrings'] as List<MatchedSubstring>,
      placeId: map['placeId'] as String,
      reference: map['reference'] as String,
      structuredFormatting: map['structuredFormatting'] as StructuredFormatting,
      terms: map['terms'] as List<Term>,
      types: map['types'] as List<String>,
    );
  }
}
