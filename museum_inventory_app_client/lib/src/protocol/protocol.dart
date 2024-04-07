/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'act_vh_efzk.dart' as _i2;
import 'decomission_act.dart' as _i3;
import 'decomission_order.dart' as _i4;
import 'employee.dart' as _i5;
import 'entrance_book.dart' as _i6;
import 'entrance_book_record.dart' as _i7;
import 'expertise.dart' as _i8;
import 'expertise_of_item.dart' as _i9;
import 'fund.dart' as _i10;
import 'fund_collection.dart' as _i11;
import 'inventory_book.dart' as _i12;
import 'inventory_book_record.dart' as _i13;
import 'item.dart' as _i14;
import 'item_on_efzk.dart' as _i15;
import 'item_on_efzk_protocol.dart' as _i16;
import 'listening_employee_efzk.dart' as _i17;
import 'owner.dart' as _i18;
import 'owners_application.dart' as _i19;
import 'permanent_acceptance_act.dart' as _i20;
import 'position.dart' as _i21;
import 'protocol_efzk.dart' as _i22;
import 'return_act.dart' as _i23;
import 'speaking_employee_efzk.dart' as _i24;
import 'package:museum_inventory_app_client/src/protocol/item.dart' as _i25;
export 'act_vh_efzk.dart';
export 'decomission_act.dart';
export 'decomission_order.dart';
export 'employee.dart';
export 'entrance_book.dart';
export 'entrance_book_record.dart';
export 'expertise.dart';
export 'expertise_of_item.dart';
export 'fund.dart';
export 'fund_collection.dart';
export 'inventory_book.dart';
export 'inventory_book_record.dart';
export 'item.dart';
export 'item_on_efzk.dart';
export 'item_on_efzk_protocol.dart';
export 'listening_employee_efzk.dart';
export 'owner.dart';
export 'owners_application.dart';
export 'permanent_acceptance_act.dart';
export 'position.dart';
export 'protocol_efzk.dart';
export 'return_act.dart';
export 'speaking_employee_efzk.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.ActVHEFZK) {
      return _i2.ActVHEFZK.fromJson(data, this) as T;
    }
    if (t == _i3.DecomissionAct) {
      return _i3.DecomissionAct.fromJson(data, this) as T;
    }
    if (t == _i4.DecomissionOrder) {
      return _i4.DecomissionOrder.fromJson(data, this) as T;
    }
    if (t == _i5.Employee) {
      return _i5.Employee.fromJson(data, this) as T;
    }
    if (t == _i6.EntranceBook) {
      return _i6.EntranceBook.fromJson(data, this) as T;
    }
    if (t == _i7.EntranceBookRecord) {
      return _i7.EntranceBookRecord.fromJson(data, this) as T;
    }
    if (t == _i8.Expertise) {
      return _i8.Expertise.fromJson(data, this) as T;
    }
    if (t == _i9.ExpertiseOfItem) {
      return _i9.ExpertiseOfItem.fromJson(data, this) as T;
    }
    if (t == _i10.Fund) {
      return _i10.Fund.fromJson(data, this) as T;
    }
    if (t == _i11.FundCollection) {
      return _i11.FundCollection.fromJson(data, this) as T;
    }
    if (t == _i12.InventoryBook) {
      return _i12.InventoryBook.fromJson(data, this) as T;
    }
    if (t == _i13.InventoryBookRecord) {
      return _i13.InventoryBookRecord.fromJson(data, this) as T;
    }
    if (t == _i14.Item) {
      return _i14.Item.fromJson(data, this) as T;
    }
    if (t == _i15.ItemOnEfzk) {
      return _i15.ItemOnEfzk.fromJson(data, this) as T;
    }
    if (t == _i16.ItemInEfzkProtocol) {
      return _i16.ItemInEfzkProtocol.fromJson(data, this) as T;
    }
    if (t == _i17.ListeningEmployeeEfzk) {
      return _i17.ListeningEmployeeEfzk.fromJson(data, this) as T;
    }
    if (t == _i18.Owner) {
      return _i18.Owner.fromJson(data, this) as T;
    }
    if (t == _i19.OwnersApplication) {
      return _i19.OwnersApplication.fromJson(data, this) as T;
    }
    if (t == _i20.PermanentAcceptanceAct) {
      return _i20.PermanentAcceptanceAct.fromJson(data, this) as T;
    }
    if (t == _i21.Position) {
      return _i21.Position.fromJson(data, this) as T;
    }
    if (t == _i22.ProtocolEFZK) {
      return _i22.ProtocolEFZK.fromJson(data, this) as T;
    }
    if (t == _i23.ReturnAct) {
      return _i23.ReturnAct.fromJson(data, this) as T;
    }
    if (t == _i24.SpeakingEmployeeEfzk) {
      return _i24.SpeakingEmployeeEfzk.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.ActVHEFZK?>()) {
      return (data != null ? _i2.ActVHEFZK.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.DecomissionAct?>()) {
      return (data != null ? _i3.DecomissionAct.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i4.DecomissionOrder?>()) {
      return (data != null ? _i4.DecomissionOrder.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i5.Employee?>()) {
      return (data != null ? _i5.Employee.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.EntranceBook?>()) {
      return (data != null ? _i6.EntranceBook.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.EntranceBookRecord?>()) {
      return (data != null ? _i7.EntranceBookRecord.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.Expertise?>()) {
      return (data != null ? _i8.Expertise.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.ExpertiseOfItem?>()) {
      return (data != null ? _i9.ExpertiseOfItem.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.Fund?>()) {
      return (data != null ? _i10.Fund.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.FundCollection?>()) {
      return (data != null ? _i11.FundCollection.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i12.InventoryBook?>()) {
      return (data != null ? _i12.InventoryBook.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.InventoryBookRecord?>()) {
      return (data != null
          ? _i13.InventoryBookRecord.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i14.Item?>()) {
      return (data != null ? _i14.Item.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i15.ItemOnEfzk?>()) {
      return (data != null ? _i15.ItemOnEfzk.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.ItemInEfzkProtocol?>()) {
      return (data != null
          ? _i16.ItemInEfzkProtocol.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i17.ListeningEmployeeEfzk?>()) {
      return (data != null
          ? _i17.ListeningEmployeeEfzk.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i18.Owner?>()) {
      return (data != null ? _i18.Owner.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i19.OwnersApplication?>()) {
      return (data != null ? _i19.OwnersApplication.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i20.PermanentAcceptanceAct?>()) {
      return (data != null
          ? _i20.PermanentAcceptanceAct.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i21.Position?>()) {
      return (data != null ? _i21.Position.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i22.ProtocolEFZK?>()) {
      return (data != null ? _i22.ProtocolEFZK.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i23.ReturnAct?>()) {
      return (data != null ? _i23.ReturnAct.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i24.SpeakingEmployeeEfzk?>()) {
      return (data != null
          ? _i24.SpeakingEmployeeEfzk.fromJson(data, this)
          : null) as T;
    }
    if (t == List<_i25.Item>) {
      return (data as List).map((e) => deserialize<_i25.Item>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.ActVHEFZK) {
      return 'ActVHEFZK';
    }
    if (data is _i3.DecomissionAct) {
      return 'DecomissionAct';
    }
    if (data is _i4.DecomissionOrder) {
      return 'DecomissionOrder';
    }
    if (data is _i5.Employee) {
      return 'Employee';
    }
    if (data is _i6.EntranceBook) {
      return 'EntranceBook';
    }
    if (data is _i7.EntranceBookRecord) {
      return 'EntranceBookRecord';
    }
    if (data is _i8.Expertise) {
      return 'Expertise';
    }
    if (data is _i9.ExpertiseOfItem) {
      return 'ExpertiseOfItem';
    }
    if (data is _i10.Fund) {
      return 'Fund';
    }
    if (data is _i11.FundCollection) {
      return 'FundCollection';
    }
    if (data is _i12.InventoryBook) {
      return 'InventoryBook';
    }
    if (data is _i13.InventoryBookRecord) {
      return 'InventoryBookRecord';
    }
    if (data is _i14.Item) {
      return 'Item';
    }
    if (data is _i15.ItemOnEfzk) {
      return 'ItemOnEfzk';
    }
    if (data is _i16.ItemInEfzkProtocol) {
      return 'ItemInEfzkProtocol';
    }
    if (data is _i17.ListeningEmployeeEfzk) {
      return 'ListeningEmployeeEfzk';
    }
    if (data is _i18.Owner) {
      return 'Owner';
    }
    if (data is _i19.OwnersApplication) {
      return 'OwnersApplication';
    }
    if (data is _i20.PermanentAcceptanceAct) {
      return 'PermanentAcceptanceAct';
    }
    if (data is _i21.Position) {
      return 'Position';
    }
    if (data is _i22.ProtocolEFZK) {
      return 'ProtocolEFZK';
    }
    if (data is _i23.ReturnAct) {
      return 'ReturnAct';
    }
    if (data is _i24.SpeakingEmployeeEfzk) {
      return 'SpeakingEmployeeEfzk';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ActVHEFZK') {
      return deserialize<_i2.ActVHEFZK>(data['data']);
    }
    if (data['className'] == 'DecomissionAct') {
      return deserialize<_i3.DecomissionAct>(data['data']);
    }
    if (data['className'] == 'DecomissionOrder') {
      return deserialize<_i4.DecomissionOrder>(data['data']);
    }
    if (data['className'] == 'Employee') {
      return deserialize<_i5.Employee>(data['data']);
    }
    if (data['className'] == 'EntranceBook') {
      return deserialize<_i6.EntranceBook>(data['data']);
    }
    if (data['className'] == 'EntranceBookRecord') {
      return deserialize<_i7.EntranceBookRecord>(data['data']);
    }
    if (data['className'] == 'Expertise') {
      return deserialize<_i8.Expertise>(data['data']);
    }
    if (data['className'] == 'ExpertiseOfItem') {
      return deserialize<_i9.ExpertiseOfItem>(data['data']);
    }
    if (data['className'] == 'Fund') {
      return deserialize<_i10.Fund>(data['data']);
    }
    if (data['className'] == 'FundCollection') {
      return deserialize<_i11.FundCollection>(data['data']);
    }
    if (data['className'] == 'InventoryBook') {
      return deserialize<_i12.InventoryBook>(data['data']);
    }
    if (data['className'] == 'InventoryBookRecord') {
      return deserialize<_i13.InventoryBookRecord>(data['data']);
    }
    if (data['className'] == 'Item') {
      return deserialize<_i14.Item>(data['data']);
    }
    if (data['className'] == 'ItemOnEfzk') {
      return deserialize<_i15.ItemOnEfzk>(data['data']);
    }
    if (data['className'] == 'ItemInEfzkProtocol') {
      return deserialize<_i16.ItemInEfzkProtocol>(data['data']);
    }
    if (data['className'] == 'ListeningEmployeeEfzk') {
      return deserialize<_i17.ListeningEmployeeEfzk>(data['data']);
    }
    if (data['className'] == 'Owner') {
      return deserialize<_i18.Owner>(data['data']);
    }
    if (data['className'] == 'OwnersApplication') {
      return deserialize<_i19.OwnersApplication>(data['data']);
    }
    if (data['className'] == 'PermanentAcceptanceAct') {
      return deserialize<_i20.PermanentAcceptanceAct>(data['data']);
    }
    if (data['className'] == 'Position') {
      return deserialize<_i21.Position>(data['data']);
    }
    if (data['className'] == 'ProtocolEFZK') {
      return deserialize<_i22.ProtocolEFZK>(data['data']);
    }
    if (data['className'] == 'ReturnAct') {
      return deserialize<_i23.ReturnAct>(data['data']);
    }
    if (data['className'] == 'SpeakingEmployeeEfzk') {
      return deserialize<_i24.SpeakingEmployeeEfzk>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
