import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class EmployeeEndpoint extends Endpoint {
  Future<List<Employee>> getAllEmployees(Session session) async {
    return await Employee.db.find(
      session,
      orderBy: (t) => t.id,
      include: Employee.include(
        position: Position.include(),
      ),
    );
  }

  Future<List<Employee>> getWorkingEmployees(Session session) async {
    return await Employee.db.find(
      session,
      where: (p0) => p0.dismissalDate.equals(null),
      orderBy: (t) => t.id,
    );
  }

  Future<Employee?> getEmployee(Session session, int id) async {
    return await Employee.db.findById(
      session,
      id,
      include: Employee.include(
        position: Position.include(),
      ),
    );
  }

  Future<void> createEmployee(Session session, Employee employee) async {
    await Employee.db.insertRow(session, employee);
  }

  Future<void> updateEmployee(Session session, Employee employee) async {
    await Employee.db.updateRow(session, employee);
  }

  Future<void> deleteEmployee(Session session, int id) async {
    await Employee.db.deleteWhere(
      session,
      where: (p0) => p0.id.equals(id),
    );
  }
}
