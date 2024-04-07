/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ItemInEfzkProtocol extends _i1.TableRow {
  ItemInEfzkProtocol._({
    int? id,
    required this.itemOnEfzkId,
    required this.protocolId,
  }) : super(id);

  factory ItemInEfzkProtocol({
    int? id,
    required int itemOnEfzkId,
    required int protocolId,
  }) = _ItemInEfzkProtocolImpl;

  factory ItemInEfzkProtocol.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ItemInEfzkProtocol(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      itemOnEfzkId: serializationManager
          .deserialize<int>(jsonSerialization['itemOnEfzkId']),
      protocolId: serializationManager
          .deserialize<int>(jsonSerialization['protocolId']),
    );
  }

  static final t = ItemInEfzkProtocolTable();

  static const db = ItemInEfzkProtocolRepository._();

  int itemOnEfzkId;

  int protocolId;

  @override
  _i1.Table get table => t;

  ItemInEfzkProtocol copyWith({
    int? id,
    int? itemOnEfzkId,
    int? protocolId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'itemOnEfzkId': itemOnEfzkId,
      'protocolId': protocolId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'itemOnEfzkId': itemOnEfzkId,
      'protocolId': protocolId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'itemOnEfzkId': itemOnEfzkId,
      'protocolId': protocolId,
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
      case 'itemOnEfzkId':
        itemOnEfzkId = value;
        return;
      case 'protocolId':
        protocolId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ItemInEfzkProtocol>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ItemInEfzkProtocol>(
      where: where != null ? where(ItemInEfzkProtocol.t) : null,
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
  static Future<ItemInEfzkProtocol?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ItemInEfzkProtocol>(
      where: where != null ? where(ItemInEfzkProtocol.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ItemInEfzkProtocol?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ItemInEfzkProtocol>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ItemInEfzkProtocol>(
      where: where(ItemInEfzkProtocol.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ItemInEfzkProtocol row, {
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
    ItemInEfzkProtocol row, {
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
    ItemInEfzkProtocol row, {
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
    _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ItemInEfzkProtocol>(
      where: where != null ? where(ItemInEfzkProtocol.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ItemInEfzkProtocolInclude include() {
    return ItemInEfzkProtocolInclude._();
  }

  static ItemInEfzkProtocolIncludeList includeList({
    _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemInEfzkProtocolTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemInEfzkProtocolTable>? orderByList,
    ItemInEfzkProtocolInclude? include,
  }) {
    return ItemInEfzkProtocolIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ItemInEfzkProtocol.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ItemInEfzkProtocol.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ItemInEfzkProtocolImpl extends ItemInEfzkProtocol {
  _ItemInEfzkProtocolImpl({
    int? id,
    required int itemOnEfzkId,
    required int protocolId,
  }) : super._(
          id: id,
          itemOnEfzkId: itemOnEfzkId,
          protocolId: protocolId,
        );

  @override
  ItemInEfzkProtocol copyWith({
    Object? id = _Undefined,
    int? itemOnEfzkId,
    int? protocolId,
  }) {
    return ItemInEfzkProtocol(
      id: id is int? ? id : this.id,
      itemOnEfzkId: itemOnEfzkId ?? this.itemOnEfzkId,
      protocolId: protocolId ?? this.protocolId,
    );
  }
}

class ItemInEfzkProtocolTable extends _i1.Table {
  ItemInEfzkProtocolTable({super.tableRelation})
      : super(tableName: 'item_in_efzk_protocol') {
    itemOnEfzkId = _i1.ColumnInt(
      'itemOnEfzkId',
      this,
    );
    protocolId = _i1.ColumnInt(
      'protocolId',
      this,
    );
  }

  late final _i1.ColumnInt itemOnEfzkId;

  late final _i1.ColumnInt protocolId;

  @override
  List<_i1.Column> get columns => [
        id,
        itemOnEfzkId,
        protocolId,
      ];
}

@Deprecated('Use ItemInEfzkProtocolTable.t instead.')
ItemInEfzkProtocolTable tItemInEfzkProtocol = ItemInEfzkProtocolTable();

class ItemInEfzkProtocolInclude extends _i1.IncludeObject {
  ItemInEfzkProtocolInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ItemInEfzkProtocol.t;
}

class ItemInEfzkProtocolIncludeList extends _i1.IncludeList {
  ItemInEfzkProtocolIncludeList._({
    _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ItemInEfzkProtocol.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ItemInEfzkProtocol.t;
}

class ItemInEfzkProtocolRepository {
  const ItemInEfzkProtocolRepository._();

  Future<List<ItemInEfzkProtocol>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemInEfzkProtocolTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemInEfzkProtocolTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ItemInEfzkProtocol>(
      where: where?.call(ItemInEfzkProtocol.t),
      orderBy: orderBy?.call(ItemInEfzkProtocol.t),
      orderByList: orderByList?.call(ItemInEfzkProtocol.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ItemInEfzkProtocol?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItemInEfzkProtocolTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemInEfzkProtocolTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ItemInEfzkProtocol>(
      where: where?.call(ItemInEfzkProtocol.t),
      orderBy: orderBy?.call(ItemInEfzkProtocol.t),
      orderByList: orderByList?.call(ItemInEfzkProtocol.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ItemInEfzkProtocol?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ItemInEfzkProtocol>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ItemInEfzkProtocol>> insert(
    _i1.Session session,
    List<ItemInEfzkProtocol> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ItemInEfzkProtocol>(
      rows,
      transaction: transaction,
    );
  }

  Future<ItemInEfzkProtocol> insertRow(
    _i1.Session session,
    ItemInEfzkProtocol row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ItemInEfzkProtocol>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ItemInEfzkProtocol>> update(
    _i1.Session session,
    List<ItemInEfzkProtocol> rows, {
    _i1.ColumnSelections<ItemInEfzkProtocolTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ItemInEfzkProtocol>(
      rows,
      columns: columns?.call(ItemInEfzkProtocol.t),
      transaction: transaction,
    );
  }

  Future<ItemInEfzkProtocol> updateRow(
    _i1.Session session,
    ItemInEfzkProtocol row, {
    _i1.ColumnSelections<ItemInEfzkProtocolTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ItemInEfzkProtocol>(
      row,
      columns: columns?.call(ItemInEfzkProtocol.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ItemInEfzkProtocol> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ItemInEfzkProtocol>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ItemInEfzkProtocol row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ItemInEfzkProtocol>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ItemInEfzkProtocol>(
      where: where(ItemInEfzkProtocol.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemInEfzkProtocolTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ItemInEfzkProtocol>(
      where: where?.call(ItemInEfzkProtocol.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
