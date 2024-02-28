import 'dart:ui';

import 'package:equatable/equatable.dart';

abstract class LocalState extends Equatable {
  LocalState();

  @override
  List<Object?> get props => [];
}

class InitialLocal extends LocalState {}

class LoadingLocal extends LocalState {}

class ErrorLocal extends LocalState {
  final dynamic exception;

  ErrorLocal({required this.exception});

  @override
  List<Object?> get props => [exception];
}

class SuccessLocal extends LocalState {
  final Locale locale;

  SuccessLocal({required this.locale});

  @override
  List<Object?> get props => [locale];
}
