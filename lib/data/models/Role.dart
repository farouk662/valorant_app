class Role {
  Role({
      this.uuid, 
      this.displayName, 
      this.description, 
      this.displayIcon, 
      this.assetPath,});

  Role.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
    assetPath = json['assetPath'];
  }
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? assetPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['description'] = description;
    map['displayIcon'] = displayIcon;
    map['assetPath'] = assetPath;
    return map;
  }

}