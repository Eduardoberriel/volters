import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:volters/locale_keys.g.dart';
import 'package:volters/tela03_assi_sim1.dart';
import 'package:volters/tela08_assi_listar.dart';
import 'package:volters/tela_todo.dart';
import 'package:volters/tema.dart';

Widget CardAssinatura(BuildContext context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  LocaleKeys.assinatura,
                  style: TextStyle(
                    color: TemaVolters.cores.primary,
                  )).tr(),
              GestureDetector(
                onTap:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const TelaTodo()));},
                child: const Text(LocaleKeys.saiba_mais).tr(),)
            ],
          ),
          const SizedBox(height: 20),
          const Text(LocaleKeys.venha_assinar).tr(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size(110,40)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela03AssiSim1()));},
                child: const Text(LocaleKeys.simule).tr(),
              ),
              FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size(110,40)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Tela08AssiListar()));},
                child: const Text(LocaleKeys.minhas_assinaturas,textAlign: TextAlign.center).tr(),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
