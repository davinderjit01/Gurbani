import 'package:shared_preferences/shared_preferences.dart';

// shared preference is used to store data locally on phone
// shared preference for page number--------------------------------
Future<bool>savePageNumberPreference(int pageNumber) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('pageNumber', pageNumber);
  return prefs.commit();
}

Future<int>getPageNumberPreference() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int pageNumber = prefs.getInt('pageNumber');
  return pageNumber;
}
// shared preference for splash screen---------------------------------
Future<bool>saveSplashPagePreference(int initScreen) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('initScreen', 1);
  return prefs.commit();
}

Future<int>getSplashPagePreference() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int initScreen =  prefs.getInt('initScreen');
  return initScreen;
}