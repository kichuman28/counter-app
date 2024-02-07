import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
import 'increment_screen.dart';
import 'reset_counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<CounterProvider>(
      builder: (context,counterProvider,child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home Screen'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Counter Value: ${counterProvider.count}',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IncrementScreen()),
                    );
                  },
                  child: const Text('Go to Increment Screen'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetScreen()),
                    );
                  },
                  child: const Text('Go to Reset Screen'),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
