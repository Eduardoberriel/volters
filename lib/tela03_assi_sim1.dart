import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';

class Tela03AssiSim1 extends StatelessWidget {
  const Tela03AssiSim1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __)
    {
      return Scaffold(
        appBar: AppBar(title: const Text("Tela03AssiSim1")),
        body: const Center(child: Text("Tela03AssiSim1")),
      );
    });
  }
}
