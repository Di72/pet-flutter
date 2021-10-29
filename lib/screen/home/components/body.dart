import 'package:flutter/material.dart';
import 'package:flutter_application_1/api.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _name;
  void getData() async {
    api(url: 'team/53/events').then((value) => {
          setState(() {
            _name = value[0]["name"];
          })
        });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello $_name'),
    );
  }
}
