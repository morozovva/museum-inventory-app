/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class OwnersApplication extends _i1.TableRow {
  OwnersApplication._({
    int? id,
    required this.file,
    required this.ownerId,
  }) : super(id);

  factory OwnersApplication({
    int? id,
    required String file,
    required int ownerId,
  }) = _OwnersApplicationImpl;

  factory OwnersApplication.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return OwnersApplication(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
    );
  }

  static final t = OwnersApplicationTable();

  static const db = OwnersApplicationRepository._();

  String file;

  int ownerId;

  @override
  _i1.Table get table => t;

  OwnersApplication copyWith({
    int? id,
    String? file,
    int? ownerId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'file': file,
      'ownerId': ownerId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'file': file,
      'ownerId': ownerId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'file': file,
      'ownerId': ownerId,
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
      case 'file':
        file = value;
        return;
      case 'ownerId':
        ownerId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<OwnersApplication>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnersApplicationTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<OwnersApplication>(
      where: where != null ? where(OwnersApplication.t) : null,
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
  static Future<OwnersApplication?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnersApplicationTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<OwnersApplication>(
      where: where != null ? where(OwnersApplication.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<OwnersApplication?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<OwnersApplication>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OwnersApplicationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<OwnersApplication>(
      where: where(OwnersApplication.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    OwnersApplication row, {
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
    OwnersApplication row, {
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
    OwnersApplication row, {
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
    _i1.WhereExpressionBuilder<OwnersApplicationTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<OwnersApplication>(
      where: where != null ? where(OwnersApplication.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static OwnersApplicationInclude include() {
    return OwnersApplicationInclude._();
  }

  static OwnersApplicationIncludeList includeList({
    _i1.WhereExpressionBuilder<OwnersApplicationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OwnersApplicationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OwnersApplicationTable>? orderByList,
    OwnersApplicationInclude? include,
  }) {
    return OwnersApplicationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(OwnersApplication.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(OwnersApplication.t),
      include: include,
    );
  }
}

class _Undefined {}

class _OwnersApplicationImpl extends OwnersApplication {
  _OwnersApplicationImpl({
    int? id,
    required String file,
    required int ownerId,
  }) : super._(
          id: id,
          file: file,
          ownerId: ownerId,
        );

  @override
  OwnersApplication copyWith({
    Object? id = _Undefined,
    String? file,
    int? ownerId,
  }) {
    return OwnersApplication(
      id: id is int? ? id : this.id,
      file: file ?? this.file,
      ownerId: ownerId ?? this.ownerId,
    );
  }
}

class OwnersApplicationTable extends _i1.Table {
  OwnersApplicationTable({super.tableRelation})
      : super(tableName: 'owners_application') {
    file = _i1.ColumnString(
      'file',
      this,
    );
    ownerId = _i1.ColumnInt(
      'ownerId',
      this,
    );
  }

  late final _i1.ColumnString file;

  late final _i1.ColumnInt ownerId;

  @override
  List<_i1.Column> get columns => [
        id,
        file,
        ownerId,
      ];
}

@Deprecated('Use OwnersApplicationTable.t instead.')
OwnersApplicationTable tOwnersApplication = OwnersApplicationTable();

class OwnersApplicationInclude extends _i1.IncludeObject {
  OwnersApplicationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => OwnersApplication.t;
}

class OwnersApplicationIncludeList extends _i1.IncludeList {
  OwnersApplicationIncludeList._({
    _i1.WhereExpressionBuilder<OwnersApplicationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(OwnersApplication.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => OwnersApplication.t;
}

class OwnersApplicationRepository {
  const OwnersApplicationRepository._();

  Future<List<OwnersApplication>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnersApplicationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OwnersApplicationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OwnersApplicationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<OwnersApplication>(
      where: where?.call(OwnersApplication.t),
      orderBy: orderBy?.call(OwnersApplication.t),
      orderByList: orderByList?.call(OwnersApplication.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<OwnersApplication?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnersApplicationTable>? where,
    int? offset,
    _i1.OrderByBuilder<OwnersApplicationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OwnersApplicationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<OwnersApplication>(
      where: where?.call(OwnersApplication.t),
      orderBy: orderBy?.call(OwnersApplication.t),
      orderByList: orderByList?.call(OwnersApplication.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<OwnersApplication?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<OwnersApplication>(
      id,
      transaction: transaction,
    );
  }

  Future<List<OwnersApplication>> insert(
    _i1.Session session,
    List<OwnersApplication> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<OwnersApplication>(
      rows,
      transaction: transaction,
    );
  }

  Future<OwnersApplication> insertRow(
    _i1.Session session,
    OwnersApplication row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<OwnersApplication>(
      row,
      transaction: transaction,
    );
  }

  Future<List<OwnersApplication>> update(
    _i1.Session session,
    List<OwnersApplication> rows, {
    _i1.ColumnSelections<OwnersApplicationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<OwnersApplication>(
      rows,
      columns: columns?.call(OwnersApplication.t),
      transaction: transaction,
    );
  }

  Future<OwnersApplication> updateRow(
    _i1.Session session,
    OwnersApplication row, {
    _i1.ColumnSelections<OwnersApplicationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<OwnersApplication>(
      row,
      columns: columns?.call(OwnersApplication.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<OwnersApplication> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<OwnersApplication>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    OwnersApplication row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<OwnersApplication>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OwnersApplicationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<OwnersApplication>(
      where: where(OwnersApplication.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OwnersApplicationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<OwnersApplication>(
      where: where?.call(OwnersApplication.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
