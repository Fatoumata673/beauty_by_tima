import 'package:beauty_by_tima/Acceuil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool Visibilite = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        elevation: 10,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Container(
          color: const Color.fromARGB(255, 204, 128, 154),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Text(
                  'WELCOME',
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
                Text('please enter the details below to continue'),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/afro.jpg'),
                    ),
                  ),
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextFormField(
                  controller: password,
                  obscureText: Visibilite,
                  decoration: InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () => setState(() => Visibilite = !Visibilite),
                        child: Visibilite
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      )),
                ),
                OutlinedButton(
                  onPressed: () {
                    if (email.text.isEmpty || password.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("veillez entrez l'email ou password")));
                    }
                    if (email.text == "tim@gmail.com" &&
                        password.text == "abcd") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Acceuil();
                      }));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("email ou password incorrect")));
                    }
                  },
                  child: Text('Login'),
                  style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(10),
                    backgroundColor: WidgetStateProperty.all(Colors.indigo[50]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
