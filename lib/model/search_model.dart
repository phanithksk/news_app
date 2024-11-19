class SearchModel {
  int? code;
  String? message;
  dynamic data;

  SearchModel({this.code, this.message, this.data});

  SearchModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  dynamic users;
  dynamic news;

  Data({this.users, this.news});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(Users.fromJson(v));
      });
    }
    if (json['news'] != null) {
      news = <News>[];
      json['news'].forEach((v) {
        news!.add(News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    if (news != null) {
      data['news'] = news!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Users {
  int? id;
  String? name;
  String? userProfile;

  Users({this.id, this.name, this.userProfile});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userProfile = json['user_profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['user_profile'] = userProfile;
    return data;
  }
}

class News {
  int? id;
  String? newsTitle;
  String? createdAt;
  String? shortDescription;
  String? thumbnail;
  String? user;
  String? userProfile;
  String? category;

  News(
      {this.id,
      this.newsTitle,
      this.createdAt,
      this.shortDescription,
      this.thumbnail,
      this.user,
      this.userProfile,
      this.category});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    newsTitle = json['news_title'];
    createdAt = json['created_at'];
    shortDescription = json['short_description'];
    thumbnail = json['thumbnail'];
    user = json['user'];
    userProfile = json['user_profile'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['news_title'] = newsTitle;
    data['created_at'] = createdAt;
    data['short_description'] = shortDescription;
    data['thumbnail'] = thumbnail;
    data['user'] = user;
    data['user_profile'] = userProfile;
    data['category'] = category;
    return data;
  }
}
