
import 'package:flutter/material.dart';
import 'package:flutter_youtube_training/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {
// String time = 'loading';
  // setState(() {
  //     time = instance.time!;
  //   });

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
   
  
  }
  
  @override
  initState() {
    super.initState();
    print('initstate function ran');
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCircle(
          
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}