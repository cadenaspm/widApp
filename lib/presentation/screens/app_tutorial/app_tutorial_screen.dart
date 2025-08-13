import 'package:flutter/material.dart';

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

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
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

          )
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
