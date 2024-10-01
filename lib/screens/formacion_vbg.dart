import 'package:flutter/material.dart';

class FormacionVbg extends StatelessWidget {
  const FormacionVbg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Imagen antes del texto (puedes cambiar la URL o usar assets)
              Image.asset(
                  'assets/images/Mujer fondo morado.jpg',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              const SizedBox(height: 20),
              const Text(
                'Como parte de la estrategia de prevención, el diplomado tiene como propósito el reconocimiento y la caracterización de los tipos de violencias basadas en género, así como la identificación de signos, síntomas y posibles consecuencias que afectan a las que las han evidenciado.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Duración: 80 horas\nMetodología: Virtual | Autogestionable',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Acción al presionar el botón
                },
                icon: const Icon(Icons.touch_app),
                label: const Text('Inscríbete aquí'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.orange, // Color del texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FormacionVbg(),
  ));
}
