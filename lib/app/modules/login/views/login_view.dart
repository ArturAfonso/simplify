import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:simplify/app/data/components/customTextField.dart';
import 'package:simplify/app/data/global/constants.dart';
import 'package:simplify/app/routes/app_pages.dart';
import 'package:simplify/app/theme/theme.dart';
import 'package:validatorless/validatorless.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  //widgets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: Get.size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //logotipo
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(
                    child: Image.asset(
                      "assets/logos/LogoTrello.png",
                      width: Get.size.width / 3,
                    ),
                  ),
                )),
                // Login formulario
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(46))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //Text emaill
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "E-mail",
                          style: TextStyle(
                              color: Color.fromARGB(255, 10, 8, 38),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //email customfield
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: CustomTextField(
                          validator: Validatorless.multiple([
                            Validatorless.required("E-mail Obrigatório"),
                            Validatorless.email("E-mail Inválido"),
                          ]),
                          customTextController: controller.emailController,
                          label: Text("usuario@gmail.com"),
                        ),
                      ),
                      //text senha
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Senha",
                          style: TextStyle(
                              color: Color.fromARGB(255, 10, 8, 38),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //Senha customfield
                      CustomTextField(
                        validator: Validatorless.required("Senha obrigatória"),
                        customTextController: controller.passwordController,
                        //icon: Icon(Icons.lock),
                        label: Text("Senha"),
                        isObscure: true,
                      ),

                      //ESQUECEU A SENHA
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Esqueceu a senha?",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),

                      //     BOTAO  ENTRAR
                      customButtom(),

                      //         DIVIDER
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, top: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text("Ou"),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //    BOTAO CRIAR CONTA

                      SizedBox(
                        height: 50,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/logos/google.jpg"),
                                Text(
                                  "Continuar com o google".toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class customButtom extends StatelessWidget {
  const customButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 120,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "continuar".toUpperCase(),
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ));
  }
}
