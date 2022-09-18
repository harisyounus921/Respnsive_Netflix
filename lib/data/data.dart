import 'package:flutter/material.dart';
import 'package:netflix_responsive/Screen/HomeScreen/VideoPlayer/Content_header.dart';
import 'package:netflix_responsive/Screen/AssetsScreen/assets.dart';

import '../models/content_model.dart';

final Content sintelContent = Content(
  name: 'Sintel',
  imageUrl: Assets.sintel,
  titleImageUrl: Assets.sintelTitle,
  videoUrl: Assets.sintelVideoUrl,
  description:
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
  color: Colors.black,
);

final List<Content> previews = [
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle, videoUrl: '', description: '',
  ),
  Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle, description: '', videoUrl: '',
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
    description: '', videoUrl: '',
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
    description: '', videoUrl: '',
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
    description: '', videoUrl: '',
  ),
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
    description: '', videoUrl: '',
  ),
  Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
    description: '', videoUrl: '',
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
    description: '', videoUrl: '',
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
    description: '', videoUrl: '',
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
    description: '', videoUrl: '',
  ),
];

final List<Content> myList = [
  Content(name: 'Violet Evergarden', imageUrl: Assets.violetEvergarden, videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Kakegurui', imageUrl: Assets.kakegurui,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Carole and Tuesday', imageUrl: Assets.caroleAndTuesday,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Black Mirror', imageUrl: Assets.blackMirror,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Violet Evergarden', imageUrl: Assets.violetEvergarden,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Kakegurui', imageUrl: Assets.kakegurui,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Carole and Tuesday', imageUrl: Assets.caroleAndTuesday,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Black Mirror', imageUrl: Assets.blackMirror,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
];

final List<Content> originals = [
  Content(name: 'Stranger Things', imageUrl: Assets.strangerThings,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'The Witcher', imageUrl: Assets.witcher,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Stranger Things', imageUrl: Assets.strangerThings,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'The Witcher', imageUrl: Assets.witcher,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
];

final List<Content> trending = [
  Content(name: 'Explained', imageUrl: Assets.explained,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'The Crown', imageUrl: Assets.crown,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Dogs', imageUrl: Assets.dogs,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Explained', imageUrl: Assets.explained,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'The Crown', imageUrl: Assets.crown,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
  Content(name: 'Dogs', imageUrl: Assets.dogs,videoUrl: '', description: '', titleImageUrl: '', color: Colors.black),
];
