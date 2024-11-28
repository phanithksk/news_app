import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/services/api_services.dart';
import 'package:news_app/model/breaking_news_model.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/model/list_save_news_model.dart';
import 'package:news_app/model/post_save_news_model.dart';
import 'package:news_app/model/search_model.dart';
import 'package:news_app/model/single_news_model.dart';

class HomeController extends GetxController {
  ApiBaseHelper apihelper = ApiBaseHelper();
  final isLoading = false.obs;
  final isSave = false.obs;

  TextEditingController txtSearchNews = TextEditingController();

  void clearAllData() {
    saveNewsData.value.data?.clear();
    update();
  }

// News with category
  Rx<CategoryModel> newsDataModel = CategoryModel().obs;
  Future<CategoryModel?> getNewsData({required int selectedCategoryId}) async {
    isLoading(true);
    try {
      var response = await apihelper.onNetworkRequesting(
        url: 'news?categories_id=$selectedCategoryId',
        methode: METHODE.get,
      );
      newsDataModel.value = CategoryModel.fromJson(response);
    } on ErrorModel catch (error) {
      debugPrint('---------- Error Status Code: ${error.statusCode}');
      isLoading(false);
    } catch (e) {
      debugPrint('-------catchError: $e');
    }
    isLoading(false);
    return null;
  }

  // Breaking news
  Rx<BreakingNewsModel> breakingNewsData = BreakingNewsModel().obs;
  Future<BreakingNewsModel?> getBreakingNewsData() async {
    isLoading(true);
    try {
      var response = await apihelper.onNetworkRequesting(
        url: 'breaking-news',
        methode: METHODE.get,
      );
      breakingNewsData.value = BreakingNewsModel.fromJson(response);
    } on ErrorModel catch (error) {
      debugPrint('---------- Error Status Code: ${error.statusCode}');
      isLoading(false);
    } catch (e) {
      debugPrint('-------catchError: $e');
    }
    isLoading(false);
    return null;
  }

  // Single news
  Rx<SingleNewsModel> singleNewsData = SingleNewsModel().obs;
  Future<SingleNewsModel?> getSingleNewsData({required int newID}) async {
    try {
      var response = await apihelper.onNetworkRequesting(
        url: 'single-news?id=$newID',
        methode: METHODE.get,
      );
      singleNewsData.value = SingleNewsModel.fromJson(response);
    } on ErrorModel catch (error) {
      debugPrint('---------- Error Status Code: ${error.statusCode}');
    } catch (e) {
      debugPrint('-------catchError: $e');
    }
    return null;
  }

  // Search news
  Rx<SearchModel> searchNewsData = SearchModel().obs;
  Future<SearchModel?> getSearchData({required String query}) async {
    try {
      var response = await apihelper.onNetworkRequesting(
        url: 'search-news?query=$query',
        methode: METHODE.get,
      );
      searchNewsData.value = SearchModel.fromJson(response);
    } on ErrorModel catch (error) {
      debugPrint('---------- Error Status Code: ${error.statusCode}');
    } catch (e) {
      debugPrint('-------catchError: $e');
    }
    return null;
  }

  // List of Save news
  Rx<ListSaveNewsModel> saveNewsData = ListSaveNewsModel().obs;
  Future<ListSaveNewsModel?> getsaveNewsData() async {
    try {
      var response = await apihelper.onNetworkRequesting(
        url: 'get-save-news',
        methode: METHODE.get,
      );
      debugPrint("-------response:$response");
      saveNewsData.value = ListSaveNewsModel.fromJson(response);
    } on ErrorModel catch (error) {
      debugPrint('---------- Error Status Code: ${error.statusCode}');
    } catch (e) {
      debugPrint('-------catchError: $e');
    }
    return null;
  }

  Rx<SaveNewsModel> postSaveNewsData = SaveNewsModel().obs;
  Future<SaveNewsModel?> postSaveNews({required int newsID}) async {
    try {
      var response = await apihelper.onNetworkRequesting(
        url: 'save-news',
        methode: METHODE.post,
        body: {
          "id": newsID,
        },
      );
      debugPrint("-------response:$response");
      postSaveNewsData.value = SaveNewsModel.fromJson(response);
    } on ErrorModel catch (error) {
      debugPrint('---------- Error Status Code: ${error.statusCode}');
    } catch (e) {
      debugPrint('-------catchError: $e');
    }
    return null;
  }
}
