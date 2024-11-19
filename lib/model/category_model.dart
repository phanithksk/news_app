class CategoryModel {
  int? code;
  String? message;
  dynamic data;

  CategoryModel({this.code, this.message, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
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
  dynamic categories;
  dynamic news;

  Data({this.categories, this.news});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
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
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (news != null) {
      data['news'] = news!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? title;

  Categories({this.id, this.title});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}

class News {
  int? id;
  int? categoriesId;
  String? category;
  String? title;
  String? createdAt;
  String? shortDescription;
  String? thumbnail;
  String? user;
  String? userProfile;

  News(
      {this.id,
      this.categoriesId,
      this.category,
      this.title,
      this.createdAt,
      this.shortDescription,
      this.thumbnail,
      this.user,
      this.userProfile});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoriesId = json['categories_id'];
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
    data['categories_id'] = categoriesId;
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
