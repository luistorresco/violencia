import 'package:flutter/material.dart';
import 'package:violencias/screens/formacion_vbg.dart';
import 'package:violencias/screens/home.dart';
import 'package:violencias/screens/lines_de_llamada1.dart';
import 'package:violencias/screens/solicitud_de_atencion_psicojuridica.dart';
import 'package:violencias/screens/protocolo_vbg_y_vsx.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}
class MyAppState extends State<MyApp> {
  int _paginaActual = 0;

  final List<Widget> _paginas = [
    const Home(),
    const LineasDeLlamadas(),
    const ProtocoloVbgYVsx(),
    const FormacionVbg(),
    const SolicitudDeAtencionPsicojuridica(),
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
          backgroundColor:Colors.orange,
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
