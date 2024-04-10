import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class ItemsEndpoint extends Endpoint {
  Future<List<Item>> getAllItems(Session session) async {
    return await Item.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<List<Item>> getItemsWithNoOwnersApplication(Session session) async {
    return await Item.db.find(
      session,
      where: (p0) => p0.ownerApplicationId.equals(null),
      orderBy: (t) => t.id,
    );
  }

  Future<void> setItemsOwnersApplication(
      Session session, int id, int applicationId) async {
    final item = await getItem(session, id);
    if (item != null) {
      await Item.db
          .updateRow(session, item.copyWith(ownerApplicationId: applicationId));
    }
  }

  Future<List<Item>> getItemsWithNoActVhEFZK(Session session) async {
    return await Item.db.find(
      session,
      where: (p0) => p0.actVhEfzkId.equals(null),
      orderBy: (t) => t.id,
    );
  }

  Future<List<Item>> getItemsWithNoReturnAct(Session session) async {
    return await Item.db.find(
      session,
      where: (p0) => p0.returnActId.equals(null),
      orderBy: (t) => t.id,
    );
  }

  Future<List<Item>> getItemsWithNoPermanentAcceptanceAct(
      Session session) async {
    return await Item.db.find(
      session,
      where: (p0) => p0.permanentAcceptanceActId.equals(null),
      orderBy: (t) => t.id,
    );
  }

  Future<List<Item>> getItemsWithNoDecomissionAct(Session session) async {
    return await Item.db.find(
      session,
      where: (p0) => p0.decomissionActId.equals(null),
      orderBy: (t) => t.id,
    );
  }

  Future<List<Item>> getItemsWithNoEntranceRecord(Session session) async {
    return await Item.db.find(
      session,
      where: (p0) => p0.entranceBookRecordId.equals(null),
      orderBy: (t) => t.id,
    );
  }

  Future<List<Item>> getItemsWithNoInventoryRecord(Session session) async {
    return await Item.db.find(
      session,
      where: (p0) => p0.inventoryBookRecordId.equals(null),
      orderBy: (t) => t.id,
    );
  }

  Future<Item?> getItem(Session session, int id) async {
    return await Item.db.findById(
      session,
      id,
    );
  }

  Future<void> createItem(Session session, Item item) async {
    await Item.db.insertRow(session, item);
  }

  Future<void> updateItem(Session session, Item item) async {
    await Item.db.updateRow(session, item);
  }

  Future<void> deleteItem(Session session, int id) async {
    await Item.db.deleteWhere(
      session,
      where: (p0) => p0.id.equals(id),
    );
  }
}
