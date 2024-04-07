// ignore_for_file: public_member_api_docs, sort_constructors_first
class Employee {
  final int id;
  final String name;
  final String surname;
  final String patronymic;
  final String dateOfBirth;
  final String phoneNumber;
  final String password;
  final String mail;
  final String dateOfEmployment;
  final String? dateOfDismissal;
  Employee({
    required this.id,
    required this.name,
    required this.surname,
    required this.patronymic,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.password,
    required this.mail,
    required this.dateOfEmployment,
    this.dateOfDismissal,
  });
}
