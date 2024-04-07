/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ExpertiseOfItem extends _i1.TableRow {
  ExpertiseOfItem._({
    int? id,
    required this.itemId,
    required this.expertiseId,
  }) : super(id);

  factory ExpertiseOfItem({
    int? id,
    required int itemId,
    required int expertiseId,
  }) = _ExpertiseOfItemImpl;

  factory ExpertiseOfItem.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ExpertiseOfItem(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemId:
          serializationManager.deserialize<int>(jsonSerialization['itemId']),
      expertiseId: serializationManager
          .deserialize<int>(jsonSerialization['expertiseId']),
    );
  }

  static final t = ExpertiseOfItemTable();

  static const db = ExpertiseOfItemRepository._();

  int itemId;

  int expertiseId;

  @override
  _i1.Table get table => t;

  ExpertiseOfItem copyWith({
    int? id,
    int? itemId,
    int? expertiseId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      'expertiseId': expertiseId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'itemId': itemId,
      'expertiseId': expertiseId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      'expertiseId': expertiseId,
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
      case 'itemId':
        itemId = value;
        return;
      case 'expertiseId':
        expertiseId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ExpertiseOfItem>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseOfItemTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ExpertiseOfItem>(
      where: where != null ? where(ExpertiseOfItem.t) : null,
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
  static Future<ExpertiseOfItem?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseOfItemTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ExpertiseOfItem>(
      where: where != null ? where(ExpertiseOfItem.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ExpertiseOfItem?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ExpertiseOfItem>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ExpertiseOfItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ExpertiseOfItem>(
      where: where(ExpertiseOfItem.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ExpertiseOfItem row, {
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
    ExpertiseOfItem row, {
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
    ExpertiseOfItem row, {
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
    _i1.WhereExpressionBuilder<ExpertiseOfItemTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ExpertiseOfItem>(
      where: where != null ? where(ExpertiseOfItem.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ExpertiseOfItemInclude include() {
    return ExpertiseOfItemInclude._();
  }

  static ExpertiseOfItemIncludeList includeList({
    _i1.WhereExpressionBuilder<ExpertiseOfItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExpertiseOfItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpertiseOfItemTable>? orderByList,
    ExpertiseOfItemInclude? include,
  }) {
    return ExpertiseOfItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ExpertiseOfItem.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ExpertiseOfItem.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ExpertiseOfItemImpl extends ExpertiseOfItem {
  _ExpertiseOfItemImpl({
    int? id,
    required int itemId,
    required int expertiseId,
  }) : super._(
          id: id,
          itemId: itemId,
          expertiseId: expertiseId,
        );

  @override
  ExpertiseOfItem copyWith({
    Object? id = _Undefined,
    int? itemId,
    int? expertiseId,
  }) {
    return ExpertiseOfItem(
      id: id is int? ? id : this.id,
      itemId: itemId ?? this.itemId,
      expertiseId: expertiseId ?? this.expertiseId,
    );
  }
}

class ExpertiseOfItemTable extends _i1.Table {
  ExpertiseOfItemTable({super.tableRelation})
      : super(tableName: 'expertise_of_item') {
    itemId = _i1.ColumnInt(
      'itemId',
      this,
    );
    expertiseId = _i1.ColumnInt(
      'expertiseId',
      this,
    );
  }

  late final _i1.ColumnInt itemId;

  late final _i1.ColumnInt expertiseId;

  @override
  List<_i1.Column> get columns => [
        id,
        itemId,
        expertiseId,
      ];
}

@Deprecated('Use ExpertiseOfItemTable.t instead.')
ExpertiseOfItemTable tExpertiseOfItem = ExpertiseOfItemTable();

class ExpertiseOfItemInclude extends _i1.IncludeObject {
  ExpertiseOfItemInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ExpertiseOfItem.t;
}

class ExpertiseOfItemIncludeList extends _i1.IncludeList {
  ExpertiseOfItemIncludeList._({
    _i1.WhereExpressionBuilder<ExpertiseOfItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ExpertiseOfItem.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ExpertiseOfItem.t;
}

class ExpertiseOfItemRepository {
  const ExpertiseOfItemRepository._();

  Future<List<ExpertiseOfItem>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseOfItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExpertiseOfItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpertiseOfItemTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ExpertiseOfItem>(
      where: where?.call(ExpertiseOfItem.t),
      orderBy: orderBy?.call(ExpertiseOfItem.t),
      orderByList: orderByList?.call(ExpertiseOfItem.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ExpertiseOfItem?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseOfItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<ExpertiseOfItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpertiseOfItemTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ExpertiseOfItem>(
      where: where?.call(ExpertiseOfItem.t),
      orderBy: orderBy?.call(ExpertiseOfItem.t),
      orderByList: orderByList?.call(ExpertiseOfItem.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ExpertiseOfItem?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ExpertiseOfItem>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ExpertiseOfItem>> insert(
    _i1.Session session,
    List<ExpertiseOfItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ExpertiseOfItem>(
      rows,
      transaction: transaction,
    );
  }

  Future<ExpertiseOfItem> insertRow(
    _i1.Session session,
    ExpertiseOfItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ExpertiseOfItem>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ExpertiseOfItem>> update(
    _i1.Session session,
    List<ExpertiseOfItem> rows, {
    _i1.ColumnSelections<ExpertiseOfItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ExpertiseOfItem>(
      rows,
      columns: columns?.call(ExpertiseOfItem.t),
      transaction: transaction,
    );
  }

  Future<ExpertiseOfItem> updateRow(
    _i1.Session session,
    ExpertiseOfItem row, {
    _i1.ColumnSelections<ExpertiseOfItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ExpertiseOfItem>(
      row,
      columns: columns?.call(ExpertiseOfItem.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ExpertiseOfItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ExpertiseOfItem>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ExpertiseOfItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ExpertiseOfItem>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ExpertiseOfItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ExpertiseOfItem>(
      where: where(ExpertiseOfItem.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseOfItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ExpertiseOfItem>(
      where: where?.call(ExpertiseOfItem.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
