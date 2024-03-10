import 'package:apple_store/data/models/responses/category_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:apple_store/core/constants/variables.dart';

class CategoryRemoteDatasource {
  Future<Either<String, CategoryResponseModel>> getCategories() async {
    try {
      final response = await http.get(
        Uri.parse('${Variables.baseUrl}/categories'),
      );

      if (response.statusCode == 200) {
        return Right(CategoryResponseModel.fromJson(response.body));
      } else {
        return Left(response.body);
      }
    } catch (e) {
      return Left('Error occurred: $e');
    }
  }
}
