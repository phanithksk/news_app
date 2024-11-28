class SingleNewsModel {
  int? code;
  String? message;
  List<Data>? data;

  SingleNewsModel({this.code, this.message, this.data});

  SingleNewsModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? bookmark;
  int? userId;
  String? username;
  String? title;
  String? share;
  String? createdAt;
  int? orderby;
  String? thumbnail;
  String? userProfile;
  List<Albums>? albums;
  String? content;

  Data(
      {this.id,
      this.bookmark,
      this.userId,
      this.username,
      this.title,
      this.share,
      this.createdAt,
      this.orderby,
      this.thumbnail,
      this.userProfile,
      this.albums,
      this.content});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookmark = json['bookmark'];
    userId = json['user_id'];
    username = json['username'];
    title = json['title'];
    share = json['share'];
    createdAt = json['created_at'];
    orderby = json['orderby'];
    thumbnail = json['thumbnail'];
    userProfile = json['user_profile'];
    if (json['albums'] != null) {
      albums = <Albums>[];
      json['albums'].forEach((v) {
        albums!.add(Albums.fromJson(v));
      });
    }
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bookmark'] = bookmark;
    data['user_id'] = userId;
    data['username'] = username;
    data['title'] = title;
    data['share'] = share;
    data['created_at'] = createdAt;
    data['orderby'] = orderby;
    data['thumbnail'] = thumbnail;
    data['user_profile'] = userProfile;
    if (albums != null) {
      data['albums'] = albums!.map((v) => v.toJson()).toList();
    }
    data['content'] = content;
    return data;
  }
}

class Albums {
  int? albumsId;
  String? name;
  int? primary;

  Albums({this.albumsId, this.name, this.primary});

  Albums.fromJson(Map<String, dynamic> json) {
    albumsId = json['albums_id'];
    name = json['name'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['albums_id'] = albumsId;
    data['name'] = name;
    data['primary'] = primary;
    return data;
  }
}
