import 'package:flutter_cloud_music/common/model/privilege_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'song_model.g.dart';

@JsonSerializable()
class Song extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'ar')
  List<Ar> ar;

  @JsonKey(name: 'alia')
  List<String> alia;

  @JsonKey(name: 'fee')
  int fee;

  @JsonKey(name: 'v')
  int v;

  @JsonKey(name: 'al')
  AlbumSimple al;

  @JsonKey(name: 'copyright')
  int copyright;

  @JsonKey(name: 'originCoverType')
  int originCoverType;

  @JsonKey(name: 'mv')
  int mv;

  @JsonKey(name: 'videoInfo')
  VideoInfo? videoInfo;

  @JsonKey(name: 'privilege')
  PrivilegeModel? privilege;

  @JsonKey(name: 'actionType')
  String? actionType;

  Song(
      this.name,
      this.id,
      this.ar,
      this.alia,
      this.fee,
      this.v,
      this.al,
      this.copyright,
      this.originCoverType,
      this.mv,
      this.videoInfo,
      this.privilege,
      this.actionType);

  factory Song.fromJson(Map<String, dynamic> srcJson) =>
      _$SongFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SongToJson(this);
}

@JsonSerializable()
class Ar extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'tns')
  List<dynamic>? tns;

  @JsonKey(name: 'alias')
  List<dynamic>? alias;

  Ar(
    this.id,
    this.name,
    this.tns,
    this.alias,
  );

  factory Ar.fromJson(Map<String, dynamic> srcJson) => _$ArFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ArToJson(this);
}

@JsonSerializable()
class AlbumSimple extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'picUrl')
  String? picUrl;

  @JsonKey(name: 'pic_str')
  String? picStr;

  AlbumSimple(this.id, this.name, this.picUrl, this.picStr);

  factory AlbumSimple.fromJson(Map<String, dynamic> srcJson) =>
      _$AlbumSimpleFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AlbumSimpleToJson(this);
}

@JsonSerializable()
class VideoInfo extends Object {
  @JsonKey(name: 'moreThanOne')
  bool moreThanOne;

  @JsonKey(name: 'video')
  Video? video;

  VideoInfo(
    this.moreThanOne,
    this.video,
  );

  factory VideoInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$VideoInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VideoInfoToJson(this);
}

@JsonSerializable()
class Video extends Object {
  @JsonKey(name: 'vid')
  String? vid;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'playTime')
  int playTime;

  @JsonKey(name: 'coverUrl')
  String? coverUrl;

  @JsonKey(name: 'publishTime')
  int publishTime;

  Video(
    this.vid,
    this.type,
    this.title,
    this.playTime,
    this.coverUrl,
    this.publishTime,
  );

  factory Video.fromJson(Map<String, dynamic> srcJson) =>
      _$VideoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
