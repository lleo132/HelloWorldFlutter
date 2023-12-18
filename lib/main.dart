import 'package:flutter/material.dart';

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
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  
int _count = 0;

// Metodos para incrementar e drecementar valores
void _decrement(){
if(_count == 0){ 
  _count == 0;
} else{
  _count--;
}
  setState(() {});
}

void _increment(){
  if(_count == 25){ 
  _count == 25;
} else{
  _count++;
}
  setState(() {});
}

bool get IsEmpty => _count == 0;
bool get isFull => _count == 25;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/images/granilite_desktop.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            isFull ? 'Lotado' : 'Pode entrar!', 
            style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w700
            ),
            ),
          const Padding(
            padding: EdgeInsets.all(32),
          ),
          Text('$_count',
            style: TextStyle(fontSize: 100,
            color: isFull ? Colors.red: Colors.black
            ),
            ),
            const Padding(
              padding: EdgeInsets.all(32),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(
              style: TextButton.styleFrom(
                backgroundColor: IsEmpty ? Colors.black.withOpacity(0.2) : Colors.black,
                fixedSize: const Size(100, 100),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                )
              ),
              onPressed: IsEmpty ? null : _decrement,
              child: const Text('Saiu', style: TextStyle(
                color: Colors.white),),
              ),
              const SizedBox(width: 32,),
              TextButton(
                style: TextButton.styleFrom(
                backgroundColor: isFull ? Colors.black.withOpacity(0.2): Colors.black,
                fixedSize: const Size(100, 100),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                )
              ),
              onPressed: isFull ? null : _increment,
              child: const Text('Entrou',
              style: TextStyle(
                color: Colors.white
              ),),
              ),
            ],)
          ],
        ),
      )
    );
  }
}
