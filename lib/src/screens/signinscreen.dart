import 'package:flutter/material.dart';
import '../widgets/showLoading.dart';
import '../models/user.dart';
import '../providers/repository.dart';

class SigninScreen extends StatelessWidget {
  final _repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signin'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            begin:Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.greenAccent,
              Colors.white,
              Colors.greenAccent,
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Test Auction App',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.teal
              ),
            ),
            SizedBox(height: 10.0,),
            InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 80.0,
                child: MaterialButton(
                  onPressed: () async {
                    showLoading(context);
                    UserModel user = await _repository.signInWithGoogle();
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  color: Colors.white,
                  highlightColor: Colors.green,
                  child: Text(
                    'Signin with Google',
                    style: TextStyle(
                      fontSize:MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 50.0,),
          ],
        ),
      ),
    );
  }
}