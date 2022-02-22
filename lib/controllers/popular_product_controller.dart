import 'package:get/get.dart';

class PopularProductController extends GetxController {
  //final PopularProductRepo popularProductRepo;

  // PopularProductController({required this.popularProductRepo});
  //
  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

}
