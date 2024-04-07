/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Fund extends _i1.TableRow {
  Fund._({
    int? id,
    required this.fundCollectionId,
    this.shortName,
  }) : super(id);

  factory Fund({
    int? id,
    required int fundCollectionId,
    String? shortName,
  }) = _FundImpl;

  factory Fund.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Fund(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      fundCollectionId: serializationManager
          .deserialize<int>(jsonSerialization['fundCollectionId']),
      shortName: serializationManager
          .deserialize<String?>(jsonSerialization['shortName']),
    );
  }

  static final t = FundTable();

  static const db = FundRepository._();

  int fundCollectionId;

  String? shortName;

  @override
  _i1.Table get table => t;

  Fund copyWith({
    int? id,
    int? fundCollectionId,
    String? shortName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'fundCollectionId': fundCollectionId,
      if (shortName != null) 'shortName': shortName,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'fundCollectionId': fundCollectionId,
      'shortName': shortName,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'fundCollectionId': fundCollectionId,
      if (shortName != null) 'shortName': shortName,
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
      case 'fundCollectionId':
        fundCollectionId = value;
        return;
      case 'shortName':
        shortName = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Fund>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Fund>(
      where: where != null ? where(Fund.t) : null,
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
  static Future<Fund?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Fund>(
      where: where != null ? where(Fund.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Fund?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Fund>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FundTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Fund>(
      where: where(Fund.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Fund row, {
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
    Fund row, {
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
    Fund row, {
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
    _i1.WhereExpressionBuilder<FundTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Fund>(
      where: where != null ? where(Fund.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FundInclude include() {
    return FundInclude._();
  }

  static FundIncludeList includeList({
    _i1.WhereExpressionBuilder<FundTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FundTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FundTable>? orderByList,
    FundInclude? include,
  }) {
    return FundIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Fund.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Fund.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FundImpl extends Fund {
  _FundImpl({
    int? id,
    required int fundCollectionId,
    String? shortName,
  }) : super._(
          id: id,
          fundCollectionId: fundCollectionId,
          shortName: shortName,
        );

  @override
  Fund copyWith({
    Object? id = _Undefined,
    int? fundCollectionId,
    Object? shortName = _Undefined,
  }) {
    return Fund(
      id: id is int? ? id : this.id,
      fundCollectionId: fundCollectionId ?? this.fundCollectionId,
      shortName: shortName is String? ? shortName : this.shortName,
    );
  }
}

class FundTable extends _i1.Table {
  FundTable({super.tableRelation}) : super(tableName: 'fund') {
    fundCollectionId = _i1.ColumnInt(
      'fundCollectionId',
      this,
    );
    shortName = _i1.ColumnString(
      'shortName',
      this,
    );
  }

  late final _i1.ColumnInt fundCollectionId;

  late final _i1.ColumnString shortName;

  @override
  List<_i1.Column> get columns => [
        id,
        fundCollectionId,
        shortName,
      ];
}

@Deprecated('Use FundTable.t instead.')
FundTable tFund = FundTable();

class FundInclude extends _i1.IncludeObject {
  FundInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Fund.t;
}

class FundIncludeList extends _i1.IncludeList {
  FundIncludeList._({
    _i1.WhereExpressionBuilder<FundTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Fund.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Fund.t;
}

class FundRepository {
  const FundRepository._();

  Future<List<Fund>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FundTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FundTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Fund>(
      where: where?.call(Fund.t),
      orderBy: orderBy?.call(Fund.t),
      orderByList: orderByList?.call(Fund.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Fund?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundTable>? where,
    int? offset,
    _i1.OrderByBuilder<FundTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FundTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Fund>(
      where: where?.call(Fund.t),
      orderBy: orderBy?.call(Fund.t),
      orderByList: orderByList?.call(Fund.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Fund?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Fund>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Fund>> insert(
    _i1.Session session,
    List<Fund> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Fund>(
      rows,
      transaction: transaction,
    );
  }

  Future<Fund> insertRow(
    _i1.Session session,
    Fund row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Fund>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Fund>> update(
    _i1.Session session,
    List<Fund> rows, {
    _i1.ColumnSelections<FundTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Fund>(
      rows,
      columns: columns?.call(Fund.t),
      transaction: transaction,
    );
  }

  Future<Fund> updateRow(
    _i1.Session session,
    Fund row, {
    _i1.ColumnSelections<FundTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Fund>(
      row,
      columns: columns?.call(Fund.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Fund> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Fund>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Fund row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Fund>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FundTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Fund>(
      where: where(Fund.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Fund>(
      where: where?.call(Fund.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
