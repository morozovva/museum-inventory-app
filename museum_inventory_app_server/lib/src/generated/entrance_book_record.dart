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

abstract class EntranceBookRecord extends _i1.TableRow {
  EntranceBookRecord._({
    int? id,
    required this.date,
    required this.admissionWay,
    required this.name,
    this.shortDescription,
    required this.numberOfItems,
    required this.material,
    required this.fundCollectionId,
    required this.integrity,
    this.note,
    required this.location,
  }) : super(id);

  factory EntranceBookRecord({
    int? id,
    required DateTime date,
    required String admissionWay,
    required String name,
    String? shortDescription,
    required int numberOfItems,
    required String material,
    required int fundCollectionId,
    required String integrity,
    String? note,
    required String location,
  }) = _EntranceBookRecordImpl;

  factory EntranceBookRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EntranceBookRecord(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      admissionWay: serializationManager
          .deserialize<String>(jsonSerialization['admissionWay']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      shortDescription: serializationManager
          .deserialize<String?>(jsonSerialization['shortDescription']),
      numberOfItems: serializationManager
          .deserialize<int>(jsonSerialization['numberOfItems']),
      material: serializationManager
          .deserialize<String>(jsonSerialization['material']),
      fundCollectionId: serializationManager
          .deserialize<int>(jsonSerialization['fundCollectionId']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
      note:
          serializationManager.deserialize<String?>(jsonSerialization['note']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
    );
  }

  static final t = EntranceBookRecordTable();

  static const db = EntranceBookRecordRepository._();

  DateTime date;

  String admissionWay;

  String name;

  String? shortDescription;

  int numberOfItems;

  String material;

  int fundCollectionId;

  String integrity;

  String? note;

  String location;

  @override
  _i1.Table get table => t;

  EntranceBookRecord copyWith({
    int? id,
    DateTime? date,
    String? admissionWay,
    String? name,
    String? shortDescription,
    int? numberOfItems,
    String? material,
    int? fundCollectionId,
    String? integrity,
    String? note,
    String? location,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'admissionWay': admissionWay,
      'name': name,
      if (shortDescription != null) 'shortDescription': shortDescription,
      'numberOfItems': numberOfItems,
      'material': material,
      'fundCollectionId': fundCollectionId,
      'integrity': integrity,
      if (note != null) 'note': note,
      'location': location,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'admissionWay': admissionWay,
      'name': name,
      'shortDescription': shortDescription,
      'numberOfItems': numberOfItems,
      'material': material,
      'fundCollectionId': fundCollectionId,
      'integrity': integrity,
      'note': note,
      'location': location,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'admissionWay': admissionWay,
      'name': name,
      if (shortDescription != null) 'shortDescription': shortDescription,
      'numberOfItems': numberOfItems,
      'material': material,
      'fundCollectionId': fundCollectionId,
      'integrity': integrity,
      if (note != null) 'note': note,
      'location': location,
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
      case 'admissionWay':
        admissionWay = value;
        return;
      case 'name':
        name = value;
        return;
      case 'shortDescription':
        shortDescription = value;
        return;
      case 'numberOfItems':
        numberOfItems = value;
        return;
      case 'material':
        material = value;
        return;
      case 'fundCollectionId':
        fundCollectionId = value;
        return;
      case 'integrity':
        integrity = value;
        return;
      case 'note':
        note = value;
        return;
      case 'location':
        location = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<EntranceBookRecord>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookRecordTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EntranceBookRecord>(
      where: where != null ? where(EntranceBookRecord.t) : null,
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
  static Future<EntranceBookRecord?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookRecordTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<EntranceBookRecord>(
      where: where != null ? where(EntranceBookRecord.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<EntranceBookRecord?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<EntranceBookRecord>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EntranceBookRecordTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EntranceBookRecord>(
      where: where(EntranceBookRecord.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    EntranceBookRecord row, {
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
    EntranceBookRecord row, {
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
    EntranceBookRecord row, {
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
    _i1.WhereExpressionBuilder<EntranceBookRecordTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EntranceBookRecord>(
      where: where != null ? where(EntranceBookRecord.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EntranceBookRecordInclude include() {
    return EntranceBookRecordInclude._();
  }

  static EntranceBookRecordIncludeList includeList({
    _i1.WhereExpressionBuilder<EntranceBookRecordTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EntranceBookRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EntranceBookRecordTable>? orderByList,
    EntranceBookRecordInclude? include,
  }) {
    return EntranceBookRecordIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EntranceBookRecord.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EntranceBookRecord.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EntranceBookRecordImpl extends EntranceBookRecord {
  _EntranceBookRecordImpl({
    int? id,
    required DateTime date,
    required String admissionWay,
    required String name,
    String? shortDescription,
    required int numberOfItems,
    required String material,
    required int fundCollectionId,
    required String integrity,
    String? note,
    required String location,
  }) : super._(
          id: id,
          date: date,
          admissionWay: admissionWay,
          name: name,
          shortDescription: shortDescription,
          numberOfItems: numberOfItems,
          material: material,
          fundCollectionId: fundCollectionId,
          integrity: integrity,
          note: note,
          location: location,
        );

  @override
  EntranceBookRecord copyWith({
    Object? id = _Undefined,
    DateTime? date,
    String? admissionWay,
    String? name,
    Object? shortDescription = _Undefined,
    int? numberOfItems,
    String? material,
    int? fundCollectionId,
    String? integrity,
    Object? note = _Undefined,
    String? location,
  }) {
    return EntranceBookRecord(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      admissionWay: admissionWay ?? this.admissionWay,
      name: name ?? this.name,
      shortDescription: shortDescription is String?
          ? shortDescription
          : this.shortDescription,
      numberOfItems: numberOfItems ?? this.numberOfItems,
      material: material ?? this.material,
      fundCollectionId: fundCollectionId ?? this.fundCollectionId,
      integrity: integrity ?? this.integrity,
      note: note is String? ? note : this.note,
      location: location ?? this.location,
    );
  }
}

class EntranceBookRecordTable extends _i1.Table {
  EntranceBookRecordTable({super.tableRelation})
      : super(tableName: 'entrance_book_record') {
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    admissionWay = _i1.ColumnString(
      'admissionWay',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    shortDescription = _i1.ColumnString(
      'shortDescription',
      this,
    );
    numberOfItems = _i1.ColumnInt(
      'numberOfItems',
      this,
    );
    material = _i1.ColumnString(
      'material',
      this,
    );
    fundCollectionId = _i1.ColumnInt(
      'fundCollectionId',
      this,
    );
    integrity = _i1.ColumnString(
      'integrity',
      this,
    );
    note = _i1.ColumnString(
      'note',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
  }

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString admissionWay;

  late final _i1.ColumnString name;

  late final _i1.ColumnString shortDescription;

  late final _i1.ColumnInt numberOfItems;

  late final _i1.ColumnString material;

  late final _i1.ColumnInt fundCollectionId;

  late final _i1.ColumnString integrity;

  late final _i1.ColumnString note;

  late final _i1.ColumnString location;

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        admissionWay,
        name,
        shortDescription,
        numberOfItems,
        material,
        fundCollectionId,
        integrity,
        note,
        location,
      ];
}

@Deprecated('Use EntranceBookRecordTable.t instead.')
EntranceBookRecordTable tEntranceBookRecord = EntranceBookRecordTable();

class EntranceBookRecordInclude extends _i1.IncludeObject {
  EntranceBookRecordInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => EntranceBookRecord.t;
}

class EntranceBookRecordIncludeList extends _i1.IncludeList {
  EntranceBookRecordIncludeList._({
    _i1.WhereExpressionBuilder<EntranceBookRecordTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EntranceBookRecord.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EntranceBookRecord.t;
}

class EntranceBookRecordRepository {
  const EntranceBookRecordRepository._();

  Future<List<EntranceBookRecord>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookRecordTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EntranceBookRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EntranceBookRecordTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<EntranceBookRecord>(
      where: where?.call(EntranceBookRecord.t),
      orderBy: orderBy?.call(EntranceBookRecord.t),
      orderByList: orderByList?.call(EntranceBookRecord.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EntranceBookRecord?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookRecordTable>? where,
    int? offset,
    _i1.OrderByBuilder<EntranceBookRecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EntranceBookRecordTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<EntranceBookRecord>(
      where: where?.call(EntranceBookRecord.t),
      orderBy: orderBy?.call(EntranceBookRecord.t),
      orderByList: orderByList?.call(EntranceBookRecord.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EntranceBookRecord?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<EntranceBookRecord>(
      id,
      transaction: transaction,
    );
  }

  Future<List<EntranceBookRecord>> insert(
    _i1.Session session,
    List<EntranceBookRecord> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<EntranceBookRecord>(
      rows,
      transaction: transaction,
    );
  }

  Future<EntranceBookRecord> insertRow(
    _i1.Session session,
    EntranceBookRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<EntranceBookRecord>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EntranceBookRecord>> update(
    _i1.Session session,
    List<EntranceBookRecord> rows, {
    _i1.ColumnSelections<EntranceBookRecordTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<EntranceBookRecord>(
      rows,
      columns: columns?.call(EntranceBookRecord.t),
      transaction: transaction,
    );
  }

  Future<EntranceBookRecord> updateRow(
    _i1.Session session,
    EntranceBookRecord row, {
    _i1.ColumnSelections<EntranceBookRecordTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<EntranceBookRecord>(
      row,
      columns: columns?.call(EntranceBookRecord.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<EntranceBookRecord> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<EntranceBookRecord>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    EntranceBookRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<EntranceBookRecord>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EntranceBookRecordTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<EntranceBookRecord>(
      where: where(EntranceBookRecord.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EntranceBookRecordTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<EntranceBookRecord>(
      where: where?.call(EntranceBookRecord.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
