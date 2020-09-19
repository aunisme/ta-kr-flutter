import '../models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthHandler {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel _handlerFirebaseUser(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //User stream
  Stream<UserModel> get user {
    return _auth.authStateChanges().map(_handlerFirebaseUser);
  }

  //Sign in anonymously
  Future signInAnonymous() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Sign in using email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
// perl ecryptfs-utils apt-doc aptitude | synaptic | wajig dpkg-dev gnupg
//   | gnupg2 | gnupg1 powermgmt-base debconf-doc debconf-utils whiptail | dialog
//   libterm-readline-gnu-perl libgtk3-perl libnet-ldap-perl debconf-kde-helper
//   debsig-verify gnupg glibc-doc locales rng-tools gnutls-bin liblinear-tools
//   liblinear-dev libpam-doc ncat ndiff zenmap sensible-utils bzip2 ncompress
//   xz-utils tar-scripts tar-doc
