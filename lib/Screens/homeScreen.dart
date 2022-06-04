import 'package:cultfit/Models/headerModel.dart';
import 'package:cultfit/Models/optionModel.dart';
import 'package:cultfit/Widgets/AppBar/homeAppBar.dart';
import 'package:cultfit/Widgets/Content/scrollableCircularContents.dart';
import 'package:cultfit/Widgets/Content/scrollableContentHeader.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController _scrollController;
  double _scrollOffset = 0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 80.0),
        child: HomescreenAppbar(
          scrollOffset: _scrollOffset,
        ),
      ),
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add),
        onPressed: () {
          print("Adding loc");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: ScrollableContentHeader(
              featuredContent: contents[0],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 25),
            sliver: SliverToBoxAdapter(
              child: ScrollableCircularContents(
                title: "Features",
                list: homeScreenOptions,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
