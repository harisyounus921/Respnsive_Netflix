import 'package:flutter/material.dart';
import 'package:netflix_responsive/Responsiveness/responsive.dart';
import 'package:netflix_responsive/Screen/HomeScreen/HomeScreen.dart';
import 'package:provider/provider.dart';

import '../../Provider/scrollofsetProvider.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget>_screens=[
    const HomeScreen(key:PageStorageKey('homeScreen')),
    const Scaffold(body: Center(child: Text("Games",style: TextStyle(color: Colors.white),)),),
    const Scaffold(body: Center(child: Text("News & Hot",style: TextStyle(color: Colors.white))),),
    const Scaffold(body: Center(child: Text("Quick Laughs",style: TextStyle(color: Colors.white))),),
    const Scaffold(body: Center(child: Text("Downloads",style: TextStyle(color: Colors.white))),),
  ];

  final Map <String,IconData> _icons=const{
    'Home':Icons.home,
    'Games':Icons.pages,
    'News & Hot':Icons.queue_play_next,
    'Quick Laughs':Icons.adb_outlined,
    'Downloads':Icons.download_rounded,
  };

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiProvider(
          providers: [ChangeNotifierProvider(create: (_)=>scrollProvider())],
          child: Builder(builder: (BuildContext context) {
            return _screens[_currentIndex];
    },),
      ),
      bottomNavigationBar: Responsive.isMoblie(context)
     ? BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black ,
        items:_icons.map((title, icon) => MapEntry(
            title, BottomNavigationBarItem(
         icon: Icon(icon,size: 30,),
         label:title,
        ),
        ),
        ).values.toList(),
        currentIndex: _currentIndex,
        selectedFontSize: 11.0,
        unselectedFontSize: 11.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index)=>setState(() {
          _currentIndex=index;
        }),
      ): null,
    );
  }
}
