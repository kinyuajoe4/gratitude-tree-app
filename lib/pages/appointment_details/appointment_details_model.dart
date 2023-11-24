import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/edit_tree_details/edit_tree_details_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'appointment_details_widget.dart' show AppointmentDetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppointmentDetailsModel
    extends FlutterFlowModel<AppointmentDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - timeDifferenceInMonths] action in Row-TypeHeader widget.
  int? months;
  // Stores action output result for [Custom Action - ageInYears] action in Row-TypeHeader widget.
  double? years;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
