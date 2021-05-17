import 'package:flutter/material.dart';

void main() => runApp(EvelynApp());

class EvelynApp extends StatefulWidget {
  @override
  _EvelynAppState createState() => _EvelynAppState();
}

class _EvelynAppState extends State<EvelynApp> {
  //clase 2
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Principal());
  } //fin de widget{}
} //fin de EvelynApp

class Principal extends StatefulWidget {
  //clase  3
  @override
  _PrincipalState createState() => _PrincipalState();
} //fin clase principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //fin de iniciar estado con 5 tab iconos

  Widget card(String text) {
    return Card(
      color: Colors.red[100],
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //fin de tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //fin de taab eviando un icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars de eve"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Inicio"),
          card("Favoritos"),
          card("Contacto"),
          card("Playad"),
          card("Coneccion"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.home, color: Colors.amber)),
          tab("Favoritos", Icon(Icons.favorite, color: Colors.red)),
          tab("Contacto", Icon(Icons.phone, color: Colors.blue)),
          tab("Playas", Icon(Icons.beach_access, color: Colors.purple)),
          tab("Coneccion", Icon(Icons.wifi, color: Colors.green)),
        ],
      ),
    );
  }
} //fin PrincipalState
