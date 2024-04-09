import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class OwnersEndpoint extends Endpoint {
  Future<List<Owner>> getAllOwners(Session session) async {
    return await Owner.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<Owner?> getOwner(Session session, int id) async {
    return await Owner.db.findById(
      session,
      id,
    );
  }

  Future<void> createOwner(Session session, Owner owner) async {
    await Owner.db.insertRow(session, owner);
  }

  Future<void> updateOwner(Session session, Owner owner) async {
    await Owner.db.updateRow(session, owner);
  }

  Future<void> deleteOwner(Session session, int id) async {
    await Owner.db.deleteWhere(
      session,
      where: (p0) => p0.id.equals(id),
    );
  }
}
