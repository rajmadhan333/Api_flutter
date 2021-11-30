import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //  Text(
              //     'Login',
              //   ), const
              FlutterLogo(
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset(4, 4))
                    ]),
                child: TextFormField(
                  onChanged: (String val) {
                    print(val);
                    _email = val;
                  },
                  decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Enter email",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                // decoration: BoxDecoration(color: Colors.blue),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              // TextButton(
              //   onPressed: _submit,
              //   child: const Text("Text Button"),
              // ),
              // IconButton(
              //   onPressed: _submit,
              //   icon: const Icon(
              //     Icons.send,
              //     color: Colors.blue,
              //   ),
              // ),
              SizedBox(),
              ElevatedButton(
                onPressed: _submit,
                child: const Text("Login"),
              ),
              Drawer(
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
                              width: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    print("Email - $_email ${5 + 5}");
  }
}
