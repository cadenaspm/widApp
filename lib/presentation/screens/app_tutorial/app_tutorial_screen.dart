import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlideInfo>[
  SlideInfo(
    title: "Busca la comida",
    caption: "Non minim ad labore minim ipsum deserunt sit.",
    imageUrl: "assets/images/1.png",
  ),
  SlideInfo(
    title: "Entrega rapida",
    caption:
        "Minim labore cupidatat enim nulla laborum consectetur nisi tempor ut.",
    imageUrl: "assets/images/2.png",
  ),
  SlideInfo(
    title: "Disculoa la commida",
    caption:
        "Aliqua magna est in Lorem reprehenderit sunt ipsum laboris irure incididunt fugiat pariatur consequat.",
    imageUrl: "assets/images/3.png",
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageController = PageController();
  bool endPage = false;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      
      final page = pageController.page ?? 0;
      if(!endPage && page >= (slides.length - 1.5 )){
        setState(() {
          endPage = true;
        });
      }
      print('${pageController.page}');

    });
  }

  @override
  void dispose() {
    pageController.dispose();
    
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: BouncingScrollPhysics(),
            children: slides
                .map(
                  (slide) => _Slide(
                    title: slide.title,
                    caption: slide.caption,
                    imageUrl: slide.imageUrl,
                  ),
                )
                .toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: Text('Salir'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          endPage
            ? Positioned(
              right: 20,
              bottom: 50,
              child: FadeInRight(
                from: 15,
                delay: const Duration(milliseconds: 500  ),
                child: FilledButton(
                  onPressed: () => context.pop(),
                  child: const Text('Comenzar'),
                ),
              ),
            )
            :SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 20),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
