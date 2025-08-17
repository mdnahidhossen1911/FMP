import 'dart:io';

void main(List<String> args) {
  print('''
  \u001b[34m                                                                                         
                   ===========                                                                      
                 ===========-            #####           ######         ##################          
               ============            #######        #########      ########################       
             ===========-             #########      ##########      #########################      
           ============               ##########    ###########     ##########################      
         ============                ###########   #############       ##########    ##########     
       ============                  ############ ##############       #########     #########      
     ============                    ###########################       #########    ##########      
   ============    ===========      #############################      ######### #############      
   ==========    ============       #############################      #####################        
     ======    ============        ###################  #########      ###################          
       ==    ============          #######  #########    ########     ################              
           ============           ########  ########     ########     #########                     
           ========+###           ########   ######      #########    #########                     
             ====+#######        ########     ####        ########    #########                     
               =#%#########      #######      ###         ########    #########                     
                 ############     ######                  ######      #####                         
                   ###########                                                                      
                                                                                                                                                          
                                                                                           
   Welcome to the Flutter MVVM Project Creator!
   This tool will help you set up a basic Flutter project structure following the MVVM architecture.
   Make sure you have Flutter installed and set up on your machine.
   _______________________________
   | Powered by: MD. Nahid Hossen |
   | Version: 0.0.1               |
   -------------------------------
        
   Processing your request..............
   .....................................\u001b[0m
    ''');

  final projectName = Directory.current.path.split(Platform.pathSeparator).last;
  final root = Directory('.');

  if (!root.existsSync()) {
    root.createSync();
  }

  final folders = [
    'lib/models',
    'lib/views',
    'lib/viewmodels',
    'lib/services/data/network',
    'lib/services/data/exceptions',
    'lib/services/data/response',
    'lib/utils/components',
    'lib/routes',
    'lib/themes',
    'assets/images',
    'assets/icons',
    'assets/animations',
    'assets/fonts',
  ];

  for (var folder in folders) {
    Directory('${root.path}/$folder').createSync(recursive: true);
  }

  // Example main_app.dart file
  final mainFile = File('${root.path}/lib/main_app.dart');
  if (!mainFile.existsSync()) {
    mainFile.writeAsStringSync('''import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '$projectName',
      home: Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: const Center(child: Text('Hello MVVM')),
      ),
    );
  }
}
''');
  }

  // Example pubspec.yaml file
  final pubspecFile = File('${root.path}/pubspec.yaml');
  pubspecFile.writeAsStringSync('''name: mvvm_provider_example
description: A Flutter project using MVVM with Provider
version: 1.0.0+1
environment:
  sdk: '>=2.12.0 <3.0.0'
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
  http: ^0.13.0
flutter:
  uses-material-design: true

assets:
  - assets/images/
  - assets/icons/
  - assets/animations/
  - assets/fonts/
''');

  print(
      '   \u001b[34mFlutter MVVM project structure created successfully in $projectName\u001b[0m');
}
