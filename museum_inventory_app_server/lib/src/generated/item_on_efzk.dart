/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ItemOnEfzk extends _i1.TableRow {
  ItemOnEfzk._({
    int? id,
    required this.itemId,
    required this.shortDesc,
    required this.integrity,
    required this.decision,
    required this.fundCollectionId,
  }) : super(id);

  factory ItemOnEfzk({
    int? id,
    required int itemId,
    required String shortDesc,
    required String integrity,
    required String decision,
    required int fundCollectionId,
  }) = _ItemOnEfzkImpl;

  factory ItemOnEfzk.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ItemOnEfzk(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemId:
          serializationManager.deserialize<int>(jsonSerialization['itemId']),
      shortDesc: serializationManager
          .deserialize<String>(jsonSerialization['shortDesc']),
      integrity: serializationManager
          .deserialize<String>(jsonSerialization['integrity']),
      decision: serializationManager
          .deserialize<String>(jsonSerialization['decision']),
      fundCollectionId: serializationManager
          .deserialize<int>(jsonSerialization['fundCollectionId']),
    );
  }

  static final t = ItemOnEfzkTable();

  static const db = ItemOnEfzkRepository._();

  int itemId;

  String shortDesc;

  String integrity;

  String decision;

  int fundCollectionId;

  @override
  _i1.Table get table => t;

  ItemOnEfzk copyWith({
    int? id,
    int? itemId,
    String? shortDesc,
    String? integrity,
    String? decision,
    int? fundCollectionId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      'shortDesc': shortDesc,
      'integrity': integrity,
      'decision': decision,
      'fundCollectionId': fundCollectionId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'itemId': itemId,
      'shortDesc': shortDesc,
      'integrity': integrity,
      'decision': decision,
      'fundCollectionId': fundCollectionId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'itemId': itemId,
      'shortDesc': shortDesc,
      'integrity': integrity,
      'decision': decision,
      'fundCollectionId': fundCollectionId,
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
      case 'shortDesc':
        shortDesc = value;
        return;
      case 'integrity':
        integrity = value;
        return;
      case 'decision':
        decision = value;
        return;
      case 'fundCollectionId':
        fundCollectionId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ItemOnEfzk>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemOnEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ItemOnEfzk>(
      where: where != null ? where(ItemOnEfzk.t) : null,
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
  static Future<ItemOnEfzk?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemOnEfzkTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ItemOnEfzk>(
      where: where != null ? where(ItemOnEfzk.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ItemOnEfzk?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ItemOnEfzk>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemOnEfzkTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ItemOnEfzk>(
      where: where(ItemOnEfzk.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ItemOnEfzk row, {
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
    ItemOnEfzk row, {
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
    ItemOnEfzk row, {
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
    _i1.WhereExpressionBuilder<ItemOnEfzkTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ItemOnEfzk>(
      where: where != null ? where(ItemOnEfzk.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ItemOnEfzkInclude include() {
    return ItemOnEfzkInclude._();
  }

  static ItemOnEfzkIncludeList includeList({
    _i1.WhereExpressionBuilder<ItemOnEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemOnEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemOnEfzkTable>? orderByList,
    ItemOnEfzkInclude? include,
  }) {
    return ItemOnEfzkIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ItemOnEfzk.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ItemOnEfzk.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ItemOnEfzkImpl extends ItemOnEfzk {
  _ItemOnEfzkImpl({
    int? id,
    required int itemId,
    required String shortDesc,
    required String integrity,
    required String decision,
    required int fundCollectionId,
  }) : super._(
          id: id,
          itemId: itemId,
          shortDesc: shortDesc,
          integrity: integrity,
          decision: decision,
          fundCollectionId: fundCollectionId,
        );

  @override
  ItemOnEfzk copyWith({
    Object? id = _Undefined,
    int? itemId,
    String? shortDesc,
    String? integrity,
    String? decision,
    int? fundCollectionId,
  }) {
    return ItemOnEfzk(
      id: id is int? ? id : this.id,
      itemId: itemId ?? this.itemId,
      shortDesc: shortDesc ?? this.shortDesc,
      integrity: integrity ?? this.integrity,
      decision: decision ?? this.decision,
      fundCollectionId: fundCollectionId ?? this.fundCollectionId,
    );
  }
}

class ItemOnEfzkTable extends _i1.Table {
  ItemOnEfzkTable({super.tableRelation}) : super(tableName: 'item_on_efzk') {
    itemId = _i1.ColumnInt(
      'itemId',
      this,
    );
    shortDesc = _i1.ColumnString(
      'shortDesc',
      this,
    );
    integrity = _i1.ColumnString(
      'integrity',
      this,
    );
    decision = _i1.ColumnString(
      'decision',
      this,
    );
    fundCollectionId = _i1.ColumnInt(
      'fundCollectionId',
      this,
    );
  }

  late final _i1.ColumnInt itemId;

  late final _i1.ColumnString shortDesc;

  late final _i1.ColumnString integrity;

  late final _i1.ColumnString decision;

  late final _i1.ColumnInt fundCollectionId;

  @override
  List<_i1.Column> get columns => [
        id,
        itemId,
        shortDesc,
        integrity,
        decision,
        fundCollectionId,
      ];
}

@Deprecated('Use ItemOnEfzkTable.t instead.')
ItemOnEfzkTable tItemOnEfzk = ItemOnEfzkTable();

class ItemOnEfzkInclude extends _i1.IncludeObject {
  ItemOnEfzkInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ItemOnEfzk.t;
}

class ItemOnEfzkIncludeList extends _i1.IncludeList {
  ItemOnEfzkIncludeList._({
    _i1.WhereExpressionBuilder<ItemOnEfzkTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ItemOnEfzk.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ItemOnEfzk.t;
}

class ItemOnEfzkRepository {
  const ItemOnEfzkRepository._();

  Future<List<ItemOnEfzk>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemOnEfzkTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemOnEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemOnEfzkTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ItemOnEfzk>(
      where: where?.call(ItemOnEfzk.t),
      orderBy: orderBy?.call(ItemOnEfzk.t),
      orderByList: orderByList?.call(ItemOnEfzk.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ItemOnEfzk?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemOnEfzkTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItemOnEfzkTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemOnEfzkTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ItemOnEfzk>(
      where: where?.call(ItemOnEfzk.t),
      orderBy: orderBy?.call(ItemOnEfzk.t),
      orderByList: orderByList?.call(ItemOnEfzk.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ItemOnEfzk?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ItemOnEfzk>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ItemOnEfzk>> insert(
    _i1.Session session,
    List<ItemOnEfzk> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ItemOnEfzk>(
      rows,
      transaction: transaction,
    );
  }

  Future<ItemOnEfzk> insertRow(
    _i1.Session session,
    ItemOnEfzk row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ItemOnEfzk>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ItemOnEfzk>> update(
    _i1.Session session,
    List<ItemOnEfzk> rows, {
    _i1.ColumnSelections<ItemOnEfzkTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ItemOnEfzk>(
      rows,
      columns: columns?.call(ItemOnEfzk.t),
      transaction: transaction,
    );
  }

  Future<ItemOnEfzk> updateRow(
    _i1.Session session,
    ItemOnEfzk row, {
    _i1.ColumnSelections<ItemOnEfzkTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ItemOnEfzk>(
      row,
      columns: columns?.call(ItemOnEfzk.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ItemOnEfzk> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ItemOnEfzk>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ItemOnEfzk row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ItemOnEfzk>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemOnEfzkTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ItemOnEfzk>(
      where: where(ItemOnEfzk.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemOnEfzkTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ItemOnEfzk>(
      where: where?.call(ItemOnEfzk.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
