import 'package:flutter/material.dart';
import 'package:netflix_responsive/Responsiveness/responsive.dart';
import 'package:netflix_responsive/Screen/AssetsScreen/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key,required this.scrolloffset}) : super(key: key);
final double scrolloffset;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24.0,),
      color: Colors.black.withOpacity((scrolloffset/350).clamp(0,1).toDouble()),
      child: const Responsive(
         mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
        tablet: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Row(
    children: [
    Image.asset(Assets.netflixLogo0),
    const SizedBox(width: 12.0,),
    Expanded(
    child: Row(
    //crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _AppbarButton(title: "TV Shows", onTap: () {print("TV Shows");}),
        _AppbarButton(title: "Movies", onTap: () {print("TV Shows");}),
        _AppbarButton(title: "My List", onTap: () {print("TV Shows");}),
      ],),),],
    ),);}
}


class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12.0,),
          Expanded(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppbarButton(title: "Home", onTap: () {print("Home");}),

                _AppbarButton(title: "TV Shows", onTap: () {print("TV Shows");}),

                _AppbarButton(title: "Movies", onTap: () {print("Movies");}),

                _AppbarButton(title: "Latest", onTap: () {print("Latest");}),

                _AppbarButton(title: "My List", onTap: () {print("My List");}),
              ],),),
          const Spacer(),
          Expanded(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppBarIcon(Icons: Icons.search, onTab: ()=>print("Searh")),

                _AppbarButton(title: "Home", onTap: () {print("Home");}),

                _AppbarButton(title: "Kids", onTap: () {print("Kids");}),

                _AppbarButton(title: "DVD", onTap: () {print("DVD");}),

                AppBarIcon(Icons: Icons.card_giftcard, onTab: ()=>print("card_giftcard")),

                AppBarIcon(Icons: Icons.notifications, onTab: ()=>print("notifications")),
              ],),),
        ],
      ),);}
}


class AppBarIcon extends StatelessWidget {
  final IconData Icons;
  final VoidCallback onTab;
  const AppBarIcon({Key? key,required this.Icons,required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTab,
      icon: Icon(Icons),
      iconSize: 28.0,
      color: Colors.white,
      padding: EdgeInsets.zero,
    );
  }
}


class _AppbarButton extends StatelessWidget {

final String title;
final VoidCallback onTap;
_AppbarButton({required this.title,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
      onTap: onTap,
      child: Text(title ,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),),
    );
  }
}

