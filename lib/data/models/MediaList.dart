class MediaList {
  MediaList({
      this.id, 
      this.wwise, 
      this.wave,});

  MediaList.fromJson(dynamic json) {
    id = json['id'];
    wwise = json['wwise'];
    wave = json['wave'];
  }
  int? id;
  String? wwise;
  String? wave;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['wwise'] = wwise;
    map['wave'] = wave;
    return map;
  }

}