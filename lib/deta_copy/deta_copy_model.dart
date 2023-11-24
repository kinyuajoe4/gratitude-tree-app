import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'deta_copy_widget.dart' show DetaCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetaCopyModel extends FlutterFlowModel<DetaCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TreeName widget.
  FocusNode? treeNameFocusNode;
  TextEditingController? treeNameController;
  String? Function(BuildContext, String?)? treeNameControllerValidator;
  // State field(s) for ImageLink widget.
  FocusNode? imageLinkFocusNode;
  TextEditingController? imageLinkController;
  String? Function(BuildContext, String?)? imageLinkControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    treeNameFocusNode?.dispose();
    treeNameController?.dispose();

    imageLinkFocusNode?.dispose();
    imageLinkController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
