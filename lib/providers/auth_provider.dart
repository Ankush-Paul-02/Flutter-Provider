// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get isLoading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password, BuildContext context) async {
    setLoading(true);
    try {
      Response response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        VxToast.show(context, msg: 'Successful');
        setLoading(false);
      } else {
        VxToast.show(context, msg: 'Something went wrong');
        setLoading(false);
      }
    } catch (e) {
      VxToast.show(context, msg: e.toString());
      setLoading(false);
    }
  }
}
