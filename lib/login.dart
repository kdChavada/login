import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordvisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordvisible = true;
  }

  final nameHolder = TextEditingController();

  clearTextInput() {
    nameHolder.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        titleSpacing: -25.0,
        title: Text(
          "Back",
          style: GoogleFonts.lato(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(14.0),
        child: new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Login",
                style: GoogleFonts.doppioOne(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            //image Declaration
            Image(
              image: AssetImage(
                "assets/images/logo.png",
              ),
              width: 260,
              height: 77,
              fit: BoxFit.cover,
            ),
            Divider(
              color: Colors.white,
            ),

            //First Text Field
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    controller: nameHolder,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "abc@gmail.com",
                        labelText: "Email",
                        alignLabelWithHint: false,
                        filled: true),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ),
            ),
            //second Text Field
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: passwordvisible,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "123456123",
                    labelText: "Password",
                    alignLabelWithHint: false,
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordvisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordvisible = !passwordvisible;
                        });
                      },
                    )),
              ),
            ),

            // Forgot Password One Line
            Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 202.0),
                  child: Container(
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.roboto(
                        color: Color(0xff0494f3),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Login Button
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 50),
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.blue)),
                onPressed: () {
                  clearTextInput();
                  print("Login Success full");
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.blue,
                minWidth: 400,
                height: 50,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
