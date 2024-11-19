class SingleNewsModel {
  int? code;
  String? message;
  dynamic data;

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
  int? userId;
  String? username;
  String? title;
  String? share;
  String? createdAt;
  int? orderby;
  String? thumbnail;
  String? userProfile;
  String? content;

  Data(
      {this.id,
      this.userId,
      this.username,
      this.title,
      this.share,
      this.createdAt,
      this.orderby,
      this.thumbnail,
      this.userProfile,
      this.content});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    username = json['username'];
    title = json['title'];
    share = json['share'];
    createdAt = json['created_at'];
    orderby = json['orderby'];
    thumbnail = json['thumbnail'];
    userProfile = json['user_profile'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['username'] = username;
    data['title'] = title;
    data['share'] = share;
    data['created_at'] = createdAt;
    data['orderby'] = orderby;
    data['thumbnail'] = thumbnail;
    data['user_profile'] = userProfile;
    data['content'] = content;
    return data;
  }
}
