import 'package:flutter/material.dart';
import 'package:netflix_responsive/Provider/scrollofsetProvider.dart';
import 'package:netflix_responsive/Screen/HomeScreen/VideoPlayer/Content_header.dart';
import 'package:netflix_responsive/Screen/HomeScreen/appBar/CustomAppBar.dart';
import 'package:netflix_responsive/Screen/HomeScreen/body/contentList.dart';
import 'package:netflix_responsive/Screen/HomeScreen/body/previews.dart';
import 'package:netflix_responsive/data/data.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  ScrollController? _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController=ScrollController();
    _scrollController?.addListener(() {
      Provider.of<scrollProvider>(context,listen: false).setOffset(_scrollController!.offset);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850], child: const Icon(Icons.cast), onPressed: (){print("cast");},),

      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width,50.0),
        child: Consumer<scrollProvider>(
          builder: (context,scrollProvider,child){
            return CustomAppbar(scrolloffset: scrollProvider.scrollofset,);
          },
        ),
      ),

      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: ContentHeader(featuredContent:sintelContent)
          ),
          SliverPadding(padding: EdgeInsets.only(top: 20),
          sliver: SliverToBoxAdapter(
            child: Preview(key: PageStorageKey('Previews'), title:'Previews', contentList:previews,),
          ),
          ),
          SliverToBoxAdapter(
            child: ContentList(title:'My List', key: PageStorageKey('MyList'), contentList:myList,),
          ),
          SliverToBoxAdapter(
            child: ContentList(title:'Netflix Originals', key: PageStorageKey('NetflixOriginals'), isOriginals:true, contentList:originals,),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 20),
            sliver: SliverToBoxAdapter(
              child: ContentList(title:'Trending', key: PageStorageKey('Trending'), contentList:trending,),
            ),
          ),
        ],
      ),
    );
  }
}
