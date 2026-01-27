import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

/// App raiz
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Tamanho de referência do design (ex.: Figma/iPhone X)
      designSize: const Size(375, 812),

      // Ajuda a adaptar textos (especialmente em telas menores)
      minTextAdapt: true,

      // Ajuda em multi-janela / split screen (tablets e desktops)
      splitScreenMode: true,

      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Home Rental Mobile App',
          theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),

          // ✅ ESSA LINHA é a que faltava no seu código
          home: const HomePage(),
        );
      },
    );
  }
}

/// Tela inicial (o "primeiro conteúdo" do app)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          // Exemplo usando ScreenUtil no tamanho da fonte
          style: TextStyle(fontSize: 18.sp),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.w), // padding responsivo
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 48.r),
              SizedBox(height: 12.h),
              Text(
                'App iniciado com sucesso!',
                style: TextStyle(fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                'Agora você já tem uma tela inicial definida no MaterialApp.',
                style: TextStyle(fontSize: 12.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
