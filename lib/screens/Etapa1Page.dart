import 'package:flutter/material.dart';

class Etapa1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ETAPA 1: DETECCIÓN'),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Proceso de atención y acompañamiento psicojurídico:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                  borderRadius: BorderRadius.circular(20),
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
                      title: Text('Activar área protegida EMI (2024).\nTeléfonos: (604)4441330 - (604)6044332.\nCódigo: 502299, NIT del PCJIC: 890980136-6.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text('Activar línea 123 salud - Agencia Mujer- PONAL.'),
                      value: true,
                      onChanged: null,
                      activeColor: Colors.purple,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nota: Se debe enviar reporte de la información al correo electrónico:',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'atencionaviolenciasbasadasengenero@elpoli.edu.co',
                      style: TextStyle(color: Colors.purple),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Si no se trata de una emergencia debes informar a:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CheckboxListTile(
                      title: Text('COMITÉ DE VBG Y VSX, a través del correo electrónico:'),
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
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/woman_question.png', // Reemplaza con tu ruta de imagen real
                  height: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
