import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:unit_converter_app/category.dart';
import 'package:unit_converter_app/converter_screen.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class CategoryTile extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onTap;

  const CategoryTile({Key key, @required this.category, @required this.onTap})
      : assert(category != null),
        assert(onTap != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text(
            category.name,
            style: Theme.of(context).textTheme.display1,
          ),
          centerTitle: true,
          backgroundColor: category.color,
        ),
        body: ConverterScreen(
            color: category.color, name: category.name, units: category.units),
        resizeToAvoidBottomPadding: true,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: category.color['highlight'],
          splashColor: category.color['splash'],
          onTap: () => _navigateToConverter(context),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    category.iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    category.name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
