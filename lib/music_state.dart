part of 'Paatt.dart';

@immutable
abstract class MusicState {}

class MusicInitial extends MusicState {}

class MusicblocLoading extends MusicState {}
class MusicgblocLoaded extends MusicState {}
class MusicgblocError extends MusicState {}
