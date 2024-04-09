import 'package:flutter/material.dart';

import '../../presentation/screens/employee/employee_list_view.dart';
import '../../presentation/screens/items/items_list_view.dart';
import '../../presentation/screens/owner/owner_list_view.dart';
import '../../presentation/screens/owners_application/owners_application_list_view.dart';

enum PageType {
  items,
  analytics,
  employees,
  ownersActs,
  actsVHEFZK,
  owners,
  expertises,
  protocolsEFZK,
  actsOfPermanentAcceptance,
  actsOfReturn,
  inventory,
  entrance,
  decomissionOrder,
  decomissionAct,
}

extension PageTypeValues on PageType {
  Widget showPage() {
    switch (this) {
      case PageType.items:
        return const ItemsListView();
      case PageType.employees:
        return const EmployeesListView();
      case PageType.owners:
        return const OwnersListView();
      case PageType.ownersActs:
        return const OwnersApplicationListView();
      // case PageType.actsVHEFZK:
      // return const ActsVHEFZKListView();
      // case PageType.actsOfPermanentAcceptance:
      // return const ActsOfPermanentAcceptanceListView();
      // case PageType.actsOfReturn:
      // return const ActsOfReturnListView();
      // case PageType.entrance:
      // return const EntranceListView();
      // case PageType.decomissionOrder:
      // return const DecomissionOrderListView();
      // case PageType.decomissionAct:
      // return const DecomissionActListView();
      // case PageType.expertises:
      // return const ExpertisesListView();
      default:
        return const ItemsListView();
    }
  }
}
