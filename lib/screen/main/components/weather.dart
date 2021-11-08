import 'package:flutter/material.dart';
import 'package:flutter_application_1/api.dart';
import 'package:flutter_application_1/generated/l10n.dart';

import '../../../constants.dart';

class Weather extends StatefulWidget {
  const Weather({
    Key? key,
  }) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  var _temp;
  void getData() async {
    api(params: '&q=Samara&units=metric').then((value) => {
          setState(() {
            _temp = value['main']['temp'];
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
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Text(
            "${S.of(context).question} ${_temp?.round()}",
            style: TextStyle(fontSize: 20),
          ),
          Container(
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.25),
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              cursorColor: Theme.of(context).backgroundColor,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding, vertical: kDefaultPadding),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: S.of(context).search,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).backgroundColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
