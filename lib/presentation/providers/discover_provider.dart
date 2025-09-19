import 'package:flutter/material.dart';
import 'package:toktik/Infrastructure/models/local_video_model.dart';
import 'package:toktik/domain/entities/videos_post.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: repository, Datasource.

  bool initialLoading = true;
  List<VideosPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(Duration(seconds: 2));

    final List<VideosPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideosPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
