import 'package:flutter/material.dart';

class Etapa1page extends StatelessWidget {
  const Etapa1page({super.key});

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
                'Proceso de atención y acompañamiento psicojurídico:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              SizedBox(height: 16),
              Text(
                'ETAPA 1: DETECCIÓN',
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
                    Text(
                      'Si se trata de una emergencia debes informar a:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CheckboxListTile(
                      title: Text('Coordinación de servicio de seguridad de vigilancia del Politécnico Colombiano Jaime Isaza Cadavid.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Área de emergencias POLI - Brigada.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Activar área protegida EMI (2024).\nTeléfonos: (604)4441330 - (604)6044332.\nCódigo 1-502299. NIT del PCJIC: 890980136-6.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Activar línea 123 salud - Agencia Mujer- PONAL'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Nota: Se debe enviar reporte de la información al correo electrónico:',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'atencionaviolenciasbasadasengenero@elpoli.edu.co',
                      style: TextStyle(color: Colors.purple),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Si no se trata de una emergencia debes informar a:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CheckboxListTile(
                      title: Text('COMITÉ DE VBG y VSX, a través del correo electrónico:'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    Text(
                      'atencionaviolenciasbasadasengenero@elpoli.edu.co',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Image.asset(
                  'assets/icons/chica1.png', // Make sure to add this asset to your pubspec.yaml
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}