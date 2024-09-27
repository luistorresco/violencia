import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Líneas de Emergencia',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const EmergencyLinesPage(),
    );
  }
}

class EmergencyLinesPage extends StatelessWidget {
  const EmergencyLinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
            ),
            child: Column(
              children: [
                _buildHeader(),
                _buildContent(),
                _buildBottomNavigation(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0xFF8E24AA),
      padding: const EdgeInsets.all(1),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'LÍNEAS DE\nEMERGENCIA',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'AmsiPro-Ultra',
                color: Colors.white, 
                fontSize: 10, 
                fontWeight: FontWeight.bold),
          ),
          Icon(Icons.menu, color: Colors.white),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/Mujer fondo morado.jpg',
              height: 155, fit: BoxFit.cover),
          const SizedBox(height: 4),
          const Text(
            'Ante una emergencia',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'AmsiPro-Ultra',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8E24AA)),
          ),
          const SizedBox(height: 8),
          const Text(
            'Si acabas de ser víctima de alguna forma de violencia basada en género o violencia sexual, comunícate inmediatamente con:',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'AmsiPro-Regular',
                fontWeight: FontWeight.normal,
                fontSize: 10),
          ),
          const SizedBox(height: 8),
          const Text(
            'Líneas nacionales',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'AmsiPro-Ultra',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8E24AA)),
          ),
          const Text(
            'Atención en emergencia a víctimas de Violencias basadas en Género y violencias sexuales:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'AmsiPro-Regular',
              fontSize: 10),
          ),
          const SizedBox(height: 1),
          _buildEmergencyButton(
              'Llamar al 123', const Color.fromRGBO(255, 190, 26, 1)),
          const SizedBox(height: 1),
          _buildEmergencyButton(
              'Llamar al 155', const Color.fromRGBO(255, 190, 26, 1)),
          const SizedBox(height: 1),
          const Text(
            'Línea amiga saludable',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8E24AA)),
          ),
          const Text(
            'Atención en emergencia en salud mental:',
            style: TextStyle(fontSize: 10),
          ),
          const SizedBox(height: 1),
          _buildEmergencyButton(
              'Llamar al 444 44 48', const Color.fromRGBO(255, 190, 26, 1)),
          const SizedBox(height: 1),
          _buildEmergencyButton(
              '300 723 1123', const Color.fromRGBO(255, 190, 26, 1),
              icon: Icons.message),
        ],
      ),
    );
  }

  Widget _buildEmergencyButton(String text, Color color,
      {IconData icon = Icons.phone}) {
    return ElevatedButton.icon(
      icon: Icon(icon, color: const Color.fromRGBO(145, 39, 141, 1.0)),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: () {
        // Implementar la acción de llamada o mensaje aquí
      },
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      color: const Color.fromRGBO(255, 190, 26, 1),
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(
              Image.asset('assets/icons/Recurso 10.png', height: 20, width: 20),
              'Inicio'),
          _buildNavItem(
              Image.asset('assets/icons/recurso3.png', height: 20, width: 20),
              'Líneas'),
          _buildNavItem(
              Image.asset('assets/icons/Recurso 4.png', height: 20, width: 20),
              'Protocolo'),
          _buildNavItem(
              Image.asset('assets/icons/Recurso 5.png', height: 20, width: 20),
              'Atención'),
          _buildNavItem(
              Image.asset('assets/icons/Recurso 6.png', height: 20, width: 20),
              'Formación'),
        ],
      ),
    );
  }

  Widget _buildNavItem(Widget icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 10)),
      ],
    );
  }
}
