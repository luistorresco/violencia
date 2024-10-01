import 'package:flutter/material.dart';

class Etapa5page extends StatelessWidget {
  const Etapa5page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ETAPA 5: REMISIÓN',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckboxListTile(
                      title: Text('Línea 123 Agencia Mujer Medellín.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Atención Psicojurídica a mujeres en Territorio (APJ) de la Secretaría de las Mujeres de Medellín.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Gerencia de diversidades sexuales e identidades de género.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Defensoría del Pueblo'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Mecanismo de Defensa Técnica de la Secretaría de las Mujeres de Medellín.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Para mujeres residentes en otros municipios de Antioquia:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CheckboxListTile(
                      title: Text('Línea 123 Mujer Antioquia'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Enlaces de género en los diferentes entes territoriales'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/chica5.png', // Make sure to add this asset to your pubspec.yaml
                      height: 150,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Text(
                        '??',
                        style: TextStyle(fontSize: 40, color: Colors.orange),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Text(
                        '?',
                        style: TextStyle(fontSize: 30, color: Colors.yellow),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}