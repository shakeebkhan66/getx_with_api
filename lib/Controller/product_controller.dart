
import 'package:get/get.dart';
import 'package:getx_with_api/Model/MakeUpModel.dart';
import 'package:getx_with_api/Services/remote_services.dart';

class ProductController extends GetxController{

  var productList = <MakeUpModel>[].obs;

  void fetchProducts() async{
    var products = RemoteServices.fetchProducts();
    if(products!=null){
      productList.value = products as List<MakeUpModel>;
    }
  }


}