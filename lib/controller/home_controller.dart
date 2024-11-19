import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/services/api_services.dart';
import 'package:news_app/model/breaking_news_model.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/model/search_model.dart';
import 'package:news_app/model/single_news_model.dart';

class HomeController extends GetxController {
  ApiBaseHelper apihelper = ApiBaseHelper();
  final isLoading = false.obs;

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

  List saveData = [
    {
      "id": 1,
      "title":
          "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
      "date": "09 jun 2024",
      "time": "09:00PM",
      "view": "2K view",
      "subscribe": "3K view",
      "profile_name": "CCN NEws",
      "profile":
          "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
      "image":
          'https://images.7news.com.au/publication/C-14962003/1fb8b3706ba4c42cf89d8369610b13bb3e1f26d7-16x9-x0y0w1280h720.jpg?imwidth=1024&impolicy=sevennews_v2',
      "description":
          "PHNOM PENH — Cambodia’s long-serving leader said Tuesday his government will amend the country’s election law to bar anyone who fails to vote from running as a candidate in future elections, in his latest move to marginalize his political foes.Prime Minister Hun Sen said the change is needed because candidates for public office need to show their civic responsibility. He said the amendment will be ready for approval by lawmakers before a July 23 general election. The bill’s passage is a certainty, since all members of the National Assembly are members of Hun Sen’s ruling Cambodian People’s Party.",
      "album_image": [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_Q9oKQoEjyYJs6fk-iBp_sEW7Yw3jP9QA0w&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWwjdCn9DEWNHTBmcjeZ_sFfQJxY2-XhC0OCBxQF65ggbewYAvHaz0z9l-7LrghTkiFAk&usqp=CAU",
      ]
    },
    {
      "id": 2,
      "title":
          "Teenage MMA prodigy Adrian Lee continues family dynasty with epic ONE debut",
      "date": "08 jun 2024",
      "time": "19:00PM",
      "view": "1k view",
      "subscribe": "3K view",
      "profile_name": "PNN NEws",
      "profile":
          "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
      "image":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3A3g9b17lAG9vFep8IaRlRsfZY52L4XIeYra7Pz7hAtlo9rC7s-c75eXDtSnX6FdZYl8&usqp=CAU',
      "description":
          "PHNOM PENH — Cambodia’s long-serving leader said Tuesday his government will amend the country’s election law to bar anyone who fails to vote from running as a candidate in future elections, in his latest move to marginalize his political foes.Prime Minister Hun Sen said the change is needed because candidates for public office need to show their civic responsibility. He said the amendment will be ready for approval by lawmakers before a July 23 general election. The bill’s passage is a certainty, since all members of the National Assembly are members of Hun Sen’s ruling Cambodian People’s Party.",
      "album_image": [
        "https://gdb.voanews.com/06a20000-0aff-0242-2440-08db0c17a5c7_cx0_cy6_cw0_w144_r1.png",
        "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
      ]
    },
    {
      "id": 3,
      "title":
          "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
      "date": "09 jun 2024",
      "time": "02:00PM",
      "view": "8k view",
      "subscribe": "20K view",
      "profile_name": "ABC NEws",
      "profile":
          "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
      "image":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
      "description":
          "PHNOM PENH — Cambodia’s long-serving leader said Tuesday his government will amend the country’s election law to bar anyone who fails to vote from running as a candidate in future elections, in his latest move to marginalize his political foes.Prime Minister Hun Sen said the change is needed because candidates for public office need to show their civic responsibility. He said the amendment will be ready for approval by lawmakers before a July 23 general election. The bill’s passage is a certainty, since all members of the National Assembly are members of Hun Sen’s ruling Cambodian People’s Party.",
      "album_image": [
        "https://gdb.voanews.com/06a20000-0aff-0242-2440-08db0c17a5c7_cx0_cy6_cw0_w144_r1.png",
        "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
      ]
    },
    {
      "id": 4,
      "title":
          "Cambodian Leader Says People Who Don't Vote Will Be Barred from Being Candidates in Future Elections",
      "date": "09 jun 2024",
      "view": "9k view",
      "time": "05:30 PM",
      "subscribe": "8K subscribe",
      "profile_name": "MYTV NEws",
      "profile":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
      "image":
          "https://gdb.voanews.com/01000000-0a00-0242-4952-08db674ac57a_w256_r1.jpg",
      "description":
          "PHNOM PENH — Cambodia’s long-serving leader said Tuesday his government will amend the country’s election law to bar anyone who fails to vote from running as a candidate in future elections, in his latest move to marginalize his political foes.Prime Minister Hun Sen said the change is needed because candidates for public office need to show their civic responsibility. He said the amendment will be ready for approval by lawmakers before a July 23 general election. The bill’s passage is a certainty, since all members of the National Assembly are members of Hun Sen’s ruling Cambodian People’s Party.",
      "album_image": [
        "https://gdb.voanews.com/01000000-0aff-0242-7036-08db0db532e3_cx0_cy10_cw0_w144_r1.png",
        "https://gdb.voanews.com/01000000-0aff-0242-94d2-08db3a4c1be6_cx0_cy7_cw0_w144_r1.png",
      ]
    },
    {
      "id": 5,
      "title": "What dates are A-level exams and when is results day 2024?",
      "date": "09 jun 2024",
      "view": "250 views",
      "time": "08:50 PM",
      "subscribe": "9K subscribe",
      "profile_name": "CCN NEws",
      "profile":
          "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
      "image":
          "https://ichef.bbci.co.uk/news/1536/cpsprodpb/1242E/production/_133289747_getty-examsclose.jpg.webp",
      "description":
          "Exam season is under way for A-level students in England, Wales and Northern Ireland. Here is your full guide to this year's exams.When are the 2024 A-level exams taking place? Exams for A-level students run from 13 May until the end of June.Your school will give you an exam timetable and the exact dates will depend on which exam board you are using (such as AQA, OCR, Pearson, CCEA, or WJEC).",
      "album_image": [
        "https://ichef.bbci.co.uk/news/1536/cpsprodpb/14C02/production/_129649948_alevelsresults.jpg.webp",
        "https://www.bbc.com/news/articles/c033dp0z1edo",
      ]
    },
  ];
}
