import 'package:flutter/material.dart';

class ProtocoloVbgYVsx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/purple-texture.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(0, 225, 0, 255).withOpacity(0.9),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        'assets/images/Mujer2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'CONOCE EL PROTOCOLO COMPLETO AQUÍ:',
                        style: TextStyle(color: Colors.yellow, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 5),
                    _buildStageButton(context, 'ETAPA 1: DETECCIÓN'),
                    _buildStageButton(context, 'ETAPA 2: ATENCIÓN INICIAL'),
                    _buildStageButton(context, 'ETAPA 3:\nATENCIÓN PRIORITARIA EN SALUD FÍSICA Y MENTAL'),
                    _buildStageButton(context, 'ETAPA 4:\nORIENTACIÓN, ASESORÍA Y ACOMPAÑAMIENTO JURÍDICO'),
                    _buildStageButton(context, 'ETAPA 5: REMISIÓN'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStageButton(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _getPageForStage(text)),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple[800],
          padding: EdgeInsets.symmetric(vertical: 16),
          minimumSize: Size(double.infinity, 50),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontFamily: 'AmsiPro-Ultra',
          ),
        ),
      ),
    );
  }

  Widget _getPageForStage(String stageName) {
    switch (stageName) {
      case 'ETAPA 1: DETECCIÓN':
        return Etapa1Page();
      case 'ETAPA 2: ATENCIÓN INICIAL':
        return Etapa2Page();
      case 'ETAPA 3:\nATENCIÓN PRIORITARIA EN SALUD FÍSICA Y MENTAL':
        return Etapa3Page();
      case 'ETAPA 4:\nORIENTACIÓN, ASESORÍA Y ACOMPAÑAMIENTO JURÍDICO':
        return Etapa4Page();
      case 'ETAPA 5: REMISIÓN':
        return Etapa5Page();
      default:
        return Scaffold(body: Center(child: Text('Página no encontrada')));
    }
  }
}

// Ejemplo de la página de la Etapa 1 con contenido específico
class Etapa1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ETAPA 1: DETECCIÓN')),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/your_background_image.jpg'), // Cambia esto por la ruta de tu imagen
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // Fondo semi-transparente
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Proceso de atención y acompañamiento psicojurídico:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'ETAPA 1: DETECCIÓN',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Si se trata de una emergencia debes informar a:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildInfoText(
                      'Coordinación de servicio de seguridad de vigilancia del Politécnico Colombiano Jaime Isaza Cadavid.\n'
                      'Área de emergencias POLI – Brigada.\n'
                      'Activar área protegida. EMI (2024).\n'
                      'Teléfonos: (604)4441330 - (604) 6044332.\n'
                      'Código 1-502599. NIT del PCJIC: 890980136-6.\n'
                      'Activar línea 123 salud – Agencia Mujer- PONAL.',
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Nota: Se debe enviar reporte de la información al correo electrónico:',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'atencionaviolenciasbasadasengenero@elpoli.edu.co',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Si no se trata de una emergencia debes informar a:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildInfoText(
                      'COMITÉ DE VBG Y VSX, a través del correo electrónico:\n'
                      'atencionaviolenciasbasadasengenero@elpoli.edu.co',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }
}

class Etapa2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ETAPA 2: ATENCIÓN INICIAL')),
      body: Center(child: Text('Contenido para Etapa 2')),
    );
  }
}

class Etapa3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ETAPA 3: ATENCIÓN PRIORITARIA')),
      body: Center(child: Text('Contenido para Etapa 3')),
    );
  }
}

class Etapa4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ETAPA 4: ORIENTACIÓN Y ASESORÍA')),
      body: Center(child: Text('Contenido para Etapa 4')),
    );
  }
}

class Etapa5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ETAPA 5: REMISIÓN')),
      body: Center(child: Text('Contenido para Etapa 5')),
    );
  }
}
