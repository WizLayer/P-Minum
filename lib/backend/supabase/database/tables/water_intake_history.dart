import '../database.dart';

class WaterIntakeHistoryTable extends SupabaseTable<WaterIntakeHistoryRow> {
  @override
  String get tableName => 'waterIntakeHistory';

  @override
  WaterIntakeHistoryRow createRow(Map<String, dynamic> data) =>
      WaterIntakeHistoryRow(data);
}

class WaterIntakeHistoryRow extends SupabaseDataRow {
  WaterIntakeHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterIntakeHistoryTable();

  int get historyID => getField<int>('history_ID')!;
  set historyID(int value) => setField<int>('history_ID', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get userID => getField<String>('user_ID');
  set userID(String? value) => setField<String>('user_ID', value);
}
