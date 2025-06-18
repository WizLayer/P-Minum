import '../database.dart';

class HealthComplicationTable extends SupabaseTable<HealthComplicationRow> {
  @override
  String get tableName => 'HealthComplication';

  @override
  HealthComplicationRow createRow(Map<String, dynamic> data) =>
      HealthComplicationRow(data);
}

class HealthComplicationRow extends SupabaseDataRow {
  HealthComplicationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HealthComplicationTable();

  bool get diabetes => getField<bool>('diabetes')!;
  set diabetes(bool value) => setField<bool>('diabetes', value);

  bool? get pregnant => getField<bool>('pregnant');
  set pregnant(bool? value) => setField<bool>('pregnant', value);

  bool? get breastFeeding => getField<bool>('breastFeeding');
  set breastFeeding(bool? value) => setField<bool>('breastFeeding', value);

  String get complicationID => getField<String>('complication_ID')!;
  set complicationID(String value) =>
      setField<String>('complication_ID', value);

  String get userID => getField<String>('user_ID')!;
  set userID(String value) => setField<String>('user_ID', value);
}
