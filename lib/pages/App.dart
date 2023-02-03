import 'package:a_app/pages/Register.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  late String _user;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 90.0),
        children: [
          Column(
            children: [
              SizedBox(
                height: 100.0,
                width: 100.0,
                child: Image.asset('assets/images/login.jpg'),
              ),
              const Divider(
                height: 10.0,
              ),
              const Text(
                'Login',
                style: TextStyle(fontSize: 40.0),
              ),
              const Divider(
                height: 30.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'USERNAME',
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onSubmitted: (valor) {
                  _user = valor;
                  print('Usuario: $_user');
                },
              ),
              const Divider(
                height: 20.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'PASSWORD',
                    labelText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onSubmitted: (valor) {
                  _password = valor;
                  print('Password: $_password');
                },
              ),
              const Divider(
                height: 40.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print('Presiono el boton');
                },
                child: const Text(
                  'Iniciar sesion',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
              TextButton(
                child: const Text('Registrarse'),
                onPressed: () {
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (context) => const Register());
                  Navigator.push(context, route);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
