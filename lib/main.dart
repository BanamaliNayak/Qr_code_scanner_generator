import 'package:flutter/material.dart';
import 'package:qr_code_scanner_generator/generator_qr_code.dart';
import 'package:qr_code_scanner_generator/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner and Generator'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ScanQrCode()));
              });
            }, child: Text('Scan QR',style: TextStyle(color: Colors.white,fontSize: 21),),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black)
            ),
            ),

            SizedBox(
              height: 40,
            ),

            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => GenerateQRCode()));
              });
            }, child: Text('Generate QR Code',style: TextStyle(color: Colors.white,fontSize: 21)),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black)
              ),)
          ],
        ),
      ),
    );
  }
}
