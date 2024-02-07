import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class IncrementScreen extends StatelessWidget {
  const IncrementScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Increment Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Consumer<CounterProvider>(
              builder: (context,counterProvider,child) {
                return ElevatedButton(
                  onPressed: () {
                    counterProvider.increment();
                  },
                  child: const Text('Increment Counter'),
                );
              }
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
