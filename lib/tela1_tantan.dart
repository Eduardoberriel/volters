import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/visao_usuario.dart';
import 'package:volters/locale_keys.g.dart';

class Tela1Tandan extends StatelessWidget {
  const Tela1Tandan({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __) {
      VisaoUsuario el = Provider.of<VisaoUsuario>(context, listen: false);
      return Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text(LocaleKeys.tandan).tr(),


            ],
          )

        ),
      );
    });
  }
}
