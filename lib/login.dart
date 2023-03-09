import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isValid = false;

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim()
    );
    if(_emailController.text!='')
    {
      if(_passwordController.text!=''){
        Navigator.pushNamed(context, '/HomePage');
      }
    }
  }

  @override

  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xFFFFFF),
              const Color(0xFFFFFF),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/bulb.gif'),
                height: 100.0,
                width: 200.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(right: 35,left: 35),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'E mail',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(right: 35,left: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 50,
                      width: 200,
                      child: TextButton(
                        child: Text("Forgot Password"),
                        onPressed: () {
                          Navigator.pushNamed(context, '/forgotpassword');
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          login(

                          );
                          Navigator.pushNamed(context, '/nav');
                          String email = _emailController.text;
                          String password = _passwordController.text;
                        },
                        child: Text('LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),

                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}