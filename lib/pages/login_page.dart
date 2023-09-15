import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Logo(title: 'Messenger'),
                const _Form(),
                const Labels(route: 'register', title: 'No tienes cuenta?', subtitle: 'Crea una ahora!'),
                Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: const Text('Terminos y condciones')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            hint: 'Email',
            keyboarType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            hint: 'Password',
            textController: passwordCtrl,
          ),
          CustomButton(
            title: 'Hola',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
