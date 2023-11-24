import '/auth/firebase_auth/auth_util.dart';
import '/components/disp1_widget.dart';
import '/components/disp2_widget.dart';
import '/components/disp3/disp3_widget.dart';
import '/components/disp4_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // Model for disp1 component.
  late Disp1Model disp1Model;
  // Model for disp2 component.
  late Disp2Model disp2Model;
  // Model for disp3 component.
  late Disp3Model disp3Model;
  // Model for disp4 component.
  late Disp4Model disp4Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    disp1Model = createModel(context, () => Disp1Model());
    disp2Model = createModel(context, () => Disp2Model());
    disp3Model = createModel(context, () => Disp3Model());
    disp4Model = createModel(context, () => Disp4Model());
  }

  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    disp1Model.dispose();
    disp2Model.dispose();
    disp3Model.dispose();
    disp4Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
