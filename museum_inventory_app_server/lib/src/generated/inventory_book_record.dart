/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class InventoryBookRecord extends _i1.TableRow {
  InventoryBookRecord._({
    int? id,
    required this.date,
    required this.name,
    this.longDescription,
    required this.origin,
    required this.history,
    required this.material,
    required this.technique,
    required this.size,
    required this.weight,
    required this.integrity,
    required this.admissionWay,
    this.note,
    required this.signed,
  }) : super(id);

  factory InventoryBookRecord({
    int? id,
    required DateTime date,
    required String name,
    String? longDescription,
    required String origin,
    required String history,
    required String material,
    required String technique,
    required String size,
    required String weight,
    required String integrity,
    required String admissionWay,
    String? note,
    required bool signed,
  }) = _InventoryBookRecordImpl;

  factory InventoryBookRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return InventoryBookRecord(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      longDescription: serializationManager
          .deserialize<String?>(jsonSerialization['longDescription']),
      origin:
          serializationManager.deserialize<String>(jsonSerialization['origin']),
      history: serializationManager
          .deserialize<String>(jsonSerialization['history']),
      material: serializationManager
          .deserialize<String>(jsonSerialization['material']),
      technique: serializationManager
          .deserialize<String>(jsonSerialization['technique']),
      size: serializationManager.deserialize<String>(jsonSerialization['size']),
      weight:
          serializationManager.deserialize<String>(jsonSerialization['weight']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
      admissionWay: serializationManager
          .deserialize<String>(jsonSerialization['admissionWay']),
      note:
          serializationManager.deserialize<String?>(jsonSerialization['note']),
      signed:
          serializationManager.deserialize<bool>(jsonSerialization['signed']),
    );
  }

  static final t = InventoryBookRecordTable();

  static const db = InventoryBookRecordRepository._();

  DateTime date;

  String name;

  String? longDescription;

  String origin;

  String history;

  String material;

  String technique;

  String size;

  String weight;

  String integrity;

  String admissionWay;

  String? note;

  bool signed;

  @override
  _i1.Table get table => t;

  InventoryBookRecord copyWith({
    int? id,
    DateTime? date,
    String? name,
    String? longDescription,
    String? origin,
    String? history,
    String? material,
    String? technique,
    String? size,
    String? weight,
    String? integrity,
    String? admissionWay,
    String? note,
    bool? signed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'name': name,
      if (longDescription != null) 'longDescription': longDescription,
      'origin': origin,
      'history': history,
      'material': material,
      'technique': technique,
      'size': size,
      'weight': weight,
      'integrity': integrity,
      'admissionWay': admissionWay,
      if (note != null) 'note': note,
      'signed': signed,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'name': name,
      'longDescription': longDescription,
      'origin': origin,
      'history': history,
      'material': material,
      'technique': technique,
      'size': size,
      'weight': weight,
      'integrity': integrity,
      'admissionWay': admissionWay,
      'note': note,
      'signed': signed,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'name': name,
      if (longDescription != null) 'longDescription': longDescription,
      'origin': origin,
      'history': history,
      'material': material,
      'technique': technique,
      'size': size,
      'weight': weight,
      'integrity': integrity,
      'admissionWay': admissionWay,
      if (note != null) 'note': note,
      'signed': signed,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'date':
        date = value;
        return;
      case 'name':
        name = value;
        return;
      case 'longDescription':
        longDescription = value;
        return;
      case 'origin':
        origin = value;
        return;
      case 'history':
        history = value;
        return;
      case 'material':
        material = value;
        return;
      case 'technique':
        technique = value;
        return;
      case 'size':
        size = value;
        return;
      case 'weight':
        weight = value;
        return;
      case 'integrity':
        integrity = value;
        return;
      case 'admissionWay':
        admissionWay = value;
        return;
      case 'note':
        note = value;
        return;
      case 'signed':
        signed = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<InventoryBookRecord>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookRecordTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<InventoryBookRecord>(
      where: where != null ? where(InventoryBookRecord.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<InventoryBookRecord?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookRecordTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<InventoryBookRecord>(
      where: where != null ? where(InventoryBookRecord.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<InventoryBookRecord?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<InventoryBookRecord>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InventoryBookRecordTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<InventoryBookRecord>(
      where: where(InventoryBookRecord.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    InventoryBookRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    InventoryBookRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    InventoryBookRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookRecordTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<InventoryBookRecord>(
      where: where != null ? where(InventoryBookRecord.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static InventoryBookRecordInclude include() {
    return InventoryBookRecordInclude._();
  }

  static InventoryBookRecordIncludeList includeList({
    _i1.WhereExpressionBuilder<InventoryBookRecordTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InventoryBookRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InventoryBookRecordTable>? orderByList,
    InventoryBookRecordInclude? include,
  }) {
    return InventoryBookRecordIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(InventoryBookRecord.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(InventoryBookRecord.t),
      include: include,
    );
  }
}

class _Undefined {}

class _InventoryBookRecordImpl extends InventoryBookRecord {
  _InventoryBookRecordImpl({
    int? id,
    required DateTime date,
    required String name,
    String? longDescription,
    required String origin,
    required String history,
    required String material,
    required String technique,
    required String size,
    required String weight,
    required String integrity,
    required String admissionWay,
    String? note,
    required bool signed,
  }) : super._(
          id: id,
          date: date,
          name: name,
          longDescription: longDescription,
          origin: origin,
          history: history,
          material: material,
          technique: technique,
          size: size,
          weight: weight,
          integrity: integrity,
          admissionWay: admissionWay,
          note: note,
          signed: signed,
        );

  @override
  InventoryBookRecord copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? name,
    Object? longDescription = _Undefined,
    String? origin,
    String? history,
    String? material,
    String? technique,
    String? size,
    String? weight,
    String? integrity,
    String? admissionWay,
    Object? note = _Undefined,
    bool? signed,
  }) {
    return InventoryBookRecord(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      name: name ?? this.name,
      longDescription:
          longDescription is String? ? longDescription : this.longDescription,
      origin: origin ?? this.origin,
      history: history ?? this.history,
      material: material ?? this.material,
      technique: technique ?? this.technique,
      size: size ?? this.size,
      weight: weight ?? this.weight,
      integrity: integrity ?? this.integrity,
      admissionWay: admissionWay ?? this.admissionWay,
      note: note is String? ? note : this.note,
      signed: signed ?? this.signed,
    );
  }
}

class InventoryBookRecordTable extends _i1.Table {
  InventoryBookRecordTable({super.tableRelation})
      : super(tableName: 'inventory_book_record') {
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    longDescription = _i1.ColumnString(
      'longDescription',
      this,
    );
    origin = _i1.ColumnString(
      'origin',
      this,
    );
    history = _i1.ColumnString(
      'history',
      this,
    );
    material = _i1.ColumnString(
      'material',
      this,
    );
    technique = _i1.ColumnString(
      'technique',
      this,
    );
    size = _i1.ColumnString(
      'size',
      this,
    );
    weight = _i1.ColumnString(
      'weight',
      this,
    );
    integrity = _i1.ColumnString(
      'integrity',
      this,
    );
    admissionWay = _i1.ColumnString(
      'admissionWay',
      this,
    );
    note = _i1.ColumnString(
      'note',
      this,
    );
    signed = _i1.ColumnBool(
      'signed',
      this,
    );
  }

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString name;

  late final _i1.ColumnString longDescription;

  late final _i1.ColumnString origin;

  late final _i1.ColumnString history;

  late final _i1.ColumnString material;

  late final _i1.ColumnString technique;

  late final _i1.ColumnString size;

  late final _i1.ColumnString weight;

  late final _i1.ColumnString integrity;

  late final _i1.ColumnString admissionWay;

  late final _i1.ColumnString note;

  late final _i1.ColumnBool signed;

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        name,
        longDescription,
        origin,
        history,
        material,
        technique,
        size,
        weight,
        integrity,
        admissionWay,
        note,
        signed,
      ];
}

@Deprecated('Use InventoryBookRecordTable.t instead.')
InventoryBookRecordTable tInventoryBookRecord = InventoryBookRecordTable();

class InventoryBookRecordInclude extends _i1.IncludeObject {
  InventoryBookRecordInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => InventoryBookRecord.t;
}

class InventoryBookRecordIncludeList extends _i1.IncludeList {
  InventoryBookRecordIncludeList._({
    _i1.WhereExpressionBuilder<InventoryBookRecordTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(InventoryBookRecord.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => InventoryBookRecord.t;
}

class InventoryBookRecordRepository {
  const InventoryBookRecordRepository._();

  Future<List<InventoryBookRecord>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookRecordTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InventoryBookRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InventoryBookRecordTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<InventoryBookRecord>(
      where: where?.call(InventoryBookRecord.t),
      orderBy: orderBy?.call(InventoryBookRecord.t),
      orderByList: orderByList?.call(InventoryBookRecord.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<InventoryBookRecord?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookRecordTable>? where,
    int? offset,
    _i1.OrderByBuilder<InventoryBookRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InventoryBookRecordTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<InventoryBookRecord>(
      where: where?.call(InventoryBookRecord.t),
      orderBy: orderBy?.call(InventoryBookRecord.t),
      orderByList: orderByList?.call(InventoryBookRecord.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<InventoryBookRecord?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<InventoryBookRecord>(
      id,
      transaction: transaction,
    );
  }

  Future<List<InventoryBookRecord>> insert(
    _i1.Session session,
    List<InventoryBookRecord> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<InventoryBookRecord>(
      rows,
      transaction: transaction,
    );
  }

  Future<InventoryBookRecord> insertRow(
    _i1.Session session,
    InventoryBookRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<InventoryBookRecord>(
      row,
      transaction: transaction,
    );
  }

  Future<List<InventoryBookRecord>> update(
    _i1.Session session,
    List<InventoryBookRecord> rows, {
    _i1.ColumnSelections<InventoryBookRecordTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<InventoryBookRecord>(
      rows,
      columns: columns?.call(InventoryBookRecord.t),
      transaction: transaction,
    );
  }

  Future<InventoryBookRecord> updateRow(
    _i1.Session session,
    InventoryBookRecord row, {
    _i1.ColumnSelections<InventoryBookRecordTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<InventoryBookRecord>(
      row,
      columns: columns?.call(InventoryBookRecord.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<InventoryBookRecord> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<InventoryBookRecord>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    InventoryBookRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<InventoryBookRecord>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InventoryBookRecordTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<InventoryBookRecord>(
      where: where(InventoryBookRecord.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InventoryBookRecordTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<InventoryBookRecord>(
      where: where?.call(InventoryBookRecord.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
