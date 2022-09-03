import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool Check = false;
  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email",
                style: TextStyle(
                    fontSize: 16, color: Colors.grey.withOpacity(0.6)),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: Email,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter your email?',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: password,
                decoration: const InputDecoration(
                  icon: Icon(Icons.key),
                  hintText: 'Enter your email?',
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CheckboxListTile(
                    title: Text(
                      "Remember me",
                      textAlign: TextAlign.left,
                    ),
                    value: Check,
                    activeColor: Colors.pink,
                    onChanged: (val) {
                      setState(() {
                        Check = val!;
                      });
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.height,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                  ),
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget password?",
                  style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(15),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.3))),
                    child: Text("OR"),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadiusDirectional.circular(50)),
                    child: Icon(
                      Icons.g_mobiledata,
                      size: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadiusDirectional.circular(50)),
                    child: Icon(
                      Icons.facebook_outlined,
                      size: 50,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadiusDirectional.circular(50)),
                    child: Icon(
                      Icons.link_outlined,
                      size: 50,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
