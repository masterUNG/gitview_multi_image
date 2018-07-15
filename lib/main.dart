import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "GitView Multiple Image",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("App Bar Test"),
        ),
        body: new MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyStatefulWidgetState();
  }
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GritView Multiple Image"),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: EdgeInsets.all(5.0),
        children: _buildGridTitles(30),
      ),
    );
  }
}

List<Widget> _buildGridTitles(numberOfTiles) {
  List<Stack> listContainner =
      new List<Stack>.generate(numberOfTiles, (int index) {
    final imageName = 'images/master${index + 1}.jpg';
    return new Stack(
      alignment: const Alignment(1.0, 1.0),
      children: <Widget>[
        new Container(
          child: new Image.asset(
            imageName,
            width: 150.0,
            height: 150.0,
            fit: BoxFit.cover,
          ),
        ),
        new Container(
        padding: EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            color: new Color.fromARGB(120, 0, 0, 0)
        ),
          child: new Text(
            'Master${index}',
            style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        )
      ],
    );
  }); //index
  return listContainner;
} // List
