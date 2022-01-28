
import 'package:demoapp/Screens/HomeScreen/HomeScreenProvider.dart';
import 'package:provider/provider.dart';

final multiProviders = [
  ChangeNotifierProvider<HomeScreenProvider>(
    create: (_) => HomeScreenProvider(),
    lazy: true,
  )

];
