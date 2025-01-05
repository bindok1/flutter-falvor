import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatusBloc extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('\n[BlocObserver] 🎯 Event Received:');
    debugPrint('├─ Bloc: ${bloc.runtimeType}');
    debugPrint('└─ Event: $event\n');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('\n[BlocObserver] 🔄 State Changed:');
    debugPrint('├─ Bloc: ${bloc.runtimeType}');
    debugPrint('├─ Current: ${change.currentState}');
    debugPrint('└─ Next: ${change.nextState}\n');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('\n[BlocObserver] 🔀 Transition:');
    debugPrint('├─ Bloc: ${bloc.runtimeType}');
    debugPrint('├─ Event: ${transition.event}');
    debugPrint('├─ Current: ${transition.currentState}');
    debugPrint('└─ Next: ${transition.nextState}\n');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('\n[BlocObserver] ❌ Error:');
    debugPrint('├─ Bloc: ${bloc.runtimeType}');
    debugPrint('├─ Error: $error');
    debugPrint('└─ StackTrace: $stackTrace\n');
  }
}
