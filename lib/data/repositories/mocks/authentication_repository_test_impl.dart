import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/auth/change_password_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/login/reset_password_request.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_response.dart' as RegResponse;
import 'package:nave_app/data/remote/models/auth/registration/registration_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';
import 'package:nave_app/data/remote/models/auth/send_code_response.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import 'package:nave_app/domain/entities/user.dart' as UserResponse;
import 'package:nave_app/domain/repositories/authentication_repository.dart';

@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryTestImpl implements AuthenticationRepository{
  @override
  Future<LoginResponseWrapper> authenticate({required String email, required String password}) {
    return Future.delayed(Duration.zero, () => LoginResponseWrapper(
        response: LoginResponse(success: true,
            token: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjA0NzM0MDFGNzNERjI0RUU4RTNFNDM0NEI0REJEOTZBIiwidHlwIjoiYXQrand0In0.eyJuYmYiOjE2ODI0NjM4MzgsImV4cCI6MTY4MjQ2NzQzOCwiaXNzIjoiaHR0cDovLzEwLjQwLjEyOS41MzozMDAwMiIsImNsaWVudF9pZCI6Imxld2lzIiwianRpIjoiNkMyMDk2ODZCQTYyOTE3MkM0NEM5RDA5OTQyMTYyNjUiLCJpYXQiOjE2ODI0NjM4MzgsInNjb3BlIjpbImlkZW50aXR5QVBJU2VydmljZSJdfQ.IKeyK07pMeaeFnR5K1PnP3fqvR4len0CoB_-hpOayKtPTv7bjAsdKIeE9MmBXB7V3Snoitf_XMIAFmNTuGneXBseWP4orU2NeQ00oTPqpoX6ZJj8TFRJjSft3P9oTueBt2eLHXD5feXR2NHnpP15y3G6FLX75q5C_lcXPQYzCl603loMwtr4CKSLW69HJpIuPyWTf55dljA3k89ot5Gz22A_piLPzML1KyS0QH5sF2DwIkUr6FOeE_m60ir3QmPT_65POJfC0XNwkJcu-f8YFQL8bMl7qVf8yKC7NcZmO3811SjqkyfuVtdzOww-NxDIcigsj8DLvEQAP89hfKniNQ',
            refreshToken: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjA0NzM0MDFGNzNERjI0RUU4RTNFNDM0NEI0REJEOTZBIiwidHlwIjoiYXQrand0In0.eyJuYmYiOjE2ODI0NjM4MzgsImV4cCI6MTY4MjQ2NzQzOCwiaXNzIjoiaHR0cDovLzEwLjQwLjEyOS41MzozMDAwMiIsImNsaWVudF9pZCI6Imxld2lzIiwianRpIjoiNkMyMDk2ODZCQTYyOTE3MkM0NEM5RDA5OTQyMTYyNjUiLCJpYXQiOjE2ODI0NjM4MzgsInNjb3BlIjpbImlkZW50aXR5QVBJU2VydmljZSJdfQ.IKeyK07pMeaeFnR5K1PnP3fqvR4len0CoB_-hpOayKtPTv7bjAsdKIeE9MmBXB7V3Snoitf_XMIAFmNTuGneXBseWP4orU2NeQ00oTPqpoX6ZJj8TFRJjSft3P9oTueBt2eLHXD5feXR2NHnpP15y3G6FLX75q5C_lcXPQYzCl603loMwtr4CKSLW69HJpIuPyWTf55dljA3k89ot5Gz22A_piLPzML1KyS0QH5sF2DwIkUr6FOeE_m60ir3QmPT_65POJfC0XNwkJcu-f8YFQL8bMl7qVf8yKC7NcZmO3811SjqkyfuVtdzOww-NxDIcigsj8DLvEQAP89hfKniNQ',
          user: User(
              name: 'Lewis Msasa',
              id: '1234',
              username: 'lmsasajnr@gmail.com',

          )
        )

    ) );
  }

  @override
  Future<GeneralResponse> forgotPassword(String email) {
    return Future.delayed(Duration.zero, () => GeneralResponse(
      success: true,
      message: "Check for the code in your email"
    ));
  }

  @override
  Future<UserResponse.User> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<bool> isAuthenticated() {
    // TODO: implement isAuthenticated
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    return Future.delayed(Duration.zero);
  }

  @override
  Future<RegistrationResponseWrapper> register({required String fullName, required String email, required String phoneNumber, required String password}) {
    return Future.delayed(Duration.zero, () => RegistrationResponseWrapper(
        response: RegResponse.RegistrationResponse(success: true,
            token: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjA0NzM0MDFGNzNERjI0RUU4RTNFNDM0NEI0REJEOTZBIiwidHlwIjoiYXQrand0In0.eyJuYmYiOjE2ODI0NjM4MzgsImV4cCI6MTY4MjQ2NzQzOCwiaXNzIjoiaHR0cDovLzEwLjQwLjEyOS41MzozMDAwMiIsImNsaWVudF9pZCI6Imxld2lzIiwianRpIjoiNkMyMDk2ODZCQTYyOTE3MkM0NEM5RDA5OTQyMTYyNjUiLCJpYXQiOjE2ODI0NjM4MzgsInNjb3BlIjpbImlkZW50aXR5QVBJU2VydmljZSJdfQ.IKeyK07pMeaeFnR5K1PnP3fqvR4len0CoB_-hpOayKtPTv7bjAsdKIeE9MmBXB7V3Snoitf_XMIAFmNTuGneXBseWP4orU2NeQ00oTPqpoX6ZJj8TFRJjSft3P9oTueBt2eLHXD5feXR2NHnpP15y3G6FLX75q5C_lcXPQYzCl603loMwtr4CKSLW69HJpIuPyWTf55dljA3k89ot5Gz22A_piLPzML1KyS0QH5sF2DwIkUr6FOeE_m60ir3QmPT_65POJfC0XNwkJcu-f8YFQL8bMl7qVf8yKC7NcZmO3811SjqkyfuVtdzOww-NxDIcigsj8DLvEQAP89hfKniNQ',
            refreshToken: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjA0NzM0MDFGNzNERjI0RUU4RTNFNDM0NEI0REJEOTZBIiwidHlwIjoiYXQrand0In0.eyJuYmYiOjE2ODI0NjM4MzgsImV4cCI6MTY4MjQ2NzQzOCwiaXNzIjoiaHR0cDovLzEwLjQwLjEyOS41MzozMDAwMiIsImNsaWVudF9pZCI6Imxld2lzIiwianRpIjoiNkMyMDk2ODZCQTYyOTE3MkM0NEM5RDA5OTQyMTYyNjUiLCJpYXQiOjE2ODI0NjM4MzgsInNjb3BlIjpbImlkZW50aXR5QVBJU2VydmljZSJdfQ.IKeyK07pMeaeFnR5K1PnP3fqvR4len0CoB_-hpOayKtPTv7bjAsdKIeE9MmBXB7V3Snoitf_XMIAFmNTuGneXBseWP4orU2NeQ00oTPqpoX6ZJj8TFRJjSft3P9oTueBt2eLHXD5feXR2NHnpP15y3G6FLX75q5C_lcXPQYzCl603loMwtr4CKSLW69HJpIuPyWTf55dljA3k89ot5Gz22A_piLPzML1KyS0QH5sF2DwIkUr6FOeE_m60ir3QmPT_65POJfC0XNwkJcu-f8YFQL8bMl7qVf8yKC7NcZmO3811SjqkyfuVtdzOww-NxDIcigsj8DLvEQAP89hfKniNQ',
            user: RegResponse.User(
              name: 'Lewis Msasa',
              id: '1234',
              username: 'lmsasajnr@gmail.com',

            )
        )

    ) );
  }

  @override
  Future<SendCodeResponse> verifyCode(SendCodeRequest request) {
    return Future.delayed(Duration.zero, () => SendCodeResponse(
       success: true,
       message: "Code verified"
    ));
  }

  @override
  Future<GeneralResponse> sendCodeToEmail(String email) {
   return Future.delayed(Duration.zero,() => GeneralResponse(
      success: true,
      message: "Email sent"
   ));
  }

  @override
  Future<LoginResponseWrapper> socialSignin({required String email, required phoneNumber, required fullName, required bool emailVerified, required String token, required String photo}) {
    return Future.delayed(Duration.zero, () => LoginResponseWrapper(
        response: LoginResponse(success: true,
            token: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjA0NzM0MDFGNzNERjI0RUU4RTNFNDM0NEI0REJEOTZBIiwidHlwIjoiYXQrand0In0.eyJuYmYiOjE2ODI0NjM4MzgsImV4cCI6MTY4MjQ2NzQzOCwiaXNzIjoiaHR0cDovLzEwLjQwLjEyOS41MzozMDAwMiIsImNsaWVudF9pZCI6Imxld2lzIiwianRpIjoiNkMyMDk2ODZCQTYyOTE3MkM0NEM5RDA5OTQyMTYyNjUiLCJpYXQiOjE2ODI0NjM4MzgsInNjb3BlIjpbImlkZW50aXR5QVBJU2VydmljZSJdfQ.IKeyK07pMeaeFnR5K1PnP3fqvR4len0CoB_-hpOayKtPTv7bjAsdKIeE9MmBXB7V3Snoitf_XMIAFmNTuGneXBseWP4orU2NeQ00oTPqpoX6ZJj8TFRJjSft3P9oTueBt2eLHXD5feXR2NHnpP15y3G6FLX75q5C_lcXPQYzCl603loMwtr4CKSLW69HJpIuPyWTf55dljA3k89ot5Gz22A_piLPzML1KyS0QH5sF2DwIkUr6FOeE_m60ir3QmPT_65POJfC0XNwkJcu-f8YFQL8bMl7qVf8yKC7NcZmO3811SjqkyfuVtdzOww-NxDIcigsj8DLvEQAP89hfKniNQ',
            refreshToken: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjA0NzM0MDFGNzNERjI0RUU4RTNFNDM0NEI0REJEOTZBIiwidHlwIjoiYXQrand0In0.eyJuYmYiOjE2ODI0NjM4MzgsImV4cCI6MTY4MjQ2NzQzOCwiaXNzIjoiaHR0cDovLzEwLjQwLjEyOS41MzozMDAwMiIsImNsaWVudF9pZCI6Imxld2lzIiwianRpIjoiNkMyMDk2ODZCQTYyOTE3MkM0NEM5RDA5OTQyMTYyNjUiLCJpYXQiOjE2ODI0NjM4MzgsInNjb3BlIjpbImlkZW50aXR5QVBJU2VydmljZSJdfQ.IKeyK07pMeaeFnR5K1PnP3fqvR4len0CoB_-hpOayKtPTv7bjAsdKIeE9MmBXB7V3Snoitf_XMIAFmNTuGneXBseWP4orU2NeQ00oTPqpoX6ZJj8TFRJjSft3P9oTueBt2eLHXD5feXR2NHnpP15y3G6FLX75q5C_lcXPQYzCl603loMwtr4CKSLW69HJpIuPyWTf55dljA3k89ot5Gz22A_piLPzML1KyS0QH5sF2DwIkUr6FOeE_m60ir3QmPT_65POJfC0XNwkJcu-f8YFQL8bMl7qVf8yKC7NcZmO3811SjqkyfuVtdzOww-NxDIcigsj8DLvEQAP89hfKniNQ',
            user: User(
              name: 'Lewis Msasa',
              id: '1234',
              username: 'lmsasajnr@gmail.com',

            )
        )

    ) );
  }

  @override
  Future<LoginResponseWrapper> resetPassword(ResetPasswordRequest request) {
    return Future.delayed(Duration.zero, () => LoginResponseWrapper(
        response: LoginResponse(success: true,
            token: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjA0NzM0MDFGNzNERjI0RUU4RTNFNDM0NEI0REJEOTZBIiwidHlwIjoiYXQrand0In0.eyJuYmYiOjE2ODI0NjM4MzgsImV4cCI6MTY4MjQ2NzQzOCwiaXNzIjoiaHR0cDovLzEwLjQwLjEyOS41MzozMDAwMiIsImNsaWVudF9pZCI6Imxld2lzIiwianRpIjoiNkMyMDk2ODZCQTYyOTE3MkM0NEM5RDA5OTQyMTYyNjUiLCJpYXQiOjE2ODI0NjM4MzgsInNjb3BlIjpbImlkZW50aXR5QVBJU2VydmljZSJdfQ.IKeyK07pMeaeFnR5K1PnP3fqvR4len0CoB_-hpOayKtPTv7bjAsdKIeE9MmBXB7V3Snoitf_XMIAFmNTuGneXBseWP4orU2NeQ00oTPqpoX6ZJj8TFRJjSft3P9oTueBt2eLHXD5feXR2NHnpP15y3G6FLX75q5C_lcXPQYzCl603loMwtr4CKSLW69HJpIuPyWTf55dljA3k89ot5Gz22A_piLPzML1KyS0QH5sF2DwIkUr6FOeE_m60ir3QmPT_65POJfC0XNwkJcu-f8YFQL8bMl7qVf8yKC7NcZmO3811SjqkyfuVtdzOww-NxDIcigsj8DLvEQAP89hfKniNQ',
            refreshToken: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjA0NzM0MDFGNzNERjI0RUU4RTNFNDM0NEI0REJEOTZBIiwidHlwIjoiYXQrand0In0.eyJuYmYiOjE2ODI0NjM4MzgsImV4cCI6MTY4MjQ2NzQzOCwiaXNzIjoiaHR0cDovLzEwLjQwLjEyOS41MzozMDAwMiIsImNsaWVudF9pZCI6Imxld2lzIiwianRpIjoiNkMyMDk2ODZCQTYyOTE3MkM0NEM5RDA5OTQyMTYyNjUiLCJpYXQiOjE2ODI0NjM4MzgsInNjb3BlIjpbImlkZW50aXR5QVBJU2VydmljZSJdfQ.IKeyK07pMeaeFnR5K1PnP3fqvR4len0CoB_-hpOayKtPTv7bjAsdKIeE9MmBXB7V3Snoitf_XMIAFmNTuGneXBseWP4orU2NeQ00oTPqpoX6ZJj8TFRJjSft3P9oTueBt2eLHXD5feXR2NHnpP15y3G6FLX75q5C_lcXPQYzCl603loMwtr4CKSLW69HJpIuPyWTf55dljA3k89ot5Gz22A_piLPzML1KyS0QH5sF2DwIkUr6FOeE_m60ir3QmPT_65POJfC0XNwkJcu-f8YFQL8bMl7qVf8yKC7NcZmO3811SjqkyfuVtdzOww-NxDIcigsj8DLvEQAP89hfKniNQ',
            user: User(
              name: 'Lewis Msasa',
              id: '1234',
              username: 'lmsasajnr@gmail.com',

            )
        )

    ) );
  }

  @override
  Future<GeneralResponse> changePassword(ChangePasswordRequest request) {
    return Future.delayed(Duration.zero,() => GeneralResponse(
        success: true,
        message: "Password Successfully changed"
    ));
  }

}