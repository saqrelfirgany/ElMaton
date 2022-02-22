import 'package:elmaton/core/api/api_client.dart';
import 'package:elmaton/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProduct() async {
    return await apiClient.getData(AppConstants.popularProductUri);
  }
}
