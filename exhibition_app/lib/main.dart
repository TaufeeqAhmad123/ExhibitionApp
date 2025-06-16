import 'package:exhibition_app/provider/theme_provider.dart';
import 'package:exhibition_app/screen/home/home_screen.dart';
import 'package:exhibition_app/utils/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    
    create: (_) => ThemeProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812), 
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: themeProvider.themeMode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: HomeScreen(),
        );
      },
    );
}

}