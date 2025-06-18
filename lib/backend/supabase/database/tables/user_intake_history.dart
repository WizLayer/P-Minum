import '../database.dart';

class UserIntakeHistoryTable extends SupabaseTable<UserIntakeHistoryRow> {
  @override
  String get tableName => 'userIntakeHistory';

  @override
  UserIntakeHistoryRow createRow(Map<String, dynamic> data) =>
      UserIntakeHistoryRow(data);
}

class UserIntakeHistoryRow extends SupabaseDataRow {
  UserIntakeHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserIntakeHistoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get userID => getField<String>('user_ID');
  set userID(String? value) => setField<String>('user_ID', value);
}
