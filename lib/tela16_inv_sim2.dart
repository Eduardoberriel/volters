import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela16InvSim2 extends StatelessWidget {
  const Tela16InvSim2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela16InvSim2")),
        body: const Center(child: Text("Tela16InvSim2")),
      );
    });
  }
}
