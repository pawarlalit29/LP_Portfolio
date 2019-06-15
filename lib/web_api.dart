import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:lp_portfolio/Model/ProfileData.dart';

const baseUrl = "https://demo8661550.mockable.io/";


class WebApiProvider{

  Future<ProfileData> getProfileData() async {
    var url = baseUrl + "lp_portfolio";

    final response =
    await http.get(url);

    if (response.statusCode == 200) {

      debugPrint('Data :'+response.body);

      final jsonData = json.decode(response.body);
      return new ProfileData.fromJsonMap(jsonData);
    } else {
      throw Exception('Failed to load profile.');
    }
  }


}
