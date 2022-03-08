import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (_App());
  }
}

class _App extends State<App> {
  List<String> _products =['food']; //add a property of type list string in order to change data inside of statefulwidget
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('good'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _products.add('New Element Name');//the same image is added but with different text
                    });
                  },
                  child: Text("Add Product")),
            ),
            Column(
              children: _products
                  .map((e) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('asset/image.jpg'),
                            Text("A guy with black glasses")
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    ));
  }
}
