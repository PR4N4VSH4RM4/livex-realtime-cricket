import 'api_key.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future <List<dynamic>> getlivematch() async{
   final url = Uri.parse("https://cricket-live-line-advance.p.rapidapi.com/competitions/129438/matches?paged=1&per_page=50");
   final response = await http.get(url, headers: {
        "x-rapidapi-key": api_key,
        "x-rapidapi-host":
            "cricket-live-line-advance.p.rapidapi.com",
      },);
    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      print(data);
      return data['response']['items'];
    }else{
      throw Exception("failed to load");
    }
   

  }
 
}