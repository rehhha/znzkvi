import 'package:flutter/material.dart';
import 'package:znzkvi/pitanja/narodneMudrolije.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController imeKontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZNZKVI'),
      ),
      body: Container(
        color: Color(0xff66caf8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Dobro došli u',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'ZNZKVI',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Unesi nadimak, ne unosi pravo ime'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                textAlign: TextAlign.center,
                controller: imeKontroler,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Text('Može start?'),
            ElevatedButton(
              child: const Text('START'),
              onPressed: () {
                _posaljiIme(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _posaljiIme(BuildContext context) {
    String ime = imeKontroler.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NarodneMudrolije(ime: ime),
      ),
    );
  }
}
