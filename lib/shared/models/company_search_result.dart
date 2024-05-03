import 'package:json_annotation/json_annotation.dart';

part 'company_search_result.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CompanySearchResult {
  @JsonKey(name: 'name')
  final String name;

  CompanySearchResult({required this.name});

  factory CompanySearchResult.fromJson(Map<String, dynamic> json) => _$CompanySearchResultFromJson(json);
}
