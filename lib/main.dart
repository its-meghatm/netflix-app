import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/src/application/downloads/downloads_bloc.dart';
import 'package:netflix/src/application/fastLaugh/fastlaugh_bloc.dart';
import 'package:netflix/src/domain/dependency/injectable.dart';
import 'package:netflix/src/presentation/screens/main_home_page.dart';
import 'package:netflix/src/presentation/screens/spalash_screen.dart';
import 'package:netflix/src/utils/custom_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<FastlaughBloc>())
      ],
      child: MaterialApp(
        title: 'Netflix Clone',
        theme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: MainHomePage(),
      ),
    );
  }
}
