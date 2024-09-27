import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Violencias Basadas en Género',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 800,
        color: Color(0xFF8E24AA), // Fondo morado
        child: SafeArea(
          child: Column(
            children: [
              _buildAppBar(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildImage(),
                      SizedBox(height: 20),
                      _buildTitle(),
                      SizedBox(height: 20),
                      _buildButtons(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://placeholder.com/wp-content/uploads/2018/10/placeholder.com-logo1.png',
            height: 40,
          ), // Reemplaza con tu logo
          Icon(Icons.menu, color: Colors.white),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text('Imagen de mujer')),
    );
  }

  Widget _buildTitle() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'VIOLENCIAS BASADAS EN GÉNERO',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        _buildButton('INICIO', Icons.home),
        SizedBox(height: 5),
        _buildButton('LÍNEAS DE EMERGENCIA', Icons.phone),
        SizedBox(height: 5),
        _buildButtonWithImage('PROTOCOLO VBG Y VSX.', 'assets/icons/recurso3.png'),
        SizedBox(height: 5),
        _buildButton('ATENCIÓN PSICOJURÍDICA.', Icons.psychology),
        SizedBox(height: 5),
        _buildButton('FORMACIÓN VBG.', Icons.school),
      ],
    );
  }

  Widget _buildButton(String text, IconData icon) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple[800],
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 8),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildButtonWithImage(String text, String imagePath) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple[800],
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 24),
          SizedBox(width: 8),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
