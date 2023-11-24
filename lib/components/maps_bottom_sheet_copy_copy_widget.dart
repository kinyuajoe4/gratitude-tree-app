import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'maps_bottom_sheet_copy_copy_model.dart';
export 'maps_bottom_sheet_copy_copy_model.dart';

class MapsBottomSheetCopyCopyWidget extends StatefulWidget {
  const MapsBottomSheetCopyCopyWidget({
    Key? key,
    required this.latlong,
  }) : super(key: key);

  final LatLng? latlong;

  @override
  _MapsBottomSheetCopyCopyWidgetState createState() =>
      _MapsBottomSheetCopyCopyWidgetState();
}

class _MapsBottomSheetCopyCopyWidgetState
    extends State<MapsBottomSheetCopyCopyWidget> {
  late MapsBottomSheetCopyCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapsBottomSheetCopyCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Builder(builder: (context) {
          final _googleMapMarker = _model.placePickerValue.latLng;
          return FlutterFlowGoogleMap(
            controller: _model.googleMapsController,
            onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
            initialLocation: _model.googleMapsCenter ??= widget.latlong!,
            markers: [
              if (_googleMapMarker != null)
                FlutterFlowMarker(
                  _googleMapMarker.serialize(),
                  _googleMapMarker,
                ),
            ],
            markerColor: GoogleMarkerColor.red,
            mapType: MapType.normal,
            style: GoogleMapStyle.standard,
            initialZoom: 14.0,
            allowInteraction: true,
            allowZoom: true,
            showZoomControls: true,
            showLocation: true,
            showCompass: false,
            showMapToolbar: true,
            showTraffic: false,
            centerMapOnMarkerTap: true,
          );
        }),
        Align(
          alignment: AlignmentDirectional(0.09, -0.97),
          child: PointerInterceptor(
            intercepting: isWeb,
            child: FlutterFlowPlacePicker(
              iOSGoogleMapsApiKey: 'AIzaSyAJoncf1vnF3dirDkhwJ8fTZ_YaoqaGioI',
              androidGoogleMapsApiKey:
                  'AIzaSyAJoncf1vnF3dirDkhwJ8fTZ_YaoqaGioI',
              webGoogleMapsApiKey: 'AIzaSyAJoncf1vnF3dirDkhwJ8fTZ_YaoqaGioI',
              onSelect: (place) async {
                setState(() => _model.placePickerValue = place);
                (await _model.googleMapsController.future).animateCamera(
                    CameraUpdate.newLatLng(place.latLng.toGoogleMaps()));
              },
              defaultText: 'Select Location',
              icon: Icon(
                Icons.place,
                color: FlutterFlowTheme.of(context).info,
                size: 16.0,
              ),
              buttonOptions: FFButtonOptions(
                width: 200.0,
                height: 40.0,
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).info,
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-0.07, -0.66),
          child: PointerInterceptor(
            intercepting: isWeb,
            child: FFButtonWidget(
              onPressed: () async {
                await _model.googleMapsController.future.then(
                  (c) => c.animateCamera(
                    CameraUpdate.newLatLng(
                        _model.placePickerValue.latLng.toGoogleMaps()),
                  ),
                );
              },
              text: 'Locate on Map',
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.06, 0.72),
          child: PointerInterceptor(
            intercepting: isWeb,
            child: FFButtonWidget(
              onPressed: () async {
                context.safePop();
              },
              text: 'Back',
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFF8D2828),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
