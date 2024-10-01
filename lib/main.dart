import 'package:flutter/material.dart';
import 'package:violencias/screens/formacion_vbg.dart';
import 'package:violencias/screens/home.dart';
import 'package:violencias/screens/lineas_de_llamada.dart';
import 'package:violencias/screens/solicitud_de_atencion_psicojuridica.dart';
import 'package:violencias/screens/protocolo_vbg_y_vsx.dart';
import 'package:violencias/screens/welcome_screen.dart'; // Importa la vista de bienvenida

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: WelcomeScreen(), // Pantalla de bienvenida inicial
    );
  }
}

// Pantalla de bienvenida
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Navegar a la pantalla principal después de 3 segundos
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainScreen()), // Llama a la pantalla principal
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.png'), // Cambia por tu imagen
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'Bienvenido',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// Pantalla principal
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _paginaActual = 0;

  List<Widget> _paginas = [
    Home(),
    LineasDeLlamadas(),
    ProtocoloVbgYVsx(),
    FormacionVbg(),
    SolicitudDeAtencionPsicojuridica(),
  ];

  List<String> _titulos = [
    'Inicio',
    'Líneas de \nEmergencia',
    'PROTOCOLO \nVBG Y VSX',
    'Formación VBG',
    'SOLICITUD \nDE ATENCIÓN PSICOJURÍDICA',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6A1B9A), // Color morado
        title: Row(
          children: [
            Image.asset('assets/icons/LogoPoliBlanco.png', height: 30), // Icono a la izquierda
            Spacer(),
            Text(
              _titulos[_paginaActual], // Título dinámico
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFCBE1A), // Color de fondo del BottomAppBar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavButton('INICIO', 0, 'assets/icons/Recurso 10.png'),
            _buildNavButton('LÍNEAS DE \nEMERGENCIA', 1, 'assets/icons/recurso3.png'),
            _buildNavButton('PROTOCOLO \nVBG Y VSX', 2, 'assets/icons/Recurso 4.png'),
            _buildNavButton('SOLICITUD DE ATENCIÓN \nPSICOJURÍDICA', 3, 'assets/icons/Recurso 5.png'),
            _buildNavButton('FORMACIÓN \nVBG', 4, 'assets/icons/Recurso 6.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(String label, int index, String iconPath) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(0, 74, 255, 58),
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
        ),
        onPressed: () {
          setState(() {
            _paginaActual = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(iconPath, height: 25, width: 25),
            const SizedBox(height: 1),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 7,
                color: Color.fromARGB(255, 253, 253, 253),
                fontFamily: 'AmsiPro-Ultra',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
