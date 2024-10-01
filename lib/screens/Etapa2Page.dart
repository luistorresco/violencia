import 'package:flutter/material.dart';

class Etapa2page extends StatelessWidget {
  const Etapa2page({super.key});

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
                'ETAPA 2:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              Text(
                'ATENCIÓN INICIAL',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.purple),
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
                      title: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(text: 'Atención inicial: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Realizada por la psicóloga, el objetivo es apoyar la activación de las rutas.'),
                          ],
                        ),
                      ),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Documentación del caso.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Entrega de medios documentales si se tiene.'),
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
                      'assets/icons/chica2.png', // Make sure to add this asset to your pubspec.yaml
                      height: 150,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(
                        Icons.campaign,
                        size: 50,
                        color: Colors.purple,
                      ),
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