import 'package:flutter/material.dart';
import 'synopsis_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'शोध रूपरेखा (Synopsis)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SynopsisViewer(title: 'शोध रूपरेखा'),
      },
    );
  }
}

class SynopsisViewer extends StatelessWidget {
  const SynopsisViewer({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Text(
              synopsisContent,
              style: const TextStyle(
                fontSize: 16.0,
                height: 1.6,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
