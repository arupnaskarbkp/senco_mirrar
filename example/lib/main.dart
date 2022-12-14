import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:plugin_mirrar_example/launch_mirrar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //  await FlutterDownloader.initialize(
  //     debug: true // optional: set false to disable printing logs to console
  // );
  // await Permission.storage.request();
  await Permission.camera.request();
  await Permission.storage.request();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

   @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Mirrar SDK'), backgroundColor: Colors.pink),
        body: Scaffold(
            body: SafeArea(
                child: Center(
                    child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          child: const Text("Launch Mirrar",style: TextStyle(color: Colors.white),),
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MirrarPage())),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                          ),
                        ))))));
  }
}