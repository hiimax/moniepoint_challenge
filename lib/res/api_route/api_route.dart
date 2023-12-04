class ApiRoutes {
  ApiRoutes._();

  static const baseUrl = 'https://app.moniepoint.com.ng/api/';

  ///authentication

  static const login = 'login';
  static const register = 'register';
  static const verifyEmail = 'verify-email';
  static const resendVerifyEmail = 'resend-verification-email';
  static const verifyPin = 'pin/verify';
  static const updatePin = 'pin/update';
  static const logout = 'logout';

  ///profile

  static const getUserProfileDetails = 'profile';
  static const updateBioData = 'profile/update';

  ///kinks

  static const allKinks = 'kinks?tags=';
  static const getKiink = 'kinks/';
  static const deleteKiink = 'kinks/';
}
