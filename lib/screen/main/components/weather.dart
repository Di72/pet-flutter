import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/data_service.dart';
import 'package:flutter_application_1/generated/l10n.dart';

import '../../../helpers/constants.dart';

class Weather extends StatefulWidget {
  const Weather({
    Key? key,
  }) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  final _cityTextController = TextEditingController();
  var _temp;
  var _name;
  var _icon;
  void getWeather(String city) async {
    api(queryParameters: {
      'q': city,
      'appid': 'f9475157abe948c624c563085f0f26bf',
      'units': 'metric'
    }).then((value) => {
          setState(() {
            _temp = value['main']['temp'];
            _name = value['name'];
            _icon =
                "http://openweathermap.org/img/wn/${value['weather'][0]["icon"]}@2x.png";
          }),
          _cityTextController.clear()
        });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.color,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (_icon != null)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${_temp?.round()}°C",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultPadding / 2),
                              child: Text(
                                "$_name",
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Image.network(
                          _icon,
                          width: _size.width * 0.2,
                        ),
                      ],
                    )
                  : Padding(
                      padding:
                          const EdgeInsets.only(bottom: kDefaultPadding / 2),
                      child: Text(S.of(context).weather,
                          style: TextStyle(fontSize: _size.width * 0.06)),
                    ),
              Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: _cityTextController,
                  onSubmitted: (value) => getWeather(value),
                  cursorColor: Theme.of(context).backgroundColor,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(kDefaultPadding),
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
        ),
      ),
    );
  }
}
