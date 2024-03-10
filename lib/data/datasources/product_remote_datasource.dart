import 'package:apple_store/data/models/responses/product_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:apple_store/core/constants/variables.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductResponseModel>> getProducts(
      {String? search, String? categoryId}) async {
    try {
      String apiUrl = '${Variables.baseUrl}/products';

      if (search != null && search.isNotEmpty) {
        apiUrl += '?search=$search';
      }

      if (categoryId != null && categoryId.isNotEmpty) {
        apiUrl += apiUrl.contains('?') ? '&' : '?';
        apiUrl += 'category_id=$categoryId';
      }

      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        return Right(ProductResponseModel.fromJson(response.body));
      } else {
        return Left(response.body);
      }
    } catch (e) {
      return Left('Error occurred: $e');
    }
  }
}
