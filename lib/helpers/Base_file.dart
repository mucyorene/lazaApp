import 'package:shared_preferences/shared_preferences.dart';

class BaseCodes{
  static sharedFunction() async {
    SharedPreferences sharedInstance = await SharedPreferences.getInstance();
  }
}