import 'package:a_app/pages/App.dart';
import 'package:a_app/screens/onboarding/body_boarding.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  get gender => null;

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
                'Register',
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
                onSubmitted: (value) {},
              ),
              const Divider(
                height: 20.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'LAST NAME',
                    labelText: 'last name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onSubmitted: (value) {},
              ),
              const Divider(
                height: 20.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'FIRST NAME',
                    labelText: 'first name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onSubmitted: (value) {},
              ),
              const Divider(
                height: 20.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'PHONE NUMBER',
                    labelText: 'Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onSubmitted: (value) {},
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
                  onSubmitted: (value) {}),
              const Divider(
                height: 20.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'CONFIRM PASSWORD',
                    labelText: 'confirm password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onSubmitted: (value) {},
              ),
              const Divider(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: DropdownButtonFormField(
                        validator: (value) =>
                            value == "Sexo" ? "campo requerido" : null,
                        value: gender,
                        items:
                            ["Femenino", "Masculino", "Panzer VI Tiger", "Otro"]
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                        onChanged: (Object? value) {},
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Nacimiento',
                        labelText: 'Nacimiento',
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 70.0,
              ),
              TextButton(
                child: const Text('Iniciar sesion'),
                onPressed: () {
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (context) => const App());
                  Navigator.push(context, route);
                },
              ),
              const Divider(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Registrarse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              TextButton(
                child: const Text('Pagina principal'),
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(
                      builder: (context) => const BodyBoarding());
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
