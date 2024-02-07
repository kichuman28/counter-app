import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  void initState() {
    super.initState();

    // Set the counter to zero when the ResetScreen is inserted into the widget tree
    context.read<CounterProvider>().reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Screen'),
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, counterProvider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Counter has been reset to zero',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back to Home Screen'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
