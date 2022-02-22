import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FacebookLogin _facebookLogin = FacebookLogin();
  String? email, password, name;

  void googleSignIn() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;
    // final AuthCredential credential = GoogleAuthProvider.credential(
    //   idToken: googleSignInAuthentication.idToken,
    //   accessToken: googleSignInAuthentication.accessToken,
    // );
  }

  void facebookSignIn() async {
    FacebookLoginResult result = await _facebookLogin.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);
    final accessToken = result.accessToken!.token;
    if (result.status == FacebookLoginStatus.success) {
      // final facebookCredential = FacebookAuthProvider.credential(accessToken);

    }
  }

}
