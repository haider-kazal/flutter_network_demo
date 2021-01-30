import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class Employee {
  final int id;
  @JsonKey(name: 'employee_name')
  final String employeeName;
  @JsonKey(name: 'employee_salary')
  final int employeeSalary;
  @JsonKey(name: 'employee_age')
  final int employeeAge;
  @JsonKey(name: 'profile_image')
  final String profileImage;

  Employee({this.id, this.employeeName, this.employeeSalary, this.employeeAge, this.profileImage});

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}