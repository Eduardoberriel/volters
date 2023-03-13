import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volters/tema.dart';
import 'package:volters/visao_usuario.dart';
import 'package:volters/locale_keys.g.dart';

class Tela2Home extends StatelessWidget {
  const Tela2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisaoUsuario>(builder: (context, _, __) {
      VisaoUsuario el = Provider.of<VisaoUsuario>(context, listen: false);
      return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            height: 40,
            child: Ink.image(
              image: const AssetImage("assets/images/logo-volters.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(LocaleKeys.saldo).tr(),
                Text(
                  NumberFormat.simpleCurrency().format(1000),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: TemaVolters.cores.primary),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.account_circle_rounded, size: 45),
              onPressed: () {
              },
            ),
          ],
        ),
        body: const Center(
          child: SizedBox(
            width: 400,
            height: double.infinity,
            child: Center(child:Text("...HAHAHAHA"))
          ),
        ),
      );
    });
  }
}