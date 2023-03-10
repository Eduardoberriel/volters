import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/tela2_home.dart';
import 'package:volters/visao_usuario.dart';
import 'package:volters/locale_keys.g.dart';

class Tela1Tandan extends StatelessWidget {
  const Tela1Tandan({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(LocaleKeys.tandan).tr(),
              const SizedBox(height:50),
              FilledButton(
                  onPressed: (){proximaTela(context);},
                  child: const Text(LocaleKeys.tandan_entrar).tr(),
              )

            ],
          )

        ),
      );
    });
  }

  void proximaTela(BuildContext context){
    // aqui usamos pushReplacement para o batao "back" não retornar para essa pagina...
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Tela2Home()),
    );
  }
}
