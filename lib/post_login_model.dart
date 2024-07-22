import 'dart:convert';
import 'package:http/http.dart' as http;

class PostLogin {
  String token;

  PostLogin({required this.token});

  factory PostLogin.createPostLogin(Map<String, dynamic> object) {
    return PostLogin(token: object['token']);
  }

  static Future<PostLogin> connectToAPI(String email, String password) async {
    if (!_isValidEmail(email)) {
      throw Exception('Invalid email format');
    }

    String apiURL = "https://reqres.in/api/login";

    var response = await http.post(Uri.parse(apiURL), body: {
      "email": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body);
      return PostLogin.createPostLogin(jsonObject);
    } else {
      throw Exception('Failed to login');
    }
  }

  static bool _isValidEmail(String email) {
    // Regex pattern for validating email
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return regex.hasMatch(email);
  }
}

void main() async {
  try {
    var postLogin = await PostLogin.connectToAPI("arya@invalid", "agengkon");
    print("Token: ${postLogin.token}");
  } catch (e) {
    print("Error: $e");
  }
}
