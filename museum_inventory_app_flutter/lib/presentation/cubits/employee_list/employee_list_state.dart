part of 'employee_list_cubit.dart';

@freezed
class EmployeeListState with _$EmployeeListState {
  const factory EmployeeListState.initial() = _EmployeeListState;

  const factory EmployeeListState.employeesLoaded({
    required List<Employee> employees,
  }) = _EmployeeLoaded;

  const factory EmployeeListState.error() = _EmployeeError;
}
