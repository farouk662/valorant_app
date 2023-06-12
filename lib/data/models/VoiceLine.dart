import 'package:valorant_app/data/models/MediaList.dart';

class VoiceLine {
  VoiceLine({
      this.minDuration, 
      this.maxDuration, 
      this.mediaList,});

  VoiceLine.fromJson(dynamic json) {
    minDuration = json['minDuration'];
    maxDuration = json['maxDuration'];
    if (json['mediaList'] != null) {
      mediaList = [];
      json['mediaList'].forEach((v) {
        mediaList!.add(MediaList.fromJson(v));
      });
    }
  }
  double? minDuration;
  double? maxDuration;
  List<MediaList>? mediaList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['minDuration'] = minDuration;
    map['maxDuration'] = maxDuration;
    if (mediaList != null) {
      map['mediaList'] = mediaList!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}