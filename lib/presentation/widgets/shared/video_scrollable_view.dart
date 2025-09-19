import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/videos_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideosPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection:
          Axis.vertical, //cambia la direccion porr default es horizontal
      physics: BouncingScrollPhysics(), //Me ayuda con efecto de rebote
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideosPost videoPost = videos[index];
        return Stack(
          children: [
            //Video Player + gradiente

            //Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
