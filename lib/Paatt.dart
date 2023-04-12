import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meta/meta.dart';
import 'package:music_player/song.dart';

import 'music_api.dart';

part 'music_event.dart';
part 'music_state.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  late Song trendingMusic;
  MusicApi moviesApi=MusicApi();
  MusicBloc() : super(MusicInitial()) {
    on<MusicEvent>((event, emit)async {
      emit(MusicblocLoading());
      try{

        trendingMusic = await moviesApi.getMusic();
        emit(MusicgblocLoaded());
      } catch(e){
        emit(MusicgblocError());}
      // TODO: implement event handler
    });
  }
}
