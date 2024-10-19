import 'package:flutter/material.dart';

class LineasDeLlamadas extends StatefulWidget {
  const LineasDeLlamadas({super.key});

  @override
  State<LineasDeLlamadas> createState() => _LineasDeLlamadasState();
}

class _LineasDeLlamadasState extends State<LineasDeLlamadas> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/Mujer fondo morado.jpg',
                height: 155,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 4),
              const Text(
                'Ante una emergencia',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'AmsiPro-Ultra',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8E24AA),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Si acabas de ser víctima de alguna forma de violencia basada en género o violencia sexual, comunícate inmediatamente con:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'AmsiPro-Regular',
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Líneas nacionales',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'AmsiPro-Ultra',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8E24AA),
                ),
              ),
              const Text(
                'Atención en emergencia a víctimas de Violencias basadas en Género y violencias sexuales:',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'AmsiPro-Regular', fontSize: 10),
              ),
              const SizedBox(height: 8),
              _buildEmergencyButton('Llamar al 123', const Color.fromRGBO(255, 190, 26, 1)),
              const SizedBox(height: 8),
              _buildEmergencyButton('Llamar al 155', const Color.fromRGBO(255, 190, 26, 1)),
              const SizedBox(height: 8),
              const Text(
                'Línea amiga saludable',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8E24AA),
                ),
              ),
              const Text(
                'Atención en emergencia en salud mental:',
                style: TextStyle(fontSize: 10),
              ),
              const SizedBox(height: 8),
              _buildEmergencyButton('Llamar al 444 44 48', const Color.fromRGBO(255, 190, 26, 1)),
              const SizedBox(height: 8),
              _buildEmergencyButton('300 723 1123', const Color.fromRGBO(255, 190, 26, 1), icon: Icons.message),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmergencyButton(String text, Color color, {IconData icon = Icons.phone}) {
    return ElevatedButton.icon(
      icon: Icon(icon, color: const Color.fromRGBO(145, 39, 141, 1.0)),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        // Cambiar el color del texto del botón a morado
        foregroundColor: const Color(0xFF8E24AA), // Morado
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        // Implementar la acción de llamada o mensaje aquí
      },
    );
  }
}
