import 'package:flutter/material.dart';
import 'package:violencias/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class LineasDeLlamadas extends StatefulWidget {
  const LineasDeLlamadas({super.key});

  @override
  State<LineasDeLlamadas> createState() => _LineasDeLlamadasState();
}

class _LineasDeLlamadasState extends State<LineasDeLlamadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/Mujer fondo morado.jpg',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 4),
                const Text(
                  'Ante una emergencia',
                  textAlign: TextAlign.center,
                  style: AppStyles.titleStyle,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Si acabas de ser víctima de alguna forma de violencia basada en género o violencia sexual, comunícate inmediatamente con:',
                  textAlign: TextAlign.center,
                  style: AppStyles.normalTextStyle,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Líneas nacionales',
                  textAlign: TextAlign.center,
                  style: AppStyles.titleStyle,
                ),
                const Text(
                  'Atención en emergencia a víctimas de Violencias basadas en Género y violencias sexuales:',
                  textAlign: TextAlign.center,
                  style: AppStyles.normalTextStyle,
                ),
                const SizedBox(height: 8),
                _buildEmergencyButton('Llamar al 123', 'tel:123'),
                const SizedBox(height: 8),
                _buildEmergencyButton('Llamar al 155', 'tel:155'),
                const SizedBox(height: 8),
                const Text(
                  'Línea amiga saludable',
                  style: AppStyles.titleStyle,
                ),
                const Text(
                  'Atención en emergencia en salud mental:',
                  style: AppStyles.normalTextStyle,
                ),
                const SizedBox(height: 8),
                _buildEmergencyButton('Llamar al 444 44 48', 'tel:44444448'),
                const SizedBox(height: 8),
                _buildWhatsAppButton('300 723 1123'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmergencyButton(String text, String uri) {
    return ElevatedButton(
      child: Text(text),
      style: AppStyles.emergencyButtonStyle,
      onPressed: () async {
        if (await canLaunch(uri)) {
          await launch(uri);
        } else {
          throw 'Could not launch $uri';
        }
      },
    );
  }

  Widget _buildWhatsAppButton(String number) {
    return ElevatedButton(
      child: Text('Enviar WhatsApp a $number'),
      style: AppStyles.emergencyButtonStyle,
      onPressed: () async {
        final uri = 'https://wa.me/$number';
        if (await canLaunch(uri)) {
          await launch(uri);
        } else {
          throw 'Could not launch $uri';
        }
      },
    );
  }
}
