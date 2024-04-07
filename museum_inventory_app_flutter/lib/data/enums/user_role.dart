enum UserRole {
  director,
  mainKeeper,
  efzk,
  employee,
}

extension UserRoleValues on UserRole {
  String roleTitle() {
    switch (this) {
      case UserRole.director:
        return "Директор";
      case UserRole.mainKeeper:
        return "Главный хранитель";
      case UserRole.efzk:
        return "Сотрудник ЭФЗК";
      case UserRole.employee:
        return "Научный сотрудник";
    }
  }
}
