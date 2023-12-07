import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'outlet_creation_success_model.dart';
export 'outlet_creation_success_model.dart';

class OutletCreationSuccessWidget extends StatefulWidget {
  const OutletCreationSuccessWidget({super.key});

  @override
  _OutletCreationSuccessWidgetState createState() =>
      _OutletCreationSuccessWidgetState();
}

class _OutletCreationSuccessWidgetState
    extends State<OutletCreationSuccessWidget> {
  late OutletCreationSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OutletCreationSuccessModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Lottie.asset(
      'assets/lottie_animations/Animation_-_1700919111969.json',
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      fit: BoxFit.cover,
      animate: true,
    );
  }
}
