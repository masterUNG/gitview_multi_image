import 'package:flutter/material.dart';

void main()
 {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "GitView Multiple Image",
      home: new Scaffold(
        appBar: new AppBar(title: new Text("App Bar Test"),),
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
  List<Container> listContainner = new List<Container>.generate(numberOfTiles,
  (int index){
    final imageName = 'images/master${index + 1}.jpg';

      return new Container(
        child: new Image.asset(imageName,
          fit: BoxFit.cover,),
      );
  }
  );
  return listContainner;
}
