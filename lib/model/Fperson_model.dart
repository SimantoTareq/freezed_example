import 'package:freezed_annotation/freezed_annotation.dart';
part 'Fperson_model.freezed.dart';
part 'Fperson_model.g.dart';

@Freezed()
class FpersonModel with _$FpersonModel{
  
  factory FpersonModel({
    @Default(' ') String name
  }) = _FpersonModel;

  factory FpersonModel.fromJson(Map<String,dynamic>json) => _$FpersonModelFromJson(json);


}

