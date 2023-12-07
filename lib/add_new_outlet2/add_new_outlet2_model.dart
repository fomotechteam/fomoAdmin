import '/backend/backend.dart';
import '/components/added_timings_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_new_outlet2_widget.dart' show AddNewOutlet2Widget;
import 'package:flutter/material.dart';

class AddNewOutlet2Model extends FlutterFlowModel<AddNewOutlet2Widget> {
  ///  Local state fields for this page.

  bool tokenSwitch = false;

  bool staggerSwitch = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in addNewOutlet2 widget.
  CuisinesRecord? apiResultCuisines;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for addedTimingsView component.
  late AddedTimingsViewModel addedTimingsViewModel;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for reservationSwitch widget.
  bool? reservationSwitchValue;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // State field(s) for tokenSwitch widget.
  bool? tokenSwitchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    addedTimingsViewModel = createModel(context, () => AddedTimingsViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    addedTimingsViewModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
