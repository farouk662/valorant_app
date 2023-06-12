class Abilities {
  Abilities({
      this.slot, 
      this.displayName, 
      this.description, 
      this.displayIcon,});

  Abilities.fromJson(dynamic json) {
    slot = json['slot'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
  }
  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slot'] = slot;
    map['displayName'] = displayName;
    map['description'] = description;
    map['displayIcon'] = displayIcon;
    return map;
  }

}