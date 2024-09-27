import 'package:flutter/material.dart';
import 'package:violencias/screens/formacion_vbg.dart';
import 'package:violencias/screens/home.dart';
import 'package:violencias/screens/lines_de_llamada1.dart';
import 'package:violencias/screens/solicitud_de_atencion_psicojuridica.dart';
import 'package:violencias/screens/protocolo_vbg_y_vsx.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;

  List<Widget> _paginas = [
    Home(),
    LineasDeLlamadas(),
    ProtocoloVbgYVsx(),
    FormacionVbg(),
    SolicitudDeAtencionPsicojuridica(),

  ];

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lineas de emergencia'),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(255, 190, 26, 1),
          onTap: (index){
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items:[
            BottomNavigationBarItem(icon: Image.asset('assets/icons/Recurso 10.png', height: 20, width: 20), label: 'INICIO'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/recurso3.png', height: 20, width: 20), label: 'LÍNEAS DE EMERGENCIA'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/Recurso 4.png', height: 20, width: 20), label: 'PROTOCOLO VBG Y VSX'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/Recurso 5.png', height: 20, width: 20), label: 'SOLICITUD DE ATENCIÓN PSICOJURÍDICA'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/Recurso 6.png', height: 20, width: 20), label: 'FORMACIÓN VBG'),
          ]
           ),
      ),
    );
  }
}
