// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PredictionStruct extends BaseStruct {
  PredictionStruct({
    String? prediction,
  }) : _prediction = prediction;

  // "prediction" field.
  String? _prediction;
  String get prediction => _prediction ?? '';
  set prediction(String? val) => _prediction = val;

  bool hasPrediction() => _prediction != null;

  static PredictionStruct fromMap(Map<String, dynamic> data) =>
      PredictionStruct(
        prediction: data['prediction'] as String?,
      );

  static PredictionStruct? maybeFromMap(dynamic data) => data is Map
      ? PredictionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'prediction': _prediction,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prediction': serializeParam(
          _prediction,
          ParamType.String,
        ),
      }.withoutNulls;

  static PredictionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PredictionStruct(
        prediction: deserializeParam(
          data['prediction'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PredictionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PredictionStruct && prediction == other.prediction;
  }

  @override
  int get hashCode => const ListEquality().hash([prediction]);
}

PredictionStruct createPredictionStruct({
  String? prediction,
}) =>
    PredictionStruct(
      prediction: prediction,
    );
