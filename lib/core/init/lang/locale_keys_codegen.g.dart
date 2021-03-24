// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "welcome": "Welcome to My App",
  "onBoard": {
    "page1": {
      "title": "Scan the QR Code",
      "desc": "You can easy find this application and use it."
    },
    "page2": {
      "title": "Collect Points",
      "desc": "Use application save the world and collect the point"
    },
    "page3": {
      "title": "Save The Nature",
      "desc": "You are hero of the world please save the world. Let's fight together for our world!!"
    }
  },
  "login": {
    "tab1": "Login",
    "tab2": "Sign-Up",
    "orLoginWith": "Or Login With",
    "orSignUpWith": "Or Sign-Up With",
    "email": "Email",
    "password": "Password",
    "forgotText": "Forgot Password",
    "name": "Name and Surname"
  }
};
static const Map<String,dynamic> tr_TR = {
  "welcome": "Uygulamamıza hoşgeldiniz.",
  "onBoard": {
    "page1": {
      "title": "QR Code Taratın",
      "desc": "Kolayca kodu taratın ve işlemlerinizi halledin."
    },
    "page2": {
      "title": "Puanları Toplayın",
      "desc": "Puan toplayın"
    },
    "page3": {
      "title": "Doğayı birlikte koruyalım",
      "desc": "Dünyanın kahramanları biziz. Hadi birlikte savaşalım."
    }
  },
  "login": {
    "tab1": "Giriş",
    "tab2": "Kayıt-Ol",
    "orLoginWith": "Giriş yapın",
    "orSignUpWith": "Kayıt Olun",
    "email": "Email",
    "password": "Şifre",
    "forgotText": "Şifreyi Unuttum",
    "name": "Adınız ve Soyadınız"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US, "tr_TR": tr_TR};
}