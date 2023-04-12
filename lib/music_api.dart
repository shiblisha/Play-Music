import 'dart:convert';


import 'package:http/http.dart';

import 'song.dart';
import 'music_api_clint.dart';


class MusicApi{


  ApiClient apiClient = ApiClient();



  Future<Song> getMusic(
      ) async {
    String trendingpath = 'https://spotify-scraper.p.rapidapi.com/v1/track/download/soundcloud?track=Photograph Ed Sheeran';

    Response response = await apiClient.invokeAPI(trendingpath, 'GET1', null);

    return Song.fromJson(jsonDecode(response.body));


  }

}
