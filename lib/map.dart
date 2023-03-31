import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myList.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  State<MyMap> createState() => MyMapState();
}

class MyMapState extends State<MyMap> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(16.4941637, 80.5007007),
    zoom: 14.4746,
  );
  MapType my = MapType.hybrid;

  static const CameraPosition h1 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(12.958941185408495, 77.64913875490572),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h2 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.51164792062246, 80.63202539675522),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h3 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.2932387682642, 80.44247041024649),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h4 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.433893022376417, 80.567042354425),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h5 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.497789170034835, 80.65550832374291),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h6 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.51301755625307, 80.63220578141383),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h7 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.49253919934645, 80.66614051024892),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h8 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.44544915687043, 80.58628612374225),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h9 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.661557730272758, 77.20240059567969),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h10 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.62833894368314, 77.11231399697269),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 197, 228, 228),
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'google maps',
          style: TextStyle(color: Color.fromARGB(255, 48, 7, 35)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Color.fromARGB(255, 218, 216, 224),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    context: context,
                    builder: (context) => SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Choose Hospital',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Divider(
                                  thickness: 3,
                                  color: Color.fromARGB(255, 71, 67, 67),
                                  indent: 35,
                                  endIndent: 35,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'P. Manipal Hospital ',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h1);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'D. Vamsi Heart Care',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h2);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'G. Ramesh Hospitals',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h3);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Sanjeevani Hospital',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h4);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Srikara Hospitals',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h5);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Sai Varnha Eye Hospital',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h6);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Emergency Vijaya Hospitals',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h7);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'AIIMS',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h8);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Bara Hindu Rao Hospital',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h9);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Deen Dayal Upadhyaya ',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h10);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ));
              },
              icon: const Icon(Icons.search_outlined)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: GoogleMap(
        mapType: my,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: set,
        label: const Text('Change Vision'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> campos(CameraPosition cp) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cp));
  }

  void set() {
    if (my == MapType.normal) {
      setState(() {
        my = MapType.hybrid;
      });
    } else {
      setState(() {
        my = MapType.normal;
      });
    }
  }
}
