import 'dart:async';
import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../constant/colors.dart';
import '../../constant/textsize.dart';
import 'components/map_delivery_address.dart';
class LiveTrackingMap extends StatefulWidget {
  const LiveTrackingMap({Key? key}) : super(key: key);

  @override
  State<LiveTrackingMap> createState() => _LiveTrackingMapState();
}

class _LiveTrackingMapState extends State<LiveTrackingMap> {
  final Completer<GoogleMapController> _controller = Completer();


  final CameraPosition _kGooglePlex =  const CameraPosition(
    target: LatLng(33.738045, 73.084488),
    zoom: 17,
  );
  final Set<Marker> _markers = {};
  final Set<Polyline>_polyline={};
  List<LatLng> latLng = [const LatLng(33.738045, 73.084488) , const LatLng(33.567997728, 72.635997456)];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(int i = 0 ; i < latLng.length ; i++){

      setState(() {
        _markers.add(Marker(
          markerId: MarkerId(i.toString()),
          position: latLng[i],
          icon: BitmapDescriptor.defaultMarker,

        ));
        _polyline.add(Polyline(
          polylineId: PolylineId(i.toString()),
          visible: true,
          points: latLng,
          width: 5,
          color: AppColors.primarydarkColor,
        ));
      });

    }

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title:Text('Live Tracking',
              style:GoogleFonts.poppins(
                fontSize: AppTexts.size15,
                color: AppColors.primarydarkColor,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),),
            centerTitle: true,
            leading:  IconButton(onPressed: (){
              Get.back();
            },
                icon:  Icon(Icons.arrow_back_ios,color: Colors.black,size: SizeConfig.imageSizeMultiplier*5,)),
            elevation: 0,
          ),
          body:Stack(
            children: [
              GoogleMap(
                polylines:_polyline,
                zoomControlsEnabled: false,
                markers: _markers,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                initialCameraPosition: _kGooglePlex,
                mapType: MapType.normal,

              ),
              Positioned(
                bottom: AppHeights.height24,
                left: 0,
                right: 0,
                child: const MapDeliveryAddress(),
              )
            ],
          )),
    );
  }

}

