import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_responsive/Responsiveness/responsive.dart';
import 'package:netflix_responsive/models/content_model.dart';
import 'package:video_player/video_player.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  const ContentHeader({Key? key,required this.featuredContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(desktop: _ContentHeaderDesktop(featuredContent:featuredContent),
        mobile: _ContentHeaderMobile(featuredContent:featuredContent),
        tablet: _ContentHeaderMobile(featuredContent:featuredContent));
  }
}


class _ContentHeaderMobile extends StatelessWidget {
  final Content featuredContent;
  const _ContentHeaderMobile({Key? key,required this.featuredContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featuredContent.imageUrl),
                  fit: BoxFit.cover
              )
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black,Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent.titleImageUrl),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalIconButton(icon:Icons.add, title:"List",onTap:()=>print("My List"),),

                _ContentHeaderButton(onTap: ()=>print('Play'), title: 'Play',icon: Icons.play_arrow,),

                VerticalIconButton(icon:Icons.info_outline , title:"info", onTap:()=>print("Info"),),
              ],
            ))
      ],
    );
  }
}


class _ContentHeaderDesktop extends StatefulWidget {
  final Content featuredContent;
  const _ContentHeaderDesktop({Key? key,required this.featuredContent}) : super(key: key);

  @override
  State<_ContentHeaderDesktop> createState() => _ContentHeaderDesktopState();
}

class _ContentHeaderDesktopState extends State<_ContentHeaderDesktop> {
late VideoPlayerController _videoController;
bool isMute=true;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoController=VideoPlayerController.network(widget.featuredContent.videoUrl)
  ..initialize().then((_) => setState((){}) )..setVolume(0)..play();
  }

  void dispose(){
  super.dispose();
  _videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> _videoController.value.isPlaying?
      _videoController.pause():
      _videoController.play(),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          AspectRatio(aspectRatio:_videoController.value.isInitialized?
          _videoController.value.aspectRatio:
          2.344,
          child: _videoController.value.isInitialized?
            VideoPlayer(_videoController):
            Image.asset(widget.featuredContent.imageUrl, fit: BoxFit.cover,),
          ),
          AspectRatio(aspectRatio:_videoController.value.isInitialized?
          _videoController.value.aspectRatio:
          2.344,
            child:Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black,Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  )
              ),
            ),
          ),
          Positioned(
              left: 60,
              right: 60,
              bottom: 150,
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 250,
                    child: Image.asset(widget.featuredContent.titleImageUrl),
                  ),
                  const SizedBox(height: 15,),
                  Text(widget.featuredContent.description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(2.0,4.0),
                        blurRadius: 6,
                      ),
                    ],
                  ),),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      _ContentHeaderButton(onTap: ()=>print('Play'), title: 'Play', icon: Icons.play_arrow,),

                      const SizedBox(width: 16,),
                      _ContentHeaderButton(onTap: ()=>print('More info'), title: 'More info', icon: Icons.info_outline,),
                      const SizedBox(width: 20,),

                      if(_videoController.value.isInitialized)
                        IconButton(
                          icon: Icon(
                            isMute?Icons.volume_off:Icons.volume_up,
                          ),
                          color: Colors.white,
                          iconSize: 30,
                          onPressed: () {
                            setState(() {
                            print("mute");
                            isMute? _videoController.setVolume(100): _videoController.setVolume(0);
                            isMute=_videoController.value.volume==0;
                          });
                          },
                        ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}


class _ContentHeaderButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData icon;
  const _ContentHeaderButton({Key? key,required this.title,required this.onTap,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed:onTap,
        style: TextButton.styleFrom(
            padding: Responsive.isMoblie(context)?
            const EdgeInsets.fromLTRB(15, 5, 20, 5):
            const EdgeInsets.fromLTRB(25, 10, 30, 10),
            backgroundColor: Colors.white),
        icon: Icon(icon,size: 30.0,color: Colors.black,),
        label:Text(title,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black),));
  }
}

class VerticalIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const VerticalIconButton({Key? key,required this.title,required this.onTap,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon,color: Colors.white,),
          const SizedBox(height: 2.0,),
          Text(title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}
