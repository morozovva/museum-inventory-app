import 'package:museum_inventory_app_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ActVhEfzkEndpoint extends Endpoint {
  Future<List<ActVHEFZK>> getAllActVhEfzks(Session session) async {
    return await ActVHEFZK.db.find(
      session,
      orderBy: (t) => t.id,
      include: ActVHEFZK.include(employee: Employee.include()),
    );
  }

  Future<ActVHEFZK?> getActVhEfzk(Session session, int id) async {
    return await ActVHEFZK.db.findById(
      session,
      id,
      include: ActVHEFZK.include(employee: Employee.include()),
    );
  }

  Future<void> createActVhEfzk(Session session, ActVHEFZK actVhEfzk) async {
    await ActVHEFZK.db.insertRow(session, actVhEfzk);
  }

  Future<void> updateActVhEfzk(Session session, ActVHEFZK actVhEfzk) async {
    await ActVHEFZK.db.updateRow(session, actVhEfzk);
  }

  Future<void> deleteActVhEfzk(Session session, int id) async {
    await ActVHEFZK.db.deleteWhere(
      session,
      where: (p0) => p0.id.equals(id),
    );
  }
}
