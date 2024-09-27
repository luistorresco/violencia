import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/logo.png', // Reemplaza 'assets/logo.png' con la ruta de tu logo
                height: 40.0,
              ),
              Text('EL POLI 60 AÑOS'),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {}, // Agrega la función del menú aquí
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'), // Reemplaza 'assets/background.jpg' con la ruta de tu imagen de fondo
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView( // Permite el desplazamiento si el contenido es grande
              child: Padding(
                padding: const EdgeInsets.all(5.0), // Añade padding para que el contenido no toque los bordes
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center, // Alinear el contenido al centro
                  children: [
                    SizedBox(height: 5.0), // Espacio al inicio
                    Text(
                      'VIOLENCIAS\nBASADAS\nEN GÉNERO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.08,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Y VIOLENCIA SEXUAL POLITÉCNICO JAIME ISAZA CADAVID',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        color: const Color.fromARGB(255, 255, 2, 2),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    _buildButton(context, Icons.home, 'INICIO', '/inicio'),
                    _buildButton(context, Icons.phone, 'LÍNEAS DE EMERGENCIA', '/emergencia'),
                    _buildButton(context, Icons.check_box, 'PROTOCOLO VBG Y VSX.', '/protocolo'),
                    _buildButton(context, Icons.person, 'ATENCIÓN PSICOJURÍDICA.', '/atencion'),
                    _buildButton(context, Icons.school, 'FORMACIÓN VBG.', '/formacion'),
                    SizedBox(height: 10.0), // Espacio al final
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, IconData icon, String text, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Añade padding vertical
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route); // Agrega la navegación a la ruta correspondiente
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          textStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 16.0),
            Text(text, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
