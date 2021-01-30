import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/employee.dart';

const url = "https://dummy.restapiexample.com/";

class GetEmployee {
  String getPath() {
    return url + "api/v1/employees";
  }

  Future<List<Employee>> getEmployees() async {
    final res = await http.get(getPath());

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      List data = json['data'];
      return data.map((employees) => new Employee.fromJson(employees)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}