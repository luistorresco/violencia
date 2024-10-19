import 'package:flutter/material.dart';

class ProtocoloVbgYVsx extends StatelessWidget {
  const ProtocoloVbgYVsx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        '/home': (context) => const ContentPage(title: 'Inicio'),
        '/emergency': (context) => const ContentPage(title: 'Líneas de Emergencia'),
        '/protocol': (context) => const ContentPage(title: 'Protocolo VBG y VSX'),
        '/psycho_legal': (context) => const ContentPage(title: 'Atención Psicojurídica'),
        '/training': (context) => const ContentPage(title: 'Formación VBG'),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(  // Aquí envolvemos todo el contenido en un scroll view
          child: Column(
            children: [
              _buildContent(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
                'assets/images/pretty-serious.jpg',
                height: 155,
                fit: BoxFit.cover,
              ),
          const SizedBox(height: 16),
          const Text(
            'VIOLENCIAS\nBASADAS\nEN GÉNERO',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8E24AA),
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            'Y VIOLENCIA SEXUAL POLITÉCNICO JAIME ISAZA CADAVID',
            style: TextStyle(fontSize: 16, color: Color(0xFF8E24AA)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          _buildNavButton(context, 'INICIO', Icons.home, '/home'),
          _buildNavButton(context, 'LÍNEAS DE EMERGENCIA', Icons.phone, '/emergency'),
          _buildNavButton(context, 'PROTOCOLO VBG Y VSX.', Icons.description, '/protocol'),
          _buildNavButton(context, 'ATENCIÓN PSICOJURÍDICA.', Icons.psychology, '/psycho_legal'),
          _buildNavButton(context, 'FORMACIÓN VBG.', Icons.school, '/training'),
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String text, IconData icon, String route) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ElevatedButton.icon(
        icon: Icon(icon, color: Colors.white),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF8E24AA),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: const TextStyle(fontSize: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}

class ContentPage extends StatelessWidget {
  final String title;

  const ContentPage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFF8E24AA),
      ),
      body: Center(
        child: Text('Contenido de la página $title'),
      ),
    );
  }
}
