class ListSaveNewsModel {
  int? code;
  String? message;
  List<Data>? data;

  ListSaveNewsModel({this.code, this.message, this.data});

  ListSaveNewsModel.fromJson(Map<String, dynamic> json) {
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
  String? category;
  String? title;
  String? createdAt;
  String? shortDescription;
  String? thumbnail;
  String? user;
  String? userProfile;

  Data(
      {this.id,
      this.category,
      this.title,
      this.createdAt,
      this.shortDescription,
      this.thumbnail,
      this.user,
      this.userProfile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    title = json['title'];
    createdAt = json['created_at'];
    shortDescription = json['short_description'];
    thumbnail = json['thumbnail'];
    user = json['user'];
    userProfile = json['user_profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['category'] = category;
    data['title'] = title;
    data['created_at'] = createdAt;
    data['short_description'] = shortDescription;
    data['thumbnail'] = thumbnail;
    data['user'] = user;
    data['user_profile'] = userProfile;
    return data;
  }
}
