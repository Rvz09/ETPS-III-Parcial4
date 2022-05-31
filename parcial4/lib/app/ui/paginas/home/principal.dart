import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial4/app/ui/paginas/home/principalcontroller.dart';

class PrincipalPage extends StatefulWidget {
  PrincipalPage({Key? key}) : super(key: key);

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  final _controller = PrincipalController();

  @override
  void initState() {
    _controller.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sucursales MovilSV'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 89,
              child: GoogleMap(
                //markers: Set<Marker>.of(_controller.markers),
                markers: {mark0, mark1, mark2, mark},
                //markers: _controller.markers,
                onMapCreated: _controller.onMapCreated,
                initialCameraPosition: _controller.initialCameraPosition,
                compassEnabled: true,
                onTap: _controller.onTap,
              ),
            ),
          ],
        ));
  }
}

Marker mark0 = Marker(
    markerId: MarkerId('Arce'),
    position: LatLng(13.699727, -89.2003444),
    infoWindow: InfoWindow(
        title: "Arce", snippet: 'Sucursal Ubicada en Calle Arce, San Salvador'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));

Marker mark1 = Marker(
    markerId: MarkerId('Salvador del Mundo'),
    position: LatLng(13.7013266, -89.2289186),
    infoWindow: InfoWindow(
        title: "Salvador del Mundo",
        snippet:
            'Sucursal ubicada en los alrededores de la Rotonda Divino Salvador del Mundo'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure));

Marker mark2 = Marker(
    markerId: MarkerId('Soyapango'),
    position: LatLng(13.7102391, -89.1485734),
    infoWindow: InfoWindow(
        title: "Soyapango",
        snippet: 'Sucursal ubicada en el Centro de Soyapango'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan));

Marker mark3 = Marker(
    markerId: MarkerId('San Jacinto'),
    position: LatLng(13.9683696, -89.4817548),
    infoWindow: InfoWindow(
        title: "San Jacinto", snippet: 'Sucursal ubicada en San Jacinto'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange));
