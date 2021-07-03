import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  late double _deviceHeight;
  late double _deviceWidth;

   GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  _LoginPageState(){
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {

    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;



    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Align(
        child:_loginPageUI(),
      ),
    );
  }

  Widget _loginPageUI(){
    return Container(
      height: _deviceHeight * 0.60,
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [

          _headingWidget(),
          _inputField(),
          _loginButton(),
          _registerButton(),

        ],
      ),
    );
  }

  Widget _headingWidget(){
    return Container(
      height: _deviceHeight * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Welcome Back!', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),),
          Text('Please login to your account'),
        ],
      ),
    );
  }

  Widget _inputField(){
    return  Container(
      height: _deviceHeight * 0.16,
      child: Form(
        key: _formKey,
        onChanged: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _emailTextField(),
            _paswordTextField(),

          ],
        ),
      ),
    );
  }

  Widget _emailTextField(){
    return TextFormField(
      autocorrect: false,
      style: TextStyle(color: Colors.white),
      validator: (_input){},
      onSaved: (_input){},
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Email",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _paswordTextField(){
    return TextFormField(
      autocorrect: false,
      obscureText: true,
      style: TextStyle(color: Colors.white),
      validator: (_input){},
      onSaved: (_input){},
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Password",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _loginButton(){
    return Container(
      height: _deviceHeight * 0.06,
      width: _deviceHeight,
      child: MaterialButton(
        onPressed: (){},
        color: Colors.blue,
        child: Text("LOGIN", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),),
      ),
    );
  }

  Widget _registerButton(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Text(
          "REGISTER",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold, color: Colors.white,
          ),
        ),
      ),
    );
  }
}
