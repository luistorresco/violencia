import 'package:flutter/material.dart';

class Etapa3page extends StatelessWidget {
  const Etapa3page({super.key});

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
                'ETAPA 3:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              Text(
                'ATENCIÓN PRIORITARIA EN SALUD\nFÍSICA Y MENTAL',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
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
                            TextSpan(text: 'Activación de ruta de salud: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'En caso que la víctima no haya activado esta ruta.'),
                          ],
                        ),
                      ),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(text: 'Atención psicosocial: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Acompañamiento psicosocial y espacios de escucha.'),
                          ],
                        ),
                      ),
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
                      'assets/icons/chica3.png', // Make sure to add this asset to your pubspec.yaml
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