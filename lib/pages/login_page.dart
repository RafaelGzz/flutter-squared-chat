import 'package:flutter/material.dart';
import 'package:squared_chat/widgets/blue_button.dart';
import 'package:squared_chat/widgets/custom_input.dart';
import 'package:squared_chat/widgets/labels.dart';
import 'package:squared_chat/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Logo(
                  title: "R Squared",
                ),
                _Form(),
                Labels(
                  destination: 'register',
                  hint: '¿No tienes una cuenta?',
                  buttonText: 'Crea una ahora',
                ),
                Terminos(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icon(Icons.mail),
            hint: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icon(Icons.lock),
            hint: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          BlueButton(
            text: "Iniciar Sesión",
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
