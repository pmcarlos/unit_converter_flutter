import 'package:meta/meta.dart';

class Unit {
  final String name;
  final dynamic conversion;

  const Unit({@required this.name, @required this.conversion})
      : assert(name != null),
        assert(conversion != null);

  Unit.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['conversion'] != null),
        name = jsonMap['name'],
        conversion = jsonMap['conversion'];
}
