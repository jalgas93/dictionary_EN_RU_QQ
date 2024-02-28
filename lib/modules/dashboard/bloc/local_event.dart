import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class LocalEvent extends Equatable {
  LocalEvent();

  @override
  List<Object?> get props => [];
}

class LocalLanguage extends LocalEvent{
  final Locale local_lang;

  LocalLanguage({required this.local_lang});
  @override
  List<Object?> get props => [local_lang];
}
