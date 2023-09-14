import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import '../models/current_user.dart';
import '../models/models.dart';
import '../network/endpoints.dart';
import 'base_api.dart';

class MarketApi extends BaseApi {
  MarketApi() {
    accessToken = Current.User.access_token ?? "";
  }
  Future<ProductResponse> getProductsAsync(
      {required ProductRequest productRequest}) async {
    try {
      var response = await dioClient.post(Endpoints.GetProducts + accessToken,
          data: productRequest.toJson());
      return productResponseFromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future getPurchasedProductsAsync(
      {required ProductRequest productRequest}) async {
    try {
      var response = await dioClient.post(Endpoints.GetProducts + accessToken,
          data: productRequest.toJson());
      return productResponseFromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future getCartsAsync({required ProductRequest productRequest}) async {
    try {
      var response = await dioClient.post(Endpoints.ApiMarket + accessToken,
          data: productRequest.toJson());
      return productResponseFromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future changeQtyProductAsync({required ProductRequest productRequest}) async {
    try {
      var response = await dioClient.post(Endpoints.ApiMarket + accessToken,
          data: productRequest.toJson());
      return productResponseFromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future buyProductAsync({required ProductRequest productRequest}) async {
    try {
      //               new KeyValuePair<string, string>("type", "buy"),
      //               new KeyValuePair<string, string>("address_id", id),
      var response = await dioClient.post(Endpoints.ApiMarket + accessToken,
          data: productRequest.toJson());
      return productResponseFromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future editProductAsync(
      {required ProductUpdateRequest productRequest,
      List<Attachments>? attachments,
      String? productRemoveImages}) async {
    try {
      var response = await dioClient.post(Endpoints.ApiMarket + accessToken,
          data: productRequest.toJson());
      return productResponseFromJson(response.data);
    } on DioException catch (err) {
      var errorMessage = DioException.connectionError(
          requestOptions: err.requestOptions, reason: err.message ?? "");
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  uploadAttachment(
      List<Attachments>? attachments, String? productRemoveImages) async {
    if (attachments != null && attachments.length > 0) {
      for (var attachment in attachments) {
        if (attachment.fileUrl.contains("http")) continue;
        Stream? stream = attachment.fileStream;
        //new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
        // var length = await attachment.length();

        // var uri = Uri.parse(uploadURL);

        // var request = new http.MultipartRequest("POST", uri);
        // var multipartFile = new http.MultipartFile('file', stream, length,
        //     filename: basename(imageFile.path));
        // //contentType: new MediaType('image', 'png'));

        // request.files.add(multipartFile);
        // var response = await request.send();
        // print(response.statusCode);
        // response.stream.transform(utf8.decoder).listen((value) {
        //   print(value);
        // });

        //FileStream fs = File.OpenRead(attachment.FileUrl);
        // StreamContent sContent = new StreamContent(fs);
        // sContent.Headers.ContentType = new MediaTypeHeaderValue(MimeTypeMap.GetMimeType(attachment.FileUrl?.Split('.').LastOrDefault()));
        // sContent.Headers.ContentDisposition = new ContentDispositionHeaderValue("form-data")
        // {
        //     Name = "images[]",
        //     FileName = attachment.FileUrl?.Split('\\').LastOrDefault()?.Split('/').LastOrDefault()
        // };
        // multi.Add(sContent);
      }
    }

    // var request = new HttpRequestMessage
    // {
    //     RequestUri = new Uri(InitializeWoWonder.UrlsApi.EditProduct + Current.AccessToken),
    //     Method = HttpMethod.Post,
    //     Content = multi
    // };
    // request.Headers.Add("Connection", new[] { "Keep-Alive" });
    // var response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.SendAsync(request));
    // String json = await response.Content.ReadAsStringAsync();
  }
// static Future multipartProdecudre(
//       {required String? url,
//       required String? filepath,
//       String currentUserId = "",
//       String profileorvideo = "",
//       String description = "",
//       bool isChatImage = false}) async {
//     try {
//       var multipartRequest = http.MultipartRequest('post', Uri.parse(url!));
//       multipartRequest.headers.addAll(
//         {
//           "Authorization": "Bearer 14FE34B2-9547-43F5-A57C-F0DC7DE81AA9",
//           "Content-Type": "multipart/form-data",
//           "AppName": "DbLetsConnect",
//         },
//       );
//       var millisecondsSinceEpoch =
//           DateTime.now().millisecondsSinceEpoch.toString() +
//               "." +
//               filepath!.split(".").last;
//       if (!isChatImage) {
//         multipartRequest.fields['Id'] = currentUserId;
//         multipartRequest.fields['FileType'] = profileorvideo;
//         multipartRequest.fields['Description'] = description;
//       }

//       multipartRequest.files.add(
//         await http.MultipartFile.fromPath(
//           "File",
//           filepath,
//           filename: millisecondsSinceEpoch,
//           contentType: MediaType('image', 'jpeg'),
//         ),
//       );

//       http.Response response =
//           await http.Response.fromStream(await multipartRequest.send());

//       final statusCode = response.statusCode;

//       if (statusCode == 200) {
//         return Constants.resultInApi(response.body, false);
//       } else if (statusCode == 429) {
//         //SimpleHttpParser.callPostEncodeApi(url: url, strJson: strJson);
//       } else {
//         return Constants.resultInApi("", true);
//       }
//     } on SocketException {
//       return Constants.resultInApi("You are not connected to internet ☹", true);
//     } on TimeoutException {
//       return Constants.resultInApi(
//           "The Internet connection has timed out, Please try again.", true);
//     } catch (e) {
//       return Constants.resultInApi("", true);
//     }
//   }
}
