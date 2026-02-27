import 'package:docdoc/feature/auth/login/data/model/login_request_model.dart';
import 'package:docdoc/feature/auth/login/data/model/login_response_model.dart';
import '../../../../../core/network/api_constants.dart';
import '../../../../../core/network/remote/api_service.dart';


class AuthRemoteDataSource {
  final ApiService apiService;

  AuthRemoteDataSource(this.apiService);

  /// Login
  Future<LoginResponseModel> login({required LoginRequestModel loginRequest}) async {
    final response = await apiService.post<Map<String, dynamic>>(
      endPoint: ApiConstants.login,
      data: loginRequest
    );

    return LoginResponseModel.fromJson(response.data!);
  }
}
