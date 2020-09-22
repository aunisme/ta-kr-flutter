import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kejar_recruitment/models/user.dart';

class FirestoreService {
  final String uid;
  FirestoreService({this.uid});

  //candidates collections
  final CollectionReference candidates =
      FirebaseFirestore.instance.collection('candidates');

  //candidate data from firebse
  UserData _userSnapshot(DocumentSnapshot snap) {
    return UserData(
        uid: uid,
        firstName: snap.data()['firstName'],
        lastName: snap.data()['lastName'],
        nickname: snap.data()['nickname'],
        age: snap.data()['age'],
        phone: snap.data()['phone'],
        email: snap.data()['email']);
  }

  Stream<UserData> get userData {
    return candidates.doc(uid).snapshots().map(_userSnapshot);
  }
}
