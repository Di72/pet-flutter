import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

import '../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.75,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.25),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: S.of(context).search,
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
