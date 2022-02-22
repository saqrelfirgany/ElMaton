import 'package:elmaton/core/api/api_client.dart';
import 'package:elmaton/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  ///
  /// API Client
  ///
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.baseUrl));

  ///
  /// Repository
  ///
  // Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  ///
  /// Controller
  ///
  // Get.lazyPut(() => CartController(cartRepo: Get.find()), fenix: true);
}
