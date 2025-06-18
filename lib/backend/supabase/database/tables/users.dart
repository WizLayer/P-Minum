import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  double? get height => getField<double>('height');
  set height(double? value) => setField<double>('height', value);

  String? get dailyActivity => getField<String>('dailyActivity');
  set dailyActivity(String? value) => setField<String>('dailyActivity', value);

  String? get firstName => getField<String>('firstName');
  set firstName(String? value) => setField<String>('firstName', value);

  String? get lastName => getField<String>('lastName');
  set lastName(String? value) => setField<String>('lastName', value);

  DateTime? get dob => getField<DateTime>('DOB');
  set dob(DateTime? value) => setField<DateTime>('DOB', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  double? get dailyWaterIntake => getField<double>('dailyWaterIntake');
  set dailyWaterIntake(double? value) =>
      setField<double>('dailyWaterIntake', value);

  String? get userProfile => getField<String>('userProfile');
  set userProfile(String? value) => setField<String>('userProfile', value);

  DateTime? get lastLogged => getField<DateTime>('lastLogged');
  set lastLogged(DateTime? value) => setField<DateTime>('lastLogged', value);

  bool? get diabetes => getField<bool>('diabetes');
  set diabetes(bool? value) => setField<bool>('diabetes', value);

  bool? get pregnant => getField<bool>('pregnant');
  set pregnant(bool? value) => setField<bool>('pregnant', value);

  bool? get breastFeeding => getField<bool>('breastFeeding');
  set breastFeeding(bool? value) => setField<bool>('breastFeeding', value);
}
