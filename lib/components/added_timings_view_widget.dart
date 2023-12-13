import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'added_timings_view_model.dart';
export 'added_timings_view_model.dart';

class AddedTimingsViewWidget extends StatefulWidget {
  const AddedTimingsViewWidget({super.key});

  @override
  _AddedTimingsViewWidgetState createState() => _AddedTimingsViewWidgetState();
}

class _AddedTimingsViewWidgetState extends State<AddedTimingsViewWidget> {
  late AddedTimingsViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddedTimingsViewModel());

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

    return Container(
      constraints: BoxConstraints(
        maxHeight: () {
          if (FFAppState().tempOutlet.outletTimings.length <= 2) {
            return 40.0;
          } else if (FFAppState().tempOutlet.outletTimings.length <= 4) {
            return 80.0;
          } else if (FFAppState().tempOutlet.outletTimings.length <= 6) {
            return 120.0;
          } else {
            return 160.0;
          }
        }(),
      ),
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
        child: Builder(
          builder: (context) {
            final tempTimingsWeek =
                FFAppState().tempOutlet.outletTimings.toList();
            return GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 5.0,
              ),
              scrollDirection: Axis.vertical,
              itemCount: tempTimingsWeek.length,
              itemBuilder: (context, tempTimingsWeekIndex) {
                final tempTimingsWeekItem =
                    tempTimingsWeek[tempTimingsWeekIndex];
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().updateTempOutletStruct(
                        (e) => e
                          ..updateOutletTimings(
                            (e) => e.removeAt(tempTimingsWeekIndex),
                          ),
                      );
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              '${tempTimingsWeekItem.day} : ${dateTimeFormat('jm', tempTimingsWeekItem.openingTime)} - ${dateTimeFormat('jm', tempTimingsWeekItem.closingTime)}',
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                          Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
