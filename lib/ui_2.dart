import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Paatt.dart';


class Music_player extends StatefulWidget {
  @override
  _Music_playerState createState() => _Music_playerState();
}

class _Music_playerState extends State<Music_player>
    with SingleTickerProviderStateMixin {
  late AnimationController
  iconController; // make sure u have flutter sdk > 2.12.0 (null safety)

  bool isAnimated = false;
  bool showPlay = true;
  bool shopPause = false;

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    BlocProvider.of<MusicBloc>(context).add(Fetchmusic());
    // TODO: implement initState
    super.initState();

    iconController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    audioPlayer.open(
        Audio.network('https://scd.dlod.link/?expire=1677839308141&p=NPhpqUB9HNpxRge54pqC2Re7LHJaKYLuqUWxslY-6pIA9bI3v-f9HEEwFOmf26AGZM6G8f_SA6qg2XjhwgR6TrFOD9RU3505eWkQWzFA1s6VFV_5p0vgKAOz_QcR71aXFSk8rOJBpB0qZ2dtp2ziIPsFpot_y18jTEhNUBXnd4KJpnND0vNYAPIeIZEqYxau-QtwtyXkXOjeZq5i2tVzlA&s=MTYTMdOFU9aoOgAUbbnWgnwD3a6FSx-lowzD6CB3JvA'), autoStart: false, showNotification: true);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body:


        Center(
          child: BlocBuilder<MusicBloc, MusicState>(
            builder: (context, state) {
              if (state is MusicgblocLoaded)
              {
             var music1 = BlocProvider.of<MusicBloc>(context)
                  .trendingMusic;}
              if (state is MusicblocLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "asset/Screenshot_20230228_115057_Music_1.jpg",
                    width: 300,),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Icon(Icons.skip_previous), onTap: () {
                        audioPlayer.seekBy(Duration(seconds: -10));
                      },),
                      GestureDetector(
                        onTap: () {
                          AnimateIcon();
                        },
                        child: AnimatedIcon(
                          icon: AnimatedIcons.play_pause,
                          progress: iconController,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        child: Icon(Icons.skip_next), onTap: () {
                        audioPlayer.seekBy(Duration(seconds: 10));
                        audioPlayer.seek(Duration(seconds: 10));
                        audioPlayer.next();
                      },),
                    ],
                  ),

              ProgressBar(
              progress:Duration.zero,
              buffered:  Duration.zero,
              total:  Duration(milliseconds: 258986),
              progressBarColor: Colors.red,
              baseBarColor: Colors.white.withOpacity(0.24),
              bufferedBarColor: Colors.white.withOpacity(0.24),
              thumbColor: Colors.white,
              barHeight: 3.0,
              thumbRadius: 5.0,
              onSeek: (duration) {
              audioPlayer.seek(duration);
              },
              )
                ],
              );
            },
          ),
        ));
  }

  void AnimateIcon() {
    setState(() {
      isAnimated = !isAnimated;

      if (isAnimated) {
        iconController.forward();
        audioPlayer.play();
        audioPlayer.seek(Duration(milliseconds: 258986));
      } else {
        iconController.reverse();
        audioPlayer.pause();
      }
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    iconController.dispose();
    audioPlayer.dispose();
    super.dispose();
  }
}