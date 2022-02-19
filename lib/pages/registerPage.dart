import 'package:flutter/material.dart';
import 'package:i_s_reader/main.dart';
import 'package:i_s_reader/pages/login.dart';
import 'package:i_s_reader/pages/setting_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text("Registration Page", style: TextStyle(
          color: Colors.white
        ),),
      )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40,),
              Text("Create an Account",
                  style:TextStyle(color: Colors.blue,
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              SizedBox(height: 25,),

              TextField(decoration: InputDecoration(
                hintText: "Full Name",
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
                suffixIcon: Icon(Icons.person),
              ),keyboardType: TextInputType.name,
              ),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(
                hintText: "Account Email",
                labelText: "email",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
                suffixIcon: Icon(Icons.mail),
              ),keyboardType: TextInputType.emailAddress,

              ),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  suffixIcon: IconButton(
                      icon: Icon(_secureText ? Icons.remove_red_eye : Icons.security),
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });}

                  )

              ),keyboardType: TextInputType.emailAddress,
                obscureText: _secureText,
              ),

              SizedBox(height: 20,),

              TextField(decoration: InputDecoration(
                  hintText: "Confirm Password",
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  suffixIcon: IconButton(
                      icon: Icon(_secureText ? Icons.remove_red_eye : Icons.security),
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });}

                  )

              ),keyboardType: TextInputType.emailAddress,
                obscureText: _secureText,
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.2,),


              ButtonTheme(minWidth: MediaQuery.of(context).size.width * 1,
                height: 45,
                child: MaterialButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                  child: Text("Register",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                  color:Color(SettingsPage.backgroundColor),
                  padding: EdgeInsets.all(10),
                  shape:RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a user?",style: TextStyle(color: Colors.black,
                        fontStyle: FontStyle.italic, fontWeight: FontWeight.normal,
                        fontSize: 15)),

                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    }, child: Text("Login",style: TextStyle(
                        color: Colors.blue, fontStyle: FontStyle.italic,fontSize: 15
                    ),))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
