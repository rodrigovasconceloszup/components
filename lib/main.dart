import 'package:flutter/material.dart';
import 'package:test_font/theme.dart';

import 'buttons/i_elevated_button.dart';
import 'buttons/i_outlined_button.dart';
import 'buttons/i_text_button.dart';
import 'snackbar/snackbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    ScaffoldMessenger.of(context).showSnackBar(
      ISuccessSnackBar(
        context,
        message: 'Info text',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: IElevatedButton(
                text: 'button standard',
                onPressed: () {},
                isLoading: false,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: IElevatedButton(
                text: 'button standard',
                onPressed: () {},
                isLoading: true,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: IElevatedButton(
                text: 'button standard',
                onPressed: null,
                isLoading: false,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: IOutlinedButton(
                text: 'button ghost',
                onPressed: () {},
                isLoading: false,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: IOutlinedButton(
                text: 'button standard',
                onPressed: () {},
                isLoading: true,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: IOutlinedButton(
                text: 'button standard',
                onPressed: null,
                isLoading: false,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ITextButton(
                text: 'button invisible',
                onPressed: () {},
                isLoading: false,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ITextButton(
                text: 'button invisible',
                onPressed: () {},
                isLoading: true,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ITextButton(
                text: 'button invisible',
                onPressed: null,
                isLoading: false,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
