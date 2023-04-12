//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:music_player/song.dart';
// import 'Paatt.dart';
//
// class Music_player1 extends StatefulWidget {
//   @override
//   _Music_player1State createState() => _Music_player1State();
// }
//
// class _Music_player1State extends State<Music_player1>
//     with SingleTickerProviderStateMixin {
//   late AnimationController
//       iconController; // make sure u have flutter sdk > 2.12.0 (null safety)
//
//   bool isAnimated = false;
//   bool showPlay = true;
//   bool shopPause = false;
//
//   AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
//
//   @override
//   void initState() {
//     BlocProvider.of<MusicBloc>(context).add(Fetchmusic());
//     // TODO: implement initState
//     super.initState();
//
//     iconController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 1000));
//
//     audioPlayer.open(
//         Audio.network(
//             'https://scd.dlod.link/?expire=1677582367955&p=FyGmOyyeyfMbRf5X2f4gz0hkNu8SVMLdP3kpuAP3xUWhDSCIUIk7pP_x-H70JtRF3umKo-21TROLSU8GVI5gnzSaIlxAtGMPnlMzrRW7eylLCOT4xJ2s9UngYHKug7uynFMkEk8sEmt44Kr144LQN1KDN_8SHpwmIlyKp-iANvPz4hfnxcggpQqfXfUmdIysdxcOWJmh0g684_r5Nwv-Rg&s=zvakVSD3Gbchi3CaWsbrC2_0aFOfVj63Pf1gY7S5s0s'),
//         autoStart: false,
//         showNotification: true);
//   }
//
//   late  Song  _Music1;
//
//   Song get Music1 => _Music1;
//
//   set Music1(Song value) {
//     _Music1 = value;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<MusicBloc, MusicState>(
//         builder: (context, state) {
//           if (state is MusicblocLoading) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } if (state is MusicgblocLoaded) {
//             Music1=  BlocProvider.of<MusicBloc>(context).trendingMusic;
//           return Column(
//             children: [
//               Container(
//                 height: 100,
//                 width: 400,
//                 color: Colors.black,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 150),
//                   child: Row(
//                     children: [
//                       Text(
//                         "Songs",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                             color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 200),
//                 child: Container(
//                   height: 200,
//                   width: 250,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.deepPurple,
//                   ),
//                   child: ClipRRect(
//                     child: Image.asset(
//                       "asset/Screenshot_20230228_115057_Music_1.jpg",
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   InkWell(
//                     child: Icon(CupertinoIcons.backward_fill),
//                     onTap: () {
//                       audioPlayer.seekBy(Duration(seconds: -10));
//                     },
//                   ),
//                   AnimatedIcon(
//                     icon: AnimatedIcons.play_pause,
//                     progress: iconController,
//                     size: 50,
//                   ),
//                   InkWell(
//                     child: Icon(CupertinoIcons.forward_fill),
//                     onTap: () {
//                       audioPlayer.seekBy(Duration(seconds: 10));
//                       audioPlayer.seek(Duration(seconds: 10));
//                       audioPlayer.next();
//                     },
//                   ),
//                 ],
//               ),
//               Text(Music1.spotifyTrack!.album!.name.toString())
//             ],
//           );
//         }else{return SizedBox();}},
//       ),
//     );
//   }
// }
