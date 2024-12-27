import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class SignupRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //signup

  Future<void> signup(String email, String password, String username) async {
    //check user is exits or not

   
      try {
      UserCredential user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

          if(user.user != null){
            user.user!.updateDisplayName(username);
          }
          if(user != null){
            _firestore.collection('users').doc(user.user!.uid).set({
              'email': email,
              'username': username,
              'uid': user.user!.uid,
            });
            print("User is created");
          }

    } catch (error) {
      print("Error is ${error.toString()}");
    }
    }
  }
  
