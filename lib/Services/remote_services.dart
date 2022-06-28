import 'package:getx_with_api/Model/MakeUpModel.dart';
import 'package:http/http.dart' as http;


class RemoteServices{

  static var client = http.Client();
  static Future<MakeUpModel?> fetchProducts() async{
    var response = await client.get(
      Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json"));
    if(response.statusCode==200){
      var jsonString = response.body;
      return makeUpModelFromJson(jsonString);
    }else{
      return null;
    }
  }
}