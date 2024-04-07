import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class ItemsEndpoint extends Endpoint {
  Future<List<Item>> getAllItems(Session session) async {
    return await Item.db.find(
      session,
      orderBy: (t) => t.id,
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
