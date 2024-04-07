/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Expertise extends _i1.TableRow {
  Expertise._({
    int? id,
    required this.file,
  }) : super(id);

  factory Expertise({
    int? id,
    required String file,
  }) = _ExpertiseImpl;

  factory Expertise.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Expertise(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
    );
  }

  static final t = ExpertiseTable();

  static const db = ExpertiseRepository._();

  String file;

  @override
  _i1.Table get table => t;

  Expertise copyWith({
    int? id,
    String? file,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'file': file,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'file': file,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'file': file,
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
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Expertise>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Expertise>(
      where: where != null ? where(Expertise.t) : null,
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
  static Future<Expertise?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Expertise>(
      where: where != null ? where(Expertise.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Expertise?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Expertise>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ExpertiseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Expertise>(
      where: where(Expertise.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Expertise row, {
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
    Expertise row, {
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
    Expertise row, {
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
    _i1.WhereExpressionBuilder<ExpertiseTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Expertise>(
      where: where != null ? where(Expertise.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ExpertiseInclude include() {
    return ExpertiseInclude._();
  }

  static ExpertiseIncludeList includeList({
    _i1.WhereExpressionBuilder<ExpertiseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExpertiseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpertiseTable>? orderByList,
    ExpertiseInclude? include,
  }) {
    return ExpertiseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Expertise.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Expertise.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ExpertiseImpl extends Expertise {
  _ExpertiseImpl({
    int? id,
    required String file,
  }) : super._(
          id: id,
          file: file,
        );

  @override
  Expertise copyWith({
    Object? id = _Undefined,
    String? file,
  }) {
    return Expertise(
      id: id is int? ? id : this.id,
      file: file ?? this.file,
    );
  }
}

class ExpertiseTable extends _i1.Table {
  ExpertiseTable({super.tableRelation}) : super(tableName: 'expertise') {
    file = _i1.ColumnString(
      'file',
      this,
    );
  }

  late final _i1.ColumnString file;

  @override
  List<_i1.Column> get columns => [
        id,
        file,
      ];
}

@Deprecated('Use ExpertiseTable.t instead.')
ExpertiseTable tExpertise = ExpertiseTable();

class ExpertiseInclude extends _i1.IncludeObject {
  ExpertiseInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Expertise.t;
}

class ExpertiseIncludeList extends _i1.IncludeList {
  ExpertiseIncludeList._({
    _i1.WhereExpressionBuilder<ExpertiseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Expertise.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Expertise.t;
}

class ExpertiseRepository {
  const ExpertiseRepository._();

  Future<List<Expertise>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ExpertiseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpertiseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Expertise>(
      where: where?.call(Expertise.t),
      orderBy: orderBy?.call(Expertise.t),
      orderByList: orderByList?.call(Expertise.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Expertise?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseTable>? where,
    int? offset,
    _i1.OrderByBuilder<ExpertiseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ExpertiseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Expertise>(
      where: where?.call(Expertise.t),
      orderBy: orderBy?.call(Expertise.t),
      orderByList: orderByList?.call(Expertise.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Expertise?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Expertise>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Expertise>> insert(
    _i1.Session session,
    List<Expertise> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Expertise>(
      rows,
      transaction: transaction,
    );
  }

  Future<Expertise> insertRow(
    _i1.Session session,
    Expertise row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Expertise>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Expertise>> update(
    _i1.Session session,
    List<Expertise> rows, {
    _i1.ColumnSelections<ExpertiseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Expertise>(
      rows,
      columns: columns?.call(Expertise.t),
      transaction: transaction,
    );
  }

  Future<Expertise> updateRow(
    _i1.Session session,
    Expertise row, {
    _i1.ColumnSelections<ExpertiseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Expertise>(
      row,
      columns: columns?.call(Expertise.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Expertise> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Expertise>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Expertise row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Expertise>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ExpertiseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Expertise>(
      where: where(Expertise.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ExpertiseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Expertise>(
      where: where?.call(Expertise.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
