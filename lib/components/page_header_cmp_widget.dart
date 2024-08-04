import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'page_header_cmp_model.dart';
export 'page_header_cmp_model.dart';

class PageHeaderCmpWidget extends StatefulWidget {
  const PageHeaderCmpWidget({super.key});

  @override
  State<PageHeaderCmpWidget> createState() => _PageHeaderCmpWidgetState();
}

class _PageHeaderCmpWidgetState extends State<PageHeaderCmpWidget> {
  late PageHeaderCmpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageHeaderCmpModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
