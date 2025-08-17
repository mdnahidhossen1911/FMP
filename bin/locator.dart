final String locatorString = '''
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // Register your services, repositories, and viewmodels here
  // Example:
  // locator.registerLazySingleton<SomeService>(() => SomeServiceImpl());
}
''';
