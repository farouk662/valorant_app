import 'Role.dart';
import 'Abilities.dart';
import 'VoiceLine.dart';

class AgentModel {
  AgentModel({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.developerName,
    required this.characterTags,
    required this.displayIcon,
    required this.displayIconSmall,
    required this.bustPortrait,
    required this.fullPortrait,
    required this.fullPortraitV2,
    required this.killfeedPortrait,
    required this.background,
    required this.backgroundGradientColors,
    required this.assetPath,
    required this.isFullPortraitRightFacing,
    required this.isPlayableCharacter,
    required this.isAvailableForTest,
    required this.isBaseContent,
    required this.role,
    required this.abilities,
    required this.voiceLine,
  });

  AgentModel.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    developerName = json['developerName'];
    characterTags = json['characterTags'];
    displayIcon = json['displayIcon'];
    displayIconSmall = json['displayIconSmall'];
    bustPortrait = json['bustPortrait'];
    fullPortrait = json['fullPortrait'];
    fullPortraitV2 = json['fullPortraitV2'];
    killfeedPortrait = json['killfeedPortrait'];
    background = json['background'];
    backgroundGradientColors = json['backgroundGradientColors'] != null
        ? json['backgroundGradientColors'].cast<String>()
        : [];
    assetPath = json['assetPath'];
    isFullPortraitRightFacing = json['isFullPortraitRightFacing'];
    isPlayableCharacter = json['isPlayableCharacter'];
    isAvailableForTest = json['isAvailableForTest'];
    isBaseContent = json['isBaseContent'];
    role = (json['role'] != null ? Role.fromJson(json['role']) : null)!;
    if (json['abilities'] != null) {
      abilities = [];
      json['abilities'].forEach((v) {
        abilities!.add(Abilities.fromJson(v));
      });
    }
    voiceLine = (json['voiceLine'] != null
        ? VoiceLine.fromJson(json['voiceLine'])
        : null)!;
  }

  String? uuid;
  String? displayName;
  String? description;
  String? developerName;
  dynamic characterTags;
  String? displayIcon;
  String? displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  String? killfeedPortrait;
  String? background;
  List<String>? backgroundGradientColors;
  String? assetPath;
  bool? isFullPortraitRightFacing;
  bool? isPlayableCharacter;
  bool? isAvailableForTest;
  bool? isBaseContent;
  Role? role;
  List<Abilities>? abilities;
  VoiceLine? voiceLine;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['description'] = description;
    map['developerName'] = developerName;
    map['characterTags'] = characterTags;
    map['displayIcon'] = displayIcon;
    map['displayIconSmall'] = displayIconSmall;
    map['bustPortrait'] = bustPortrait;
    map['fullPortrait'] = fullPortrait;
    map['fullPortraitV2'] = fullPortraitV2;
    map['killfeedPortrait'] = killfeedPortrait;
    map['background'] = background;
    map['backgroundGradientColors'] = backgroundGradientColors;
    map['assetPath'] = assetPath;
    map['isFullPortraitRightFacing'] = isFullPortraitRightFacing;
    map['isPlayableCharacter'] = isPlayableCharacter;
    map['isAvailableForTest'] = isAvailableForTest;
    map['isBaseContent'] = isBaseContent;
    if (role != null) {
      map['role'] = role!.toJson();
    }
    if (abilities != null) {
      map['abilities'] = abilities!.map((v) => v.toJson()).toList();
    }
    if (voiceLine != null) {
      map['voiceLine'] = voiceLine!.toJson();
    }
    return map;
  }
}
