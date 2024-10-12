// import 'package:flutter/material.dart';
// import 'package:violencias/screens/Etapa1Page.dart';
// import 'package:violencias/screens/Etapa2Page.dart';
// import 'package:violencias/screens/Etapa3Page.dart';
// import 'package:violencias/screens/Etapa4Page.dart';
// import 'package:violencias/screens/Etapa5Page.dart';
// import 'package:violencias/screens/formacion_vbg.dart';
// import 'package:violencias/screens/home.dart';
// import 'package:violencias/screens/lineas_de_llamada.dart';
// import 'package:violencias/screens/solicitud_de_atencion_psicojuridica.dart';


// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Material App',
//       home: WelcomeScreen(), // Pantalla de bienvenida inicial
//       routes: {
//         '/home': (context) => MainScreen(child: Home()),
//         '/lineas_de_llamada': (context) => MainScreen(child: LineasDeLlamadas()),
//         '/protocolo_vbg_y_vsx': (context) => MainScreen(child: ProtocoloVbgYVsx()),
//         '/solicitud_de_atencion_psicojuridica': (context) => MainScreen(child: SolicitudDeAtencionPsicojuridica()),
//         '/formacion_vbg': (context) => MainScreen(child: FormacionVbg()),
//         '/etapa1': (context) => MainScreen(child: Etapa1page()),
//         '/etapa2': (context) => MainScreen(child: Etapa2page()),
//         '/etapa3': (context) => MainScreen(child: Etapa3page()),
//         '/etapa4': (context) => MainScreen(child: Etapa4page()),
//         '/etapa5': (context) => MainScreen(child: Etapa5page()),
//       },
//     );
//   }
// }

// // Pantalla de bienvenida
// class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);

//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Navegar a la pantalla principal después de 3 segundos
//     Future.delayed(const Duration(seconds: 3), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => MainScreen(child: Home())), // Llama a la pantalla principal
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/home.jpg'), // Cambia por tu imagen
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Pantalla principal con AppBar y BottomNavigationBar
// class MainScreen extends StatefulWidget {
//   final Widget child;

//   MainScreen({required this.child});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _paginaActual = 0;

//   List<String> _titulos = [
//     'Inicio',
//     'Líneas de \nEmergencia',
//     'PROTOCOLO \nVBG Y VSX',
//     'Formación VBG',
//     'SOLICITUD \nDE ATENCIÓN PSICOJURÍDICA',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF6A1B9A), // Color morado
//         title: Row(
//           children: [
//             Image.asset('assets/icons/LogoPoliBlanco.png', height: 45),
//             Spacer(),
//             Text(
//               _titulos[_paginaActual], // Título dinámico
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//               ),
//             ),
//             Spacer(),
//           ],
//         ),
//       ),
//       body: widget.child, // Contenido de la pantalla
//       bottomNavigationBar: BottomAppBar(
//         color: Color(0xFFFCBE1A),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             _buildNavButton('INICIO', 0, 'assets/icons/Recurso 10.png'),
//             _buildNavButton('LÍNEAS DE \nEMERGENCIA', 1, 'assets/icons/recurso3.png'),
//             _buildNavButton('PROTOCOLO \nVBG Y VSX', 2, 'assets/icons/Recurso 4.png'),
//             _buildNavButton('SOLICITUD DE ATENCIÓN \nPSICOJURÍDICA', 3, 'assets/icons/Recurso 5.png'),
//             _buildNavButton('FORMACIÓN \nVBG', 4, 'assets/icons/Recurso 6.png'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNavButton(String label, int index, String iconPath) {
//     return Expanded(
//       child: TextButton(
//         style: TextButton.styleFrom(
//           backgroundColor: const Color.fromARGB(0, 74, 255, 58),
//           padding: EdgeInsets.zero,
//           alignment: Alignment.center,
//         ),
//         onPressed: () {
//           setState(() {
//             _paginaActual = index;
//           });
//           // Cambiar de página
//           Navigator.pushReplacement(context, MaterialPageRoute(
//             builder: (context) {
//               switch (index) {
//                 case 0:
//                   return MainScreen(child: Home());
//                 case 1:
//                   return MainScreen(child: LineasDeLlamadas());
//                 case 2:
//                   return MainScreen(child: ProtocoloVbgYVsx());
//                 case 3:
//                   return MainScreen(child: SolicitudDeAtencionPsicojuridica());
//                 case 4:
//                   return MainScreen(child: FormacionVbg());
//                 default:
//                   return MainScreen(child: Home());
//               }
//             },
//           ));
//         },
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(iconPath, height: 25, width: 25),
//             const SizedBox(height: 1),
//             Text(
//               label,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 7,
//                 color: Color.fromARGB(255, 253, 253, 253),
//                 fontFamily: 'AmsiPro-Ultra',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Protocolo VBG y VSX
// class ProtocoloVbgYVsx extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/purple-texture.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//             color: const Color.fromARGB(0, 225, 0, 255).withOpacity(0.9),
//           ),
//           SafeArea(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     AspectRatio(
//                       aspectRatio: 16 / 9,
//                       child: Image.asset(
//                         'assets/images/Mujer2.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     FittedBox(
//                       fit: BoxFit.scaleDown,
//                       child: Text(
//                         'CONOCE EL PROTOCOLO COMPLETO AQUÍ:',
//                         style: TextStyle(color: Colors.yellow, fontSize: 12),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     _buildStageButton(context, 'ETAPA 1: DETECCIÓN'),
//                     _buildStageButton(context, 'ETAPA 2: ATENCIÓN INICIAL'),
//                     _buildStageButton(context, 'ETAPA 3:\nATENCIÓN PRIORITARIA EN SALUD FÍSICA Y MENTAL'),
//                     _buildStageButton(context, 'ETAPA 4:\nORIENTACIÓN, ASESORÍA Y ACOMPAÑAMIENTO JURÍDICO'),
//                     _buildStageButton(context, 'ETAPA 5: REMISIÓN'),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStageButton(BuildContext context, String text) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 8),
//       child: ElevatedButton(
//         onPressed: () {
//           String route;
//           switch (text) {
//             case 'ETAPA 1: DETECCIÓN':
//               route = '/etapa1';
//               break;
//             case 'ETAPA 2: ATENCIÓN INICIAL':
//               route = '/etapa2';
//               break;
//             case 'ETAPA 3:\nATENCIÓN PRIORITARIA EN SALUD FÍSICA Y MENTAL':
//               route = '/etapa3';
//               break;
//             case 'ETAPA 4:\nORIENTACIÓN, ASESORÍA Y ACOMPAÑAMIENTO JURÍDICO':
//               route = '/etapa4';
//               break;
//             case 'ETAPA 5: REMISIÓN':
//               route = '/etapa5';
//               break;
//             default:
//               return;
//           }
//           Navigator.pushNamed(context, route);
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.purple[800],
//           padding: EdgeInsets.symmetric(vertical: 16),
//           minimumSize: Size(double.infinity, 50),
//         ),
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:violencias/screens/Etapa1Page.dart';
import 'package:violencias/screens/Etapa2Page.dart';
import 'package:violencias/screens/Etapa3Page.dart';
import 'package:violencias/screens/Etapa4Page.dart';
import 'package:violencias/screens/Etapa5Page.dart';
import 'package:violencias/screens/formacion_vbg.dart';
import 'package:violencias/screens/home.dart';
import 'package:violencias/screens/lineas_de_llamada.dart';
import 'package:violencias/screens/solicitud_de_atencion_psicojuridica.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: WelcomeScreen(),
      routes: _buildRoutes(),
    );
  }

  Map<String, WidgetBuilder> _buildRoutes() {
    return {
      '/home': (context) => MainScreen(child: Home()),
      '/lineas_de_llamada': (context) => MainScreen(child: LineasDeLlamadas()),
      '/protocolo_vbg_y_vsx': (context) => MainScreen(child: ProtocoloVbgYVsx()),
      '/solicitud_de_atencion_psicojuridica': (context) => MainScreen(child: SolicitudDeAtencionPsicojuridica()),
      '/formacion_vbg': (context) => MainScreen(child: FormacionVbg()),
      for (var i = 1; i <= 5; i++)
        '/etapa$i': (context) => MainScreen(child: _getEtapaPage(i)),
    };
  }

  Widget _getEtapaPage(int index) {
    switch (index) {
      case 1: return Etapa1Page();
      case 2: return Etapa2Page();
      case 3: return Etapa3Page();
      case 4: return Etapa4Page();
      case 5: return Etapa5Page();
      default: return Home();
    }
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen(child: Home())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home.jpg'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  final Widget child;

  MainScreen({required this.child});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _paginaActual = 0;

  final List<String> _titulos = [
    'Inicio',
    'Líneas de \nEmergencia',
    'PROTOCOLO \nVBG Y VSX',
    'Formación VBG',
    'SOLICITUD \nDE ATENCIÓN PSICOJURÍDICA',
  ];

  final List<Map<String, String>> _navItems = [
    {'label': 'INICIO', 'icon': 'assets/icons/Recurso 10.png'},
    {'label': 'LÍNEAS DE \nEMERGENCIA', 'icon': 'assets/icons/recurso3.png'},
    {'label': 'PROTOCOLO \nVBG Y VSX', 'icon': 'assets/icons/Recurso 4.png'},
    {'label': 'SOLICITUD DE ATENCIÓN \nPSICOJURÍDICA', 'icon': 'assets/icons/Recurso 5.png'},
    {'label': 'FORMACIÓN \nVBG', 'icon': 'assets/icons/Recurso 6.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6A1B9A),
        title: Row(
          children: [
            Image.asset('assets/icons/LogoPoliBlanco.png', height: 45),
            Spacer(),
            Text(_titulos[_paginaActual], style: TextStyle(color: Colors.white, fontSize: 20)),
            Spacer(),
          ],
        ),
      ),
      body: widget.child,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFCBE1A),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _navItems.asMap().entries.map((entry) {
            int index = entry.key;
            Map<String, String> item = entry.value;
            return _buildNavButton(item['label']!, index, item['icon']!);
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildNavButton(String label, int index, String iconPath) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(0, 74, 255, 58), padding: EdgeInsets.zero),
        onPressed: () {
          setState(() {
            _paginaActual = index;
          });
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return MainScreen(child: _getNavChild(index));
          }));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(iconPath, height: 25, width: 25),
            const SizedBox(height: 1),
            Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 7, color: Colors.white)),
          ],
        ),
      ),
    );
  }

  Widget _getNavChild(int index) {
    switch (index) {
      case 0: return Home();
      case 1: return LineasDeLlamadas();
      case 2: return ProtocoloVbgYVsx();
      case 3: return SolicitudDeAtencionPsicojuridica();
      case 4: return FormacionVbg();
      default: return Home();
    }
  }
}

class ProtocoloVbgYVsx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/purple-texture.jpg'), fit: BoxFit.cover)),
          ),
          Container(color: const Color.fromARGB(0, 225, 0, 255).withOpacity(0.9)),
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset('assets/images/Mujer2.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(height: 20),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text('CONOCE EL PROTOCOLO COMPLETO AQUÍ:', style: TextStyle(color: Colors.yellow, fontSize: 12), textAlign: TextAlign.center),
                  ),
                  SizedBox(height: 5),
                  ...['ETAPA 1: DETECCIÓN', 'ETAPA 2: ATENCIÓN INICIAL', 'ETAPA 3:\nATENCIÓN PRIORITARIA EN SALUD FÍSICA Y MENTAL',
                    'ETAPA 4:\nORIENTACIÓN, ASESORÍA Y ACOMPAÑAMIENTO JURÍDICO', 'ETAPA 5: REMISIÓN']
                      .map((text) => _buildStageButton(context, text))
                      .toList(),
                ],
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
          Navigator.pushNamed(context, _getStageRoute(text));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple[800],
          padding: EdgeInsets.symmetric(vertical: 16),
          minimumSize: Size(double.infinity, 50),
        ),
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.white)),
      ),
    );
  }

  String _getStageRoute(String text) {
    switch (text) {
      case 'ETAPA 1: DETECCIÓN': return '/etapa1';
      case 'ETAPA 2: ATENCIÓN INICIAL': return '/etapa2';
      case 'ETAPA 3:\nATENCIÓN PRIORITARIA EN SALUD FÍSICA Y MENTAL': return '/etapa3';
      case 'ETAPA 4:\nORIENTACIÓN, ASESORÍA Y ACOMPAÑAMIENTO JURÍDICO': return '/etapa4';
      case 'ETAPA 5: REMISIÓN': return '/etapa5';
      default: return '/home';
    }
  }
}
