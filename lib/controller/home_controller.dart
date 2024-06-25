import 'package:get/get.dart';

class HomeController extends GetxController {
  List breakingNews = [
    'https://images.7news.com.au/publication/C-14962003/1fb8b3706ba4c42cf89d8369610b13bb3e1f26d7-16x9-x0y0w1280h720.jpg?imwidth=1024&impolicy=sevennews_v2',
    'https://images.7news.com.au/publication/C-12792409/4fcd9f2f048d08dc21a0b7847ae74fc565211728-16x9-x0y39w750h422.jpg?imwidth=1024&impolicy=sevennews_v2',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3A3g9b17lAG9vFep8IaRlRsfZY52L4XIeYra7Pz7hAtlo9rC7s-c75eXDtSnX6FdZYl8&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz26zcG3bN-GhioV5W8_p7jU5oT_HE0ybJd3NHje5cqBiFhlkBou4CsKnTo0-ZC8owZsQ&usqp=CAU',
  ];

  List aLLbreakingNews = [
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
    },
    {
      "id": 2,
      "title":
          "Iga Swiatek wins French Open against Jasmine Paolini: ‘It doesn’t get more challenging than this’",
      "date": "09 jun 2024",
      "time": "05:00PM",
      "view": "4k view",
      "subscribe": "2K view",
      "profile_name": "TEST NEws",
      "profile":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJBcjL8nvDzAuNsrs1Q-5LmhX59ynk3ACfoA&s",
      "image":
          'https://images.7news.com.au/publication/C-12792409/4fcd9f2f048d08dc21a0b7847ae74fc565211728-16x9-x0y39w750h422.jpg?imwidth=1024&impolicy=sevennews_v2',
    },
    {
      "id": 3,
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
    },
    {
      "id": 4,
      "title":
          "Iga Swiatek wins French Open against Jasmine Paolini: ‘It doesn’t get more challenging than this’",
      "date": "09 jun 2024",
      "time": "20:00PM",
      "view": "9k view",
      "subscribe": "30K view",
      "profile_name": "MYTV NEws",
      "profile":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
      "image":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz26zcG3bN-GhioV5W8_p7jU5oT_HE0ybJd3NHje5cqBiFhlkBou4CsKnTo0-ZC8owZsQ&usqp=CAU',
    },
    {
      "id": 5,
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
    },
  ];

  List category = [
    {
      "id": 1,
      "title": 'All',
      "data": [
        {
          "id": 1,
          "title":
              "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "11:11 AM",
          "subscribe": "11K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
        },
        {
          "id": 2,
          "title":
              "Iga Swiatek wins French Open against Jasmine Paolini: ‘It doesn’t get more challenging than this’",
          "date": "09 jun 2024",
          "view": "4k view",
          "time": "13:50 AM",
          "subscribe": "2K subscribe",
          "profile_name": "TEST NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJBcjL8nvDzAuNsrs1Q-5LmhX59ynk3ACfoA&s",
          "image":
              "https://images.7news.com.au/publication/C-14962003/1fb8b3706ba4c42cf89d8369610b13bb3e1f26d7-16x9-x0y0w1280h720.jpg?imwidth=1024&impolicy=sevennews_v2",
        },
        {
          "id": 3,
          "title":
              "Teenage MMA prodigy Adrian Lee continues family dynasty with epic ONE debut",
          "date": "08 jun 2024",
          "view": "1k view",
          "time": "01:50 AM",
          "subscribe": "30K subscribe",
          "profile_name": "PNN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://images.7news.com.au/publication/C-14961550/47a3fb7a03035d01c1b72e8b6f0cbd3833d1cfa1-16x9-x0y0w1080h608.jpg?imwidth=1024&impolicy=sevennews_v2",
        }
      ]
    },
    {
      "id": 2,
      "title": 'Politic',
      "data": [
        {
          "id": 1,
          "title":
              "Iga Swiatek wins French Open against Jasmine Paolini: ‘It doesn’t get more challenging than this’",
          "date": "09 jun 2024",
          "view": "9k view",
          "time": "05:30 PM",
          "subscribe": "8K subscribe",
          "profile_name": "MYTV NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
          "image":
              "https://images.7news.com.au/publication/C-14962003/1fb8b3706ba4c42cf89d8369610b13bb3e1f26d7-16x9-x0y0w1280h720.jpg?imwidth=1024&impolicy=sevennews_v2",
        },
        {
          "id": 2,
          "title":
              "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
          "date": "09 jun 2024",
          "view": "1k view",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "PNN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
        },
        {
          "id": 3,
          "title":
              "Iga Swiatek wins French Open against Jasmine Paolini: ‘It doesn’t get more challenging than this’",
          "date": "09 jun 2024",
          "view": "8k view",
          "time": "09:50 PM",
          "subscribe": "50K subscribe",
          "profile_name": "ABC NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://images.7news.com.au/publication/C-14962003/1fb8b3706ba4c42cf89d8369610b13bb3e1f26d7-16x9-x0y0w1280h720.jpg?imwidth=1024&impolicy=sevennews_v2",
        },
        {
          "id": 4,
          "title":
              "Teenage MMA prodigy Adrian Lee continues family dynasty with epic ONE debut",
          "date": "08 jun 2024",
          "view": "9k view",
          "time": "05:50 PM",
          "subscribe": "3K subscribe",
          "profile_name": "MYTV NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
          "image":
              "https://images.7news.com.au/publication/C-14961550/47a3fb7a03035d01c1b72e8b6f0cbd3833d1cfa1-16x9-x0y0w1080h608.jpg?imwidth=1024&impolicy=sevennews_v2",
        }
      ]
    },
    {
      "id": 3,
      "title": 'Sports',
      "data": [
        {
          "id": 1,
          "title":
              "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
        },
      ]
    },
    {
      "id": 4,
      "title": 'Education',
      "data": [
        {
          "id": 1,
          "title":
              "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
          "date": "09 jun 2024",
          "view": "9k view",
          "time": "08:50 PM",
          "subscribe": "10K subscribe",
          "profile_name": "MYTV NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
          "image":
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
        },
        {
          "id": 2,
          "title":
              "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
          "date": "09 jun 2024",
          "view": "9k view",
          "time": "10:50 AM",
          "subscribe": "6K subscribe",
          "profile_name": "MYTV NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
          "image":
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
        },
      ]
    },
    {
      "id": 4,
      "title": 'Media',
      "data": [
        {
          "id": 3,
          "title":
              "Teenage MMA prodigy Adrian Lee continues family dynasty with epic ONE debut",
          "date": "08 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "10K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://images.7news.com.au/publication/C-14961550/47a3fb7a03035d01c1b72e8b6f0cbd3833d1cfa1-16x9-x0y0w1080h608.jpg?imwidth=1024&impolicy=sevennews_v2",
        },
        {
          "id": 1,
          "title":
              "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
          "date": "09 jun 2024",
          "view": "9k view",
          "time": "08:50 PM",
          "subscribe": "77K subscribe",
          "profile_name": "MYTV NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
          "image":
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
        },
        {
          "id": 2,
          "title":
              "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
          "date": "09 jun 2024",
          "view": "9k view",
          "time": "17:50 PM",
          "subscribe": "22K subscribe",
          "profile_name": "MYTV NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
          "image":
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
        },
      ]
    },
  ];

  List saveData = [
    {
      "id": 1,
      "title":
          "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
      "date": "09 jun 2024",
      "view": "2K view",
      "time": "10:30 PM",
      "subscribe": "2K subscribe",
      "profile_name": "CCN NEws",
      'description':
          "In a dramatic turn of events during Carlton's triumph over Essendon, star forward Harry McKay found himself in a perilous situation following a collision with his twin brother, Ben McKay. The incident, which unfolded amidst the fervor of the game, has left Harry McKay in a precarious state, casting a somber shadow over Carlton's otherwise celebratory victory.The collision occurred at a pivotal moment in the match, drawing gasps from spectators and concern from players and officials alike. As the game progressed, news of McKay's condition spread, prompting an outpouring of support and well-wishes from fans, teammates, and the wider football community.",
      "profile":
          "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
      "image":
          'https://images.7news.com.au/publication/C-14962003/1fb8b3706ba4c42cf89d8369610b13bb3e1f26d7-16x9-x0y0w1280h720.jpg?imwidth=1024&impolicy=sevennews_v2',
    },
    {
      "id": 2,
      "title":
          "Iga Swiatek wins French Open against Jasmine Paolini: ‘It doesn’t get more challenging than this’",
      "date": "09 jun 2024",
      "view": "4k view",
      "time": "11:40 AM",
      "subscribe": "5K subscribe",
      "profile_name": "TEST NEws",
      'description':
          "In a thrilling and hard-fought battle on the clay courts of Roland Garros, Iga Swiatek emerged victorious against Jasmine Paolini to claim the prestigious French Open title. The match, which showcased the tenacity and skill of both players, captivated audiences and reaffirmed Swiatek's status as one of tennis' rising stars.Swiatek, the 2020 French Open champion, faced a formidable challenge in Paolini, who displayed exceptional skill and determination throughout the match. The contest was marked by intense rallies, breathtaking shots, and moments of sheer brilliance from both players.",
      "profile":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJBcjL8nvDzAuNsrs1Q-5LmhX59ynk3ACfoA&s",
      "image":
          'https://images.7news.com.au/publication/C-12792409/4fcd9f2f048d08dc21a0b7847ae74fc565211728-16x9-x0y39w750h422.jpg?imwidth=1024&impolicy=sevennews_v2',
    },
    {
      "id": 3,
      "title":
          "Teenage MMA prodigy Adrian Lee continues family dynasty with epic ONE debut",
      "date": "08 jun 2024",
      "view": "1k view",
      "time": "12:00 PM",
      "subscribe": "20K subscribe",
      "profile_name": "PNN NEws",
      'description':
          "As the match unfolded, Swiatek's superior court coverage and powerful groundstrokes began to assert dominance. However, Paolini's resilience and fighting spirit kept the match on a knife's edge, with neither player willing to concede an inch.In the end, Swiatek's composure and skill proved to be the difference, as she clinched victory in a thrilling finale. The win marked a significant milestone in Swiatek's career, solidifying her reputation as a force to be reckoned with in the world of tennis.",
      "profile":
          "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
      "image":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3A3g9b17lAG9vFep8IaRlRsfZY52L4XIeYra7Pz7hAtlo9rC7s-c75eXDtSnX6FdZYl8&usqp=CAU',
    },
    {
      "id": 4,
      "title":
          "Iga Swiatek wins French Open against Jasmine Paolini: ‘It doesn’t get more challenging than this’",
      "date": "09 jun 2024",
      "view": "9k view",
      "time": "05:55 PM",
      "subscribe": "90K subscribe",
      "profile_name": "MYTV NEws",
      'description':
          "In a dramatic turn of events during Carlton's triumph over Essendon, star forward Harry McKay found himself in a perilous situation following a collision with his twin brother, Ben McKay. The incident, which unfolded amidst the fervor of the game, has left Harry McKay in a precarious state, casting a somber shadow over Carlton's otherwise celebratory victory.The collision occurred at a pivotal moment in the match, drawing gasps from spectators and concern from players and officials alike. As the game progressed, news of McKay's condition spread, prompting an outpouring of support and well-wishes from fans, teammates, and the wider football community.",
      "profile":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
      "image":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz26zcG3bN-GhioV5W8_p7jU5oT_HE0ybJd3NHje5cqBiFhlkBou4CsKnTo0-ZC8owZsQ&usqp=CAU',
    },
    {
      "id": 5,
      "title":
          "Harry McKay in a bad way after collision involving twin Ben during Carlton’s win over Essendon",
      "date": "09 jun 2024",
      "view": "8k view",
      "time": "11:11 AM",
      "subscribe": "11K subscribe",
      "profile_name": "ABC NEws",
      'description':
          "Speaking after the match, Swiatek expressed her joy and relief at overcoming such a formidable opponent.It doesn't get more challenging than this,she remarked, acknowledging Paolini's exceptional performance. The victory not only secured Swiatek's second French Open title but also served as a testament to her talent, determination, and unwavering spirit on the court",
      "profile":
          "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
      "image":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237",
    },
  ];
}
