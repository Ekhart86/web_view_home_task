import 'package:flutter/cupertino.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapView extends StatefulWidget {
  const MapView({Key key}) : super(key: key);

  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return const YandexMap();
  }
}
