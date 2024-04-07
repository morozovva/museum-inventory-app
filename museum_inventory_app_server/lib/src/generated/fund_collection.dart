/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class FundCollection extends _i1.TableRow {
  FundCollection._({
    int? id,
    required this.name,
    this.shortName,
  }) : super(id);

  factory FundCollection({
    int? id,
    required String name,
    String? shortName,
  }) = _FundCollectionImpl;

  factory FundCollection.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FundCollection(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      shortName: serializationManager
          .deserialize<String?>(jsonSerialization['shortName']),
    );
  }

  static final t = FundCollectionTable();

  static const db = FundCollectionRepository._();

  String name;

  String? shortName;

  @override
  _i1.Table get table => t;

  FundCollection copyWith({
    int? id,
    String? name,
    String? shortName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (shortName != null) 'shortName': shortName,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'shortName': shortName,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
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
      case 'name':
        name = value;
        return;
      case 'shortName':
        shortName = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<FundCollection>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundCollectionTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<FundCollection>(
      where: where != null ? where(FundCollection.t) : null,
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
  static Future<FundCollection?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundCollectionTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<FundCollection>(
      where: where != null ? where(FundCollection.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<FundCollection?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<FundCollection>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FundCollectionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FundCollection>(
      where: where(FundCollection.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    FundCollection row, {
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
    FundCollection row, {
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
    FundCollection row, {
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
    _i1.WhereExpressionBuilder<FundCollectionTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FundCollection>(
      where: where != null ? where(FundCollection.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FundCollectionInclude include() {
    return FundCollectionInclude._();
  }

  static FundCollectionIncludeList includeList({
    _i1.WhereExpressionBuilder<FundCollectionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FundCollectionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FundCollectionTable>? orderByList,
    FundCollectionInclude? include,
  }) {
    return FundCollectionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FundCollection.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FundCollection.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FundCollectionImpl extends FundCollection {
  _FundCollectionImpl({
    int? id,
    required String name,
    String? shortName,
  }) : super._(
          id: id,
          name: name,
          shortName: shortName,
        );

  @override
  FundCollection copyWith({
    Object? id = _Undefined,
    String? name,
    Object? shortName = _Undefined,
  }) {
    return FundCollection(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      shortName: shortName is String? ? shortName : this.shortName,
    );
  }
}

class FundCollectionTable extends _i1.Table {
  FundCollectionTable({super.tableRelation})
      : super(tableName: 'fund_collection') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    shortName = _i1.ColumnString(
      'shortName',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString shortName;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        shortName,
      ];
}

@Deprecated('Use FundCollectionTable.t instead.')
FundCollectionTable tFundCollection = FundCollectionTable();

class FundCollectionInclude extends _i1.IncludeObject {
  FundCollectionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => FundCollection.t;
}

class FundCollectionIncludeList extends _i1.IncludeList {
  FundCollectionIncludeList._({
    _i1.WhereExpressionBuilder<FundCollectionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FundCollection.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => FundCollection.t;
}

class FundCollectionRepository {
  const FundCollectionRepository._();

  Future<List<FundCollection>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundCollectionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FundCollectionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FundCollectionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<FundCollection>(
      where: where?.call(FundCollection.t),
      orderBy: orderBy?.call(FundCollection.t),
      orderByList: orderByList?.call(FundCollection.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<FundCollection?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundCollectionTable>? where,
    int? offset,
    _i1.OrderByBuilder<FundCollectionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FundCollectionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<FundCollection>(
      where: where?.call(FundCollection.t),
      orderBy: orderBy?.call(FundCollection.t),
      orderByList: orderByList?.call(FundCollection.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<FundCollection?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<FundCollection>(
      id,
      transaction: transaction,
    );
  }

  Future<List<FundCollection>> insert(
    _i1.Session session,
    List<FundCollection> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<FundCollection>(
      rows,
      transaction: transaction,
    );
  }

  Future<FundCollection> insertRow(
    _i1.Session session,
    FundCollection row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<FundCollection>(
      row,
      transaction: transaction,
    );
  }

  Future<List<FundCollection>> update(
    _i1.Session session,
    List<FundCollection> rows, {
    _i1.ColumnSelections<FundCollectionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<FundCollection>(
      rows,
      columns: columns?.call(FundCollection.t),
      transaction: transaction,
    );
  }

  Future<FundCollection> updateRow(
    _i1.Session session,
    FundCollection row, {
    _i1.ColumnSelections<FundCollectionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<FundCollection>(
      row,
      columns: columns?.call(FundCollection.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<FundCollection> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<FundCollection>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    FundCollection row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<FundCollection>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FundCollectionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<FundCollection>(
      where: where(FundCollection.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FundCollectionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<FundCollection>(
      where: where?.call(FundCollection.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
