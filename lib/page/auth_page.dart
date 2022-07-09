import 'package:cv_io/page/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cv_io/utils/user_preferences.dart';
import 'package:cv_io/user/user.dart';
import 'package:cv_io/widget/profile_widget.dart';
import 'package:cv_io/widget/text_field_widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPage createState() => _AuthPage();
}

enum FormType {
  login,
  register;
}

class _AuthPage extends State<AuthPage> {
  final formKey = GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = "";
  String _password = "";
  User user = UserPreferences.myUser;

  bool validateAndSave() {
    if(_email == '123' && _password == '123'){
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Home(user: user)));
    }
    final form = formKey.currentState;
    form?.save();


    if(form?.validate() ?? false){
      form?.save();
      return true;
    }
    else{
      return false;
    }
  }

  void moveToRegister() {
    formKey.currentState?.reset();

    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState?.reset();

    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CV.io'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(key: formKey, child: Column(children: createInputs() + createButtons())),
        ));
  }

  List<Widget> createInputs() {
    return [
      Padding(padding: EdgeInsets.only(top: 50)),
      ProfileWidget(imagePath: 'assets/innopolis.png', onClicked: () {}),
      Padding(padding: EdgeInsets.only(top: 50)),
      new TextFormField(
        decoration: InputDecoration(labelText: 'Email'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Email is required';
          }
          return null;
        },
        onSaved: (value){
          _email = value!;
        },
      ),
      Padding(padding: EdgeInsets.only(top: 50)),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Password'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Password is required';
          }
          return null;
        },
        onSaved: (value){
          _password = value!;
        },
      ),
      Padding(padding: EdgeInsets.only(top: 50)),
    ];
  }

  List<Widget> createButtons(){
    if(_formType == FormType.login) {
      return [
        Padding(padding: EdgeInsets.only(top: 50)),
        RaisedButton(
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: validateAndSave,
        ),
        FlatButton(
          child: Text("Don't have an account?"),
          onPressed: moveToRegister,
        )

      ];
    }
    else{
      return[
        Padding(padding: EdgeInsets.only(top: 50)),
        RaisedButton(
          child: Text(
            "Register",
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: validateAndSave,
        ),
        FlatButton(
          child: Text("Already have an account?"),
          onPressed: moveToLogin,
        )
      ];
    }
  }
}
