
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 77, 119, 17),
        iconTheme: IconThemeData(
          color: Color(0xFFE2E9D8), 
        ),
        
        titleTextStyle: TextStyle(
          color: Color(0xFFE2E9D8), 
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        title: Text(
          'And Camile',
        ),
        actions: [
          IconButton(
            tooltip: 'Edit',
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Save',
            icon: const Icon(Icons.save),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Andressa'),
                ),
                PopupMenuItem(
                  child: Text('Silva'),
                ),
                PopupMenuItem(
                  child: Text('Rocha'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Bem Vindo',
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Demo',
      localizationsDelegates: const [
        // Configurações para internacionalização com flutter_localizations
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        // Lista de idiomas suportados
        Locale('en', 'US'), // Inglês
        Locale('pt', 'BR'), // Português do Brasil
      ],
      home: const AppBarDemo(),
    );
  }
}
