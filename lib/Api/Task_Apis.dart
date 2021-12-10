import 'package:http/http.dart' as http;

class Taskapi {
  static String baseUrl = 'https://61b19b22c8d4640017aaedc8.mockapi.io';

  static getTaskList() async {
    return await http.get(Uri.parse('$baseUrl/task'));
  }

  static addTask({required String? name, required String? url}) async {
    return await http.post(
      Uri.parse('$baseUrl/task'),
      body: {"name": "$name", "avatar": "$url"},
    );
  }
}
