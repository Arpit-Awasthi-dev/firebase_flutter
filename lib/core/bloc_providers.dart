import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'injection_container.dart' as di;

class BlocProviders {
  static List<SingleChildWidget> toGenerateProviders() {
    return [
      // BlocProvider(
      //   create: (_) => di.sl<HomePageCubit>(),
      // ),
    ];
  }
}