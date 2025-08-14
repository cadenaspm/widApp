

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {

  static const name = 'infinte';

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State< InfiniteScrollScreen> {

  List<int> imagesIds = [1,2,3,4,5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;



  @override
  void initState() {
    super.initState();
    
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent) {
        // Add more images
        loadNextPage();
      }
    });
  }

  @override
  void dispose() { 
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  Future loadNextPage() async{

    if(isLoading) return;
    isLoading = true;

    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addFiveImages();

    isLoading = false;

    if(!isMounted) return;

    setState(() {});
  }

  Future<void> onRefresh() async {

    isLoading = true;
    setState(() { });


    await Future.delayed(const Duration(seconds: 2));

    if(!mounted) return;

    final lastId = imagesIds.last;

    imagesIds.clear();
    imagesIds.add(lastId + 1);

    addFiveImages(); 
    setState(() {});
  }

  void moveScrollToTop(){
    if(scrollController.positions.isEmpty) return;

    scrollController.animateTo(
      0, 
      duration: const Duration(milliseconds: 500), 
      curve: Curves.fastOutSlowIn
    );
  }


  void addFiveImages(){
    final lastId = imagesIds.last;

    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Infinite Scroll'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Icon(Icons.chevron_left),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              edgeOffset: 10,
              strokeWidth: 3,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder:  (context, index) {
                  return FadeInImage(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                    placeholder: const AssetImage('assets/images/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/id/${ imagesIds[index] }/500/300'),
                  );
                },
              ),
            ),
            isLoading 
              ? Positioned(
                right: 0,
                left: 0,
                bottom: 40,
                child: Center(
                  child: FadeInUp(
                    child: CircularProgressIndicator(
                      strokeWidth: 4, 
                      color: Colors.white,
                    )))
              )
              : const SizedBox(),
          ],
        ),
      ),
    );
    
  }
}