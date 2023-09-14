import '../assess_apiclient/models/current_user.dart';
import '../assess_apiclient/models/models.dart';
import '../assess_apiclient/requests/market.dart';

class MarketService {
  late final MarketApi _marketApi;
  MarketService() {
    _marketApi = MarketApi();
  }

  Future<ProductResponse> loadProducts() async {
    var productRequest = ProductRequest(
        server_key: server_key, user_id: Current.User.user_id ?? "");

    ProductResponse value =
        await _marketApi.getProductsAsync(productRequest: productRequest);
    return value;
  }

  Future<ProductResponse> getPurchasedProductsAsync() async {
    var productRequest = ProductRequest(
        server_key: server_key,
        user_id: Current.User.user_id ?? "",
        type: "purchased");

    ProductResponse value = await _marketApi.getPurchasedProductsAsync(
        productRequest: productRequest);
    return value;
  }
}
