import 'package:flutter/material.dart';
import 'package:splash/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Title of Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("flutter title test"),leading: Icon(Icons.ondemand_video),),
      floatingActionButton: FloatingActionButton(onPressed: () {  }, child: const Icon(Icons.add_shopping_cart)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text("Heading..", style: Theme.of(context).textTheme.headlineLarge),
            Text("Sub-heading", style: Theme.of(context).textTheme.headlineMedium),
            Text("Paragraph", style: Theme.of(context).textTheme.headlineSmall),
            ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
            OutlinedButton(onPressed: (){}, child: Text("Outlined Button")),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage("assets/images/monogram.png")),
            )
          ],
        ),
      ),
    );
  }
}
