import 'dart:io';

import 'app.dart';
import 'data/exceptions/app_exception.dart';
import 'data/network/base_api_service.dart';
import 'data/network/network_api_service.dart';
import 'data/response/api_response.dart';
import 'data/response/status.dart';
import 'locator.dart';
import 'routes/app_router.dart';
import 'themes/app_theme.dart';
import 'utils/app_colors.dart';
import 'utils/app_urls.dart';
import 'utils/assets_path.dart';
import 'utils/components/snack_bar.dart';

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
   | Version: 1.0.1               |
   -------------------------------\u001b[0m
    ''');

  stdout.write('Do you want to continue? (y/n): ');
  final input = stdin.readLineSync();

  if (input != null && input.toLowerCase() == 'y') {
    print('Continuing with project generation...');
  } else {
    print('Operation cancelled by user.');
    exit(0);
  }

  final projectName = Directory.current.path.split(Platform.pathSeparator).last;
  final root = Directory('.');

  if (!root.existsSync()) {
    root.createSync();
  }

  final folders = [
    'lib/models',
    'lib/views',
    'lib/view_model',
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

  //  main.dart file
  final mainFile = File('${root.path}/lib/main.dart');
  if (!mainFile.existsSync()) {
    mainFile.writeAsStringSync('''
import 'package:flutter/material.dart';
import 'locator.dart';
import 'main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MainApp());
}
''');
  }

  //  pubspec.yaml file
  final pubspecFile = File('${root.path}/pubspec.yaml');
  pubspecFile.writeAsStringSync('''
name: $projectName
description: "A new Flutter project."
publish_to: 'none' # Remove this line if you wish to publish to pub.dev


version: 1.0.0+1

environment:
  sdk: ^3.7.2

dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: 
  provider: 
  get_it: 
  go_router: 
  shared_preferences: 
  flutter_svg: 
  http: 

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^5.0.0

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/animations/
    - assets/font/
''');

  // locator.dart file
  final locatorFile = File('${root.path}/lib/locator.dart');
  if (!locatorFile.existsSync()) {
    locatorFile.writeAsStringSync(locatorString);
  }

  // app.dart file
  final mainAppFile = File('${root.path}/lib/app.dart');
  if (!mainAppFile.existsSync()) {
    mainAppFile.writeAsStringSync(appString);
  }

  // app_colors.dart file
  final appColorsFile = File('${root.path}/lib/utils/app_colors.dart');
  if (!appColorsFile.existsSync()) {
    appColorsFile.writeAsStringSync(appColorsString);
  }

  // app_urls.dart file
  final appUrlsFile = File('${root.path}/lib/utils/app_urls.dart');
  if (!appUrlsFile.existsSync()) {
    appUrlsFile.writeAsStringSync(appUrlsString);
  }

  // assets_path.dart file
  final assetsPathFile = File('${root.path}/lib/utils/assets_path.dart');
  if (!assetsPathFile.existsSync()) {
    assetsPathFile.writeAsStringSync(assetsPathString);
  }

  // snack_bar.dart file
  final snackBarFile = File('${root.path}/lib/utils/components/snack_bar.dart');
  if (!snackBarFile.existsSync()) {
    snackBarFile.writeAsStringSync(snackBarString);
  }

  // app_theme.dart file
  final appThemeFile = File('${root.path}/lib/themes/app_theme.dart');
  if (!appThemeFile.existsSync()) {
    appThemeFile.writeAsStringSync(appThemeString);
  }

  // app_router.dart file
  final appRouterFile = File('${root.path}/lib/routes/app_router.dart');
  if (!appRouterFile.existsSync()) {
    appRouterFile.writeAsStringSync(appRouterString);
  }

  // app_exception.dart file
  final appExceptionFile =
      File('${root.path}/lib/services/data/exceptions/app_exception.dart');
  if (!appExceptionFile.existsSync()) {
    appExceptionFile.writeAsStringSync(appExceptionString);
  }

  // base_api_service.dart file
  final baseApiServiceFile =
      File('${root.path}/lib/services/data/network/base_api_service.dart');
  if (!baseApiServiceFile.existsSync()) {
    baseApiServiceFile.writeAsStringSync(baseApiServiceString);
  }

  // network_api_service.dart file
  final networkApiServiceFile =
      File('${root.path}/lib/services/data/network/network_api_service.dart');
  if (!networkApiServiceFile.existsSync()) {
    networkApiServiceFile.writeAsStringSync(networkApiServiceString);
  }

  // api_response.dart file
  final apiResponseFile =
      File('${root.path}/lib/services/data/response/api_response.dart');
  if (!apiResponseFile.existsSync()) {
    apiResponseFile.writeAsStringSync(apiResponseString);
  }

  // status.dart file
  final statusFile =
      File('${root.path}/lib/services/data/response/status.dart');
  if (!statusFile.existsSync()) {
    statusFile.writeAsStringSync(statusString);
  }

  print(
      '   \u001b[34mFlutter MVVM project structure created successfully in $projectName\u001b[0m');
}
