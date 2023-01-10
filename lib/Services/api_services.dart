import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../model/resistredModel.dart';

// import '../model/ProductModel.dart';
//
// var base = "https://infograinsdevelopment.com";
// getPosts() async {
//   Uri url = Uri.parse("$base/Littlest-Precious/api/auth/login-signup-email");
//   var res = await http.get(url);

//   try {
//     if (res.statusCode == 200) {
//       var data = productFromJson(res.body);
//       return data.data;
//     } else {
//       print("Error during connection");
//     }
//   } catch (e) {
//     print(e.toString());
//   }
// }

// postData() async {
//   Uri url = Uri.parse("$base/Littlest-Precious/api/auth/login-signup-email");
//   var data = {
//     ' firstName': " Navneet",
//     ' phoneNumber': 76.toString(),
//   };
//   // var headers = {'content-type': 'application/json'};
//   // var headers =
//   // <String, String>{
//   //   HttpHeaders.acceptHeader: 'application/json',
//   //   HttpHeaders.contentTypeHeader: 'charset=UTF-8',
//   //   'Authorization':
//   //       "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzk3YWNhODVmNzcxNjZkYTZmNjBhMjEwMTRmNGY3NjM0MTQwY2VmNDFiYzg2ZTg1YTExMzM5Y2FiNTI5NjlkOWQ5ODhmZjJkYmRkM2M1YWMiLCJpYXQiOjE2Njk3MDI5MzUuMTk2NTg3MDg1NzIzODc2OTUzMTI1LCJuYmYiOjE2Njk3MDI5MzUuMTk2NTg4OTkzMDcyNTA5NzY1NjI1LCJleHAiOjE3MDEyMzg5MzUuMTk1MTAzODgzNzQzMjg2MTMyODEyNSwic3ViIjoiMTE2Iiwic2NvcGVzIjpbXX0.RGj2EkQINzjDxSU-qx7uITroaLeJin6bauaRBW4Rbmc1H-c3X2ymERcz7lqqDwvo9M5Mmh6OqFhhw1dijQkr2MIMs_ibxsZGuKa_XhgAIWhG497xHDff0jcjzNGZvxjwABPBWCdliRWNnhIlKweWuTkKq54RWvuXLuA_3L_PV70Ze4jtiBazNPthUS69veZtEtMFpsN2dIAJHTB0uZSw4LkEhTd2uRszY4sM5ktF7MbOnKHJr1Cz5XWVSbIcUYVEqTRZLW7tx7wgzsCiDEUiir_vTNWodbOm6e9Jd1kL9EFiDE6coWXvHCRSTVTRHFgMiQxpNsg9Pu2UTpWoS6fC4SWxHnNnp-9C607uYYkyuW_WNXYDQVJFu-BqC2HbC73jFR3xRuWxiyn0c9fP7i1IAloHqc5mh-uzmxhLNEEFKJdx5zzdKlLD51QJOhzB58sHlwp0sSfbO3L8NE70ewNxAwFR9GMS_oZVvmNRH3d0ewuDbotwBBJIu7njrA6XaOhC9cSJD6EE3RZHGMjJ8o-00hk2MDWBn3xsZtZDAtBLOwudbJ-iNnlSa63kCsJsOkBNsx9nmOetatpsEtCJ8THBeJtJDJylduab46x1QfOy9l7D-LyJVTvZPvCaToPeAz7K7Zu97MmMdm1d1L3Et3Ig1w4WBwwroxSTZRA0pT9LwuM"
//   // };
//   var post = await http.post(url, body: data, headers: <String, String>{
//     HttpHeaders.acceptHeader: 'application/json',
//     HttpHeaders.contentTypeHeader: 'multipart/form-data',
//     'Authorization':
//         "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzk3YWNhODVmNzcxNjZkYTZmNjBhMjEwMTRmNGY3NjM0MTQwY2VmNDFiYzg2ZTg1YTExMzM5Y2FiNTI5NjlkOWQ5ODhmZjJkYmRkM2M1YWMiLCJpYXQiOjE2Njk3MDI5MzUuMTk2NTg3MDg1NzIzODc2OTUzMTI1LCJuYmYiOjE2Njk3MDI5MzUuMTk2NTg4OTkzMDcyNTA5NzY1NjI1LCJleHAiOjE3MDEyMzg5MzUuMTk1MTAzODgzNzQzMjg2MTMyODEyNSwic3ViIjoiMTE2Iiwic2NvcGVzIjpbXX0.RGj2EkQINzjDxSU-qx7uITroaLeJin6bauaRBW4Rbmc1H-c3X2ymERcz7lqqDwvo9M5Mmh6OqFhhw1dijQkr2MIMs_ibxsZGuKa_XhgAIWhG497xHDff0jcjzNGZvxjwABPBWCdliRWNnhIlKweWuTkKq54RWvuXLuA_3L_PV70Ze4jtiBazNPthUS69veZtEtMFpsN2dIAJHTB0uZSw4LkEhTd2uRszY4sM5ktF7MbOnKHJr1Cz5XWVSbIcUYVEqTRZLW7tx7wgzsCiDEUiir_vTNWodbOm6e9Jd1kL9EFiDE6coWXvHCRSTVTRHFgMiQxpNsg9Pu2UTpWoS6fC4SWxHnNnp-9C607uYYkyuW_WNXYDQVJFu-BqC2HbC73jFR3xRuWxiyn0c9fP7i1IAloHqc5mh-uzmxhLNEEFKJdx5zzdKlLD51QJOhzB58sHlwp0sSfbO3L8NE70ewNxAwFR9GMS_oZVvmNRH3d0ewuDbotwBBJIu7njrA6XaOhC9cSJD6EE3RZHGMjJ8o-00hk2MDWBn3xsZtZDAtBLOwudbJ-iNnlSa63kCsJsOkBNsx9nmOetatpsEtCJ8THBeJtJDJylduab46x1QfOy9l7D-LyJVTvZPvCaToPeAz7K7Zu97MmMdm1d1L3Et3Ig1w4WBwwroxSTZRA0pT9LwuM"
//   });
//   try {
//     if (post.statusCode == 200) {
//       var jsonData = jsonDecode(post.body);
//       print(jsonData);
//       print("Data is uploaded succesfully!");
//     }
//   } catch (e) {
//     print(e.toString());
//   }
// }
// // FutureOr<List<Product>> postData1() async {
// //   final response = await http.post(
// //     Uri.parse('https://infograinsdevelopment.com/Littlest-Precious/api/auth/login-signup-email'),
// //    headers :
// //   <String, String>{
// //     HttpHeaders.acceptHeader: 'application/json',
// //     HttpHeaders.contentTypeHeader: 'multipart/form-data',
// //     'Authorization':
// //         "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzk3YWNhODVmNzcxNjZkYTZmNjBhMjEwMTRmNGY3NjM0MTQwY2VmNDFiYzg2ZTg1YTExMzM5Y2FiNTI5NjlkOWQ5ODhmZjJkYmRkM2M1YWMiLCJpYXQiOjE2Njk3MDI5MzUuMTk2NTg3MDg1NzIzODc2OTUzMTI1LCJuYmYiOjE2Njk3MDI5MzUuMTk2NTg4OTkzMDcyNTA5NzY1NjI1LCJleHAiOjE3MDEyMzg5MzUuMTk1MTAzODgzNzQzMjg2MTMyODEyNSwic3ViIjoiMTE2Iiwic2NvcGVzIjpbXX0.RGj2EkQINzjDxSU-qx7uITroaLeJin6bauaRBW4Rbmc1H-c3X2ymERcz7lqqDwvo9M5Mmh6OqFhhw1dijQkr2MIMs_ibxsZGuKa_XhgAIWhG497xHDff0jcjzNGZvxjwABPBWCdliRWNnhIlKweWuTkKq54RWvuXLuA_3L_PV70Ze4jtiBazNPthUS69veZtEtMFpsN2dIAJHTB0uZSw4LkEhTd2uRszY4sM5ktF7MbOnKHJr1Cz5XWVSbIcUYVEqTRZLW7tx7wgzsCiDEUiir_vTNWodbOm6e9Jd1kL9EFiDE6coWXvHCRSTVTRHFgMiQxpNsg9Pu2UTpWoS6fC4SWxHnNnp-9C607uYYkyuW_WNXYDQVJFu-BqC2HbC73jFR3xRuWxiyn0c9fP7i1IAloHqc5mh-uzmxhLNEEFKJdx5zzdKlLD51QJOhzB58sHlwp0sSfbO3L8NE70ewNxAwFR9GMS_oZVvmNRH3d0ewuDbotwBBJIu7njrA6XaOhC9cSJD6EE3RZHGMjJ8o-00hk2MDWBn3xsZtZDAtBLOwudbJ-iNnlSa63kCsJsOkBNsx9nmOetatpsEtCJ8THBeJtJDJylduab46x1QfOy9l7D-LyJVTvZPvCaToPeAz7K7Zu97MmMdm1d1L3Et3Ig1w4WBwwroxSTZRA0pT9LwuM"
// //   },
// //     body: jsonEncode(<String, String>{

// //     }),
// //   );
// //   try {
// //     if (response.statusCode == 200) {
// //       var jsonData = jsonDecode(response.body);
// //       print(jsonData);
// //       print("Data is uploaded succesfully!");
// //     }
// //   } catch (e) {
// //     print(e.toString());
// //   }
// // }

Future<GetJson> Resistered1() async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{}),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return GetJson.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
