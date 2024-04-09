import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class OwnersApplicationEndpoint extends Endpoint {
  Future<List<OwnersApplication>> getAllOwnersApplications(
      Session session) async {
    return await OwnersApplication.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<OwnersApplication?> getOwnersApplication(
      Session session, int id) async {
    return await OwnersApplication.db.findById(
      session,
      id,
    );
  }

  Future<void> createOwnersApplication(
      Session session, OwnersApplication ownersApplication) async {
    await OwnersApplication.db.insertRow(session, ownersApplication);
  }

  Future<void> updateOwnersApplication(
      Session session, OwnersApplication ownersApplication) async {
    await OwnersApplication.db.updateRow(session, ownersApplication);
  }

  Future<void> deleteOwnersApplication(Session session, int id) async {
    await OwnersApplication.db.deleteWhere(
      session,
      where: (p0) => p0.id.equals(id),
    );
  }
}
