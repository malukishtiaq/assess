import 'dart:io';

import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:stacked/stacked.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:linkedin_login/linkedin_login.dart';
import 'package:flutter/material.dart';
import '../../common/secret_keys.dart';

class SocialLoginViewModel extends BaseViewModel {
  navigateToNextPage() {}
  String userEmail = "";
  String userName = "";

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      UserCredential authResult = await _auth.signInWithCredential(credential);
      User? user = authResult.user;
      if (user != null) {
        assert(!user.isAnonymous);
        assert(await user.getIdToken() != null);
        User? currentUser = _auth.currentUser;
        assert(user.uid == currentUser!.uid);
        userName = user.displayName ?? "";
        userEmail = user.email ?? "";
        //save this in database.
        //call auth service from here
        //pass these params
        //check api in postman
      }
    } catch (e) {
      print(';;');
    }
  }

  Future<void> signInWithLinkedIn(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (final BuildContext context) => LinkedInUserWidget(
          appBar: AppBar(
            title: const Text('OAuth User'),
          ),
          destroySession: logoutUser,
          redirectUrl: redirectUrl,
          clientId: clientId,
          clientSecret: clientSecret,
          projection: const [
            ProjectionParameters.id,
            ProjectionParameters.localizedFirstName,
            ProjectionParameters.localizedLastName,
            ProjectionParameters.firstName,
            ProjectionParameters.lastName,
            ProjectionParameters.profilePicture,
          ],
          scope: const [
            EmailAddressScope(),
            LiteProfileScope(),
          ],
          onError: (final UserFailedAction e) {
            if (kDebugMode) {
              print('Error: ${e.toString()}');
            }
            if (kDebugMode) {
              print('Error: ${e.stackTrace.toString()}');
            }
          },
          onGetUserProfile: (final UserSucceededAction linkedInUser) {
            if (kDebugMode) {
              print(
                'Access token ${linkedInUser.user.token.accessToken}',
              );
              print(
                'Email ${linkedInUser.user.email}',
              );
              //save this in database.
              //call auth service from here
              //pass these params
              //check api in postman
            }
            if (kDebugMode) {
              print('User id: ${linkedInUser.user.userId}');
            }
            Navigator.pop(context);
          },
        ),
        fullscreenDialog: true,
      ),
    );
  }

  btnAppleSignIn() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        clientId: 'de.lunaone.flutter.signinwithappleexample.service',
        redirectUri: Uri.parse(
          'our-web-url',
        ),
      ),
      nonce: 'example-nonce',
      state: 'example-state',
    );
    final signInWithAppleEndpoint = Uri(
      scheme: 'https',
      host: 'flutter-sign-in-with-apple-example.glitch.me',
      path: '/sign_in_with_apple',
      queryParameters: <String, String>{
        'code': credential.authorizationCode,
        if (credential.givenName != null) 'firstName': credential.givenName!,
        if (credential.familyName != null) 'lastName': credential.familyName!,
        'useBundleId':
            !kIsWeb && (Platform.isIOS || Platform.isMacOS) ? 'true' : 'false',
        if (credential.state != null) 'state': credential.state!,
      },
    );
  }
}
