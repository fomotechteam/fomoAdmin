import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'outlet_cuisines_picker_widget.dart' show OutletCuisinesPickerWidget;
import 'package:flutter/material.dart';

class OutletCuisinesPickerModel
    extends FlutterFlowModel<OutletCuisinesPickerWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in outletCuisinesPicker widget.
  CuisinesRecord? cuisines;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
