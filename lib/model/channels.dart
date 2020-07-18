import 'package:player_test/model/videos.dart';

class Channel {
  final String id, title, profilePicUrl, subsCount, vidCount, uploadPlaylistId;
  List<Video> videos;

  Channel({
    this.id,
    this.title,
    this.profilePicUrl,
    this.subsCount,
    this.vidCount,
    this.uploadPlaylistId,
    this.videos,
  });

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      profilePicUrl: map['snippet']['thumbnails']['default']['url'],
      subsCount: map['statistics']['subscriberCount'],
      vidCount: map['statistics']['videoCount'],
      uploadPlaylistId: map['contentDetails']['relatedPlaylists']['uploads']
    );
  }
}
