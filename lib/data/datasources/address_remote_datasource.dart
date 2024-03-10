import 'package:apple_store/core/constants/variables.dart';
import 'package:apple_store/data/datasources/auth_local_datasource.dart';
import 'package:apple_store/data/models/requests/address_request_model.dart';
import 'package:apple_store/data/models/responses/address_response_model.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

class AddressRemoteDataSource {
  Future<Either<String, AddressResponseModel>> getAddresses() async {
    try {
      String apiUrl = '${Variables.baseUrl}/addresses';

      final authData = await AuthLocalDatasource().getAuthData();
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'Authorization': 'Bearer ${authData!.accessToken}',
          'Accept': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        return Right(AddressResponseModel.fromJson(response.body));
      } else {
        return Left(response.body);
      }
    } catch (e) {
      return Left('Error occurred: $e');
    }
  }

  Future<Either<String, String>> addAddress(AddressRequestModel data) async {
    try {
      final authData = await AuthLocalDatasource().getAuthData();
      final response = await http.post(
        Uri.parse('${Variables.baseUrl}/addresses'),
        headers: {
          'Authorization': 'Bearer ${authData!.accessToken}',
          'Accept': 'application/json',
          'Content-type': 'application/json',
        },
        body: data.toJson(),
      );
      if (response.statusCode == 201) {
        return Right(response.body);
      } else {
        return Left(response.body);
      }
    } catch (e) {
      return Left('Error occurred: $e');
    }
  }
}
