import 'package:flutter/material.dart';

class PageForth extends StatefulWidget {
  const PageForth({Key? key}) : super(key: key);

  @override
  _PageForthState createState() => _PageForthState();
}

class _PageForthState extends State<PageForth> {
  // final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isPasshide = true;
  String emailError = '';
  String passwordError = '';

  @override
  void initState() {
    _emailController.addListener(() {
      print(_emailController.text);
      print(_passwordController.text);
    });
    super.initState();
  }

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topCenter,
                colors: [Colors.yellow, Colors.white, Colors.tealAccent])),
        padding: EdgeInsets.all(40),
        child: Form(
          // key: _formKey,
          child: ListView(
            children: [
              Column(
                children: [
                  FlutterLogo(
                    size: 100,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    // onChanged: (String val) {
                    //   email = val;
                    // },
                    // validator: (String? e) {
                    //   print(e);
                    //   if (e!.isEmpty) {
                    //     return "find cant be empty";
                    //   }
                    //   if (!isEmail(e)) {
                    //     return "Enter valid email";
                    //   }
                    //   return null;
                    // },
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 30),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "$emailError",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                isPasshide = !isPasshide;
                              },
                            );
                          },
                          child: Icon(
                            isPasshide
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                        labelText: "Password",
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),

                    // onChanged: (String val) {
                    //   password = val;
                    // },
                    // validator: (pass) {
                    //   if (pass!.isEmpty) {
                    //     return "find cant be emoty";
                    //   }
                    //   if (!isPassword(pass)) {
                    //     return "Enter valid password";
                    //   }
                    //   return null;
                    // },
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 30),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "$passwordError",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: submit,
                    child: Text(
                      "Login",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://media.istockphoto.com/photos/headshot-portrait-of-smiling-ethnic-businessman-in-office-picture-id1300512215?b=1&k=20&m=1300512215&s=170667a&w=0&h=LsZL_-vvAHB2A2sNLHu9Vpoib_3aLLkRamveVW3AGeQ='),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                      ),
                    ),
                    Text(
                      "Raj Madhani",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("rajmadhani60@gmail.com"),
                  ],
                ),
              ),

              height: 180,
              width: double.infinity,
              //color: Colors.indigoAccent,
              decoration: BoxDecoration(color: Colors.blueGrey
                  // image: DecorationImage(
                  //     image: NetworkImage(
                  //         'https://cdn-prod.medicalnewstoday.com/content/images/articles/325/325466/man-walking-dog.jpg'),
                  //     fit: BoxFit.cover),
                  ),
            ),
            Container(
              color: Colors.white,
              height: 70,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  // void submit() {
  //   if (_formKey.currentState!.validate()) {
  //     print(_emailController.text);
  //     print(_passwordController.text);
  //   }
  // }
  void submit() {
    if (validate()) {
      print(_emailController.text);
    }
    if (validates()) {
      print(_passwordController.text);
    }
  }

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    return RegExp(p).hasMatch(em);
  }

  bool validate() {
    if (_emailController.text == '') {
      setState(() {
        emailError = "Empty email";
      });
      return false;
    }
    if (!isEmail(_emailController.text)) {
      setState(
        () {
          emailError = "Enter Valid Email";
        },
      );
      return false;
    }
    if (isEmail(_emailController.text)) {
      setState(() {
        emailError = "";
      });
    }
    return true;
  }

  bool isPassword(String pass) {
    String q = r'^[0-9]*[1-9][0-9]*$';

    return RegExp(q).hasMatch(pass);
  }

  bool validates() {
    if (_passwordController.text == '') {
      setState(
        () {
          passwordError = "Empty password";
        },
      );
      return false;
    }
    if (!isPassword(_passwordController.text)) {
      setState(
        () {
          passwordError = "Enter Valid Password";
        },
      );
      return false;
    }
    if (isPassword(_passwordController.text)) {
      setState(() {
        passwordError = "";
      });
    }
    return true;
  }
}
