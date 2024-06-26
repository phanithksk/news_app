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
      "description":
          "PHNOM PENH — Cambodia’s long-serving leader said Tuesday his government will amend the country’s election law to bar anyone who fails to vote from running as a candidate in future elections, in his latest move to marginalize his political foes.Prime Minister Hun Sen said the change is needed because candidates for public office need to show their civic responsibility. He said the amendment will be ready for approval by lawmakers before a July 23 general election. The bill’s passage is a certainty, since all members of the National Assembly are members of Hun Sen’s ruling Cambodian People’s Party.",
      "album_image": [
        "https://vmrw8k5h.tinifycdn.com/news/wp-content/uploads/2019/07/freya-anderson-warmup-2019-world-championships-17.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtgWKGBvEuJtMKuAIHcrOAdDtSm3Gl-hGfzbdld9XgvrI1QR04LmHZmz-79pfQG8jtGhY&usqp=CAU",
      ]
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
      "description":
          "PHNOM PENH — Cambodia’s long-serving leader said Tuesday his government will amend the country’s election law to bar anyone who fails to vote from running as a candidate in future elections, in his latest move to marginalize his political foes.Prime Minister Hun Sen said the change is needed because candidates for public office need to show their civic responsibility. He said the amendment will be ready for approval by lawmakers before a July 23 general election. The bill’s passage is a certainty, since all members of the National Assembly are members of Hun Sen’s ruling Cambodian People’s Party.",
      "album_image": [
        "https://gdb.voanews.com/06a20000-0aff-0242-2440-08db0c17a5c7_cx0_cy6_cw0_w144_r1.png",
        "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
      ]
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
      "description":
          "PHNOM PENH — Cambodia’s long-serving leader said Tuesday his government will amend the country’s election law to bar anyone who fails to vote from running as a candidate in future elections, in his latest move to marginalize his political foes.Prime Minister Hun Sen said the change is needed because candidates for public office need to show their civic responsibility. He said the amendment will be ready for approval by lawmakers before a July 23 general election. The bill’s passage is a certainty, since all members of the National Assembly are members of Hun Sen’s ruling Cambodian People’s Party.",
      "album_image": [
        "https://gdb.voanews.com/06a20000-0aff-0242-2440-08db0c17a5c7_cx0_cy6_cw0_w144_r1.png",
        "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
      ]
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
          "id": 2,
          "title": "Meta Expands Access to Horizon Worlds VR Social Experience",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://www.socialmediatoday.com/imgproxy/wuKDxgJaEK6LRaHyajqAm8VklZv6biIcLTJhNNXkgmw/g:nowe:0:46/c:700:395/rs:fill:600:338:1/bG9jYWw6Ly8vZGl2ZWltYWdlL2hvcml6b25fd29ybGRzLnBuZw==.webp",
          "description":
              "Meta’s Horizon Worlds enables users to create their own interactive VR experiences, which is the foundation of Meta’s broader metaverse push. Horizon Worlds is still relatively early in its life cycle in this respect, and as such, it’s still largely reliant on the existing, pre-built Worlds available within the platform. But eventually, the hope is that more and more people will be building and interacting via their avatars within this customizable, creative digital space.",
          "album_image": [
            "https://www.socialmediatoday.com/imgproxy/dKC0lSutrssv7hH_ANMfiRUWvgQ3Cy4FN_opl07zSAE/g:ce/rs:fill:600:338:1/bG9jYWw6Ly8vZGl2ZWltYWdlL3NlbnNvcl90b3dlcl90b3BfYXBwcy5wbmc=.webp",
            "https://www.socialmediatoday.com/imgproxy/KX0ZHYJ8-Ub2AK4NSI4W5FKgCTpZ4-rMcGsi2Y_-ics/g:ce/rs:fill:600:338:1/bG9jYWw6Ly8vZGl2ZWltYWdlL3ZpZGNvbl8yMDI0LnBuZw==.webp",
          ]
        },
        {
          "id": 3,
          "title":
              "Euro 2024 latest: Reaction as England win group after draw with Slovenia",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/d5005a83-758a-48b7-9065-ab0aad2197a9.jpg",
          "description":
              "It was hot [at the game], but it's hot for every team and everywhere in Europe right now, so that's not an excuse. They lacked intensity, cohesion in this team, I think [Didier] Deschamps made the wrong calls in some positions. Some players weren't fit to play, and in the end France created a lot of chances again, which is maybe the more worrying now - they don't take enough of them chances, they haven't scored in open play yet - one penalty and own goal, which is not enough considering the attacking talent France have in their squad.",
          "album_image": [
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/284c18ff-576f-47d4-9c93-970a9bce9a65.png",
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
          ]
        },
        {
          "id": 4,
          "title": "Trump’s endorsement is starting to show its limits",
          "date": "08 jun 2024",
          "view": "9k view",
          "time": "05:50 PM",
          "subscribe": "3K subscribe",
          "profile_name": "MYTV NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
          "image":
              "https://www.politico.com/dims4/default/1374f80/2147483647/strip/true/crop/1892x1261+0+0/resize/1260x840!/quality/90/?url=https%3A%2F%2Fstatic.politico.com%2F38%2Fa0%2F5b3117f44937b85dcada20505cdd%2Felection-2024-senate-utah-55077.jpg",
          "description":
              "The former president endorsed a replacement for Sen. Mitt Romney, but Utah voters picked a Trump skeptic instead. He backed his spiritual adviser for an open South Carolina House seat only to watch him narrowly lose in a runoff. Trump threw his support to the Colorado GOP chair for a House district; he was blown out by more than 30 points.",
          "album_image": [
            "https://gdb.voanews.com/06a20000-0aff-0242-2440-08db0c17a5c7_cx0_cy6_cw0_w144_r1.png",
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
          ]
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
          "id": 2,
          "title":
              "Hun Manet's Profile Rises Ahead of Cambodia's July Election",
          "date": "09 jun 2024",
          "view": "1k view",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "PNN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://gdb.voanews.com/01000000-0aff-0242-7889-08db4db7dd80_cx0_cy2_cw0_w144_r1.jpg",
          "description":
              "PHNOM PENH — Cambodia’s succession won’t be rushed. When speculation swirled a couple years ago that the prime minister’s eldest son would take over in this summer’s election, the premier slapped it down in a speech from Prey Veng. “I am still standing, so what’s the point of my son being the prime minister,” Hun Sen said in late 2021. “So, his possible [premiership] is not before 2028. It is more likely to take place between 2028 and even 2030. He must wait.”",
          "album_image": [
            "https://gdb.voanews.com/D3E43B3C-C1F3-4F85-A050-31C3D653CDCB_cx0_cy15_cw0_w144_r1.jpg",
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
          ]
        },
        {
          "id": 3,
          "title":
              "Cambodia’s Opposition Hopes for a Silent Surge in Upcoming National Election",
          "date": "09 jun 2024",
          "view": "8k view",
          "time": "09:50 PM",
          "subscribe": "50K subscribe",
          "profile_name": "ABC NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://gdb.voanews.com/06a20000-0aff-0242-2440-08db0c17a5c7_cx0_cy6_cw0_w144_r1.png",
          "description":
              "SIEM REAP/PHNOM PENH — “Change or no change?” asked the announcer at the first national congress of the Candlelight Party in early February on the outskirts of Siem Reap city in northwest Cambodia. “Change! Change! Change!” chanted some 7,000 activists and supporters of the party, which represents to most potent challenge the long ruling Cambodian People’s Party, led by Prime Minister Hun Sen, in the upcoming national election in July.",
          "album_image": [
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/284c18ff-576f-47d4-9c93-970a9bce9a65.png",
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
          ]
        },
        {
          "id": 4,
          "title": "Trump’s endorsement is starting to show its limits",
          "date": "08 jun 2024",
          "view": "9k view",
          "time": "05:50 PM",
          "subscribe": "3K subscribe",
          "profile_name": "MYTV NEws",
          "profile":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL-5u8rk3D2-EoEw06IPAFHaRg7CifAll6Q&s",
          "image":
              "https://www.politico.com/dims4/default/1374f80/2147483647/strip/true/crop/1892x1261+0+0/resize/1260x840!/quality/90/?url=https%3A%2F%2Fstatic.politico.com%2F38%2Fa0%2F5b3117f44937b85dcada20505cdd%2Felection-2024-senate-utah-55077.jpg",
          "description":
              "The former president endorsed a replacement for Sen. Mitt Romney, but Utah voters picked a Trump skeptic instead. He backed his spiritual adviser for an open South Carolina House seat only to watch him narrowly lose in a runoff. Trump threw his support to the Colorado GOP chair for a House district; he was blown out by more than 30 points.",
          "album_image": [
            "https://gdb.voanews.com/06a20000-0aff-0242-2440-08db0c17a5c7_cx0_cy6_cw0_w144_r1.png",
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
          ]
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
              "Euro 2024 latest: Reaction as England win group after draw with Slovenia",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/d5005a83-758a-48b7-9065-ab0aad2197a9.jpg",
          "description":
              "It was hot [at the game], but it's hot for every team and everywhere in Europe right now, so that's not an excuse. They lacked intensity, cohesion in this team, I think [Didier] Deschamps made the wrong calls in some positions. Some players weren't fit to play, and in the end France created a lot of chances again, which is maybe the more worrying now - they don't take enough of them chances, they haven't scored in open play yet - one penalty and own goal, which is not enough considering the attacking talent France have in their squad.",
          "album_image": [
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/284c18ff-576f-47d4-9c93-970a9bce9a65.png",
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/32f78069-b235-466c-b1d5-905b55639a62.jpg",
          ]
        },
        {
          "id": 1,
          "title":
              "While concerns are being raised about the form of Jude Bellingham, fans and pundits alike have been calling for Cole Palmer to start in England's last-16 tie.",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/9d6e3b9b-d751-43b8-a6eb-3b3607de233f.jpg",
          "description":
              "Roy Keane was particularly full of praise in ITV's coverage of Tuesday night's draw against Slovenia.You wouldn't want to play against Cole Palmer, said Keane. We knew when he came on we would be talking about him. Every time he gets the ball you think something is going to happen ",
          "album_image": [
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/04adcee0-e85d-4fe4-ab28-d64c85e3fb15.png",
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/vivo/live/images/2024/6/26/52672f60-3367-43d7-967f-601484ac23e0.jpg",
          ]
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
              "‘Culture embarrasses them’: how 14 years of Tory fiascos strangled arts in the UKThey came to power promising ‘a golden age for the arts’. Now, 12 disastrous culture secretaries later, they leave it in tatters. What a stunning missed opportunity to capitalise on an asset that is the envy of the world",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://i.guim.co.uk/img/media/aec766274b39f4da27e3686afc03e5f7d11ca3fa/1847_832_4201_2520/master/4201.jpg?width=1140&dpr=2&s=none",
          "description":
              "he fishing industry contributes barely £1bn to the British economy. That is 0.03% of GDP. Put it another way: it is roughly equivalent in size to visual effects, a sub-category of a category of the creative industries.Conservative ministers made repeated visits to the nation’s ports to extol the virtues of an almost moribund trade. By contrast, a sector that has been the fastest growing for two decades, that contributes more than £120bn, that in other countries would be seen as an essential component of the good society, was largely seen as an afterthought.",
          "album_image": [
            "https://i.guim.co.uk/img/media/b955625ae868be1ec872254d67235a1e936ec03b/0_311_4662_2797/master/4662.jpg?width=800&dpr=2&s=none",
            "https://i.guim.co.uk/img/media/8d2254869506d9522bed8dc9815f089144dd1fd6/0_201_3500_2100/master/3500.jpg?width=800&dpr=2&s=none",
          ]
        },
        {
          "id": 2,
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
      ]
    },
    {
      "id": 4,
      "title": 'Media',
      "data": [
        {
          "id": 1,
          "title":
              "Advertising is now a ‘meritocracy’ in the wake of social media, Resy co-founder Gary Vaynerchuk says",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://image.cnbcfm.com/api/v1/image/107430873-1718798103730-gettyimages-1498473662-z9x_3743_dayecab9.jpeg?v=1718798121&w=630&h=354&ffmt=webp&vtcrop=y",
          "description":
              "he fishing industry contributes barely £1bn to the British economy. That is 0.03% of GDP. Put it another way: it is roughly equivalent in size to visual effects, a sub-category of a category of the creative industries.Conservative ministers made repeated visits to the nation’s ports to extol the virtues of an almost moribund trade. By contrast, a sector that has been the fastest growing for two decades, that contributes more than £120bn, that in other countries would be seen as an essential component of the good society, was largely seen as an afterthought.",
          "album_image": [
            "https://image.cnbcfm.com/api/v1/image/107350566-17031713842021-07-07t175432z_840930077_rc2jfo9fvojq_rtrmadp_0_media-sun-valley.jpeg?v=1703171511&w=380&h=190&ffmt=webp&vtcrop=y",
            "https://image.cnbcfm.com/api/v1/image/107345400-1702067295479-gettyimages-1134882971-AFP_1FD9RL.jpeg?v=1712869801&w=380&h=190&ffmt=webp&vtcrop=y",
          ]
        },
        {
          "id": 2,
          "title":
              "Pinterest Adds New Options for Sharing Pin Boards to Other Apps",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://www.socialmediatoday.com/imgproxy/p9uZYNWSUPlfb4UdDtCfBWp3DTvZ_Us1jm9uXgoBNeE/g:ce/rs:fit:800:347/bG9jYWw6Ly8vZGl2ZWltYWdlL3BpbnRlcmVzdF9ib2FyZF9zaGFyaW5nLnBuZw==.webp",
          "description":
              "As you can see in this sequence, Pinterest improved board sharing will provide a more visually appealing way to promote your Pin collections within other platforms and formats. he process is fairly straightforward: You choose a public board that you want to share, tap on the “Share” icon in the top right, then select a template for your board to be displayed. You can then share that board overview as a Story, with an animated depiction of your chosen elements.",
          "album_image": [
            "https://www.socialmediatoday.com/imgproxy/YlrjmDvGSFPgVHmA5FZFT-D_GIstYGep0WwcAcoBbrI/g:ce/rs:fill:600:338:1/bG9jYWw6Ly8vZGl2ZWltYWdlL0dldHR5SW1hZ2VzLTExNTI5NDM2MTguanBlZw==.webp",
            "https://www.socialmediatoday.com/imgproxy/zSpwyE3J41Tigb_7NhJWzBk0VIUfcQ6Y_Ycu6KTYkjs/g:ce/rs:fill:600:338:1/bG9jYWw6Ly8vZGl2ZWltYWdlL3RocmVhZHNfZmVkaXZlcnNlLnBuZw==.webp",
          ]
        },
        {
          "id": 2,
          "title": "Meta Expands Access to Horizon Worlds VR Social Experience",
          "date": "09 jun 2024",
          "view": "250 views",
          "time": "08:50 PM",
          "subscribe": "9K subscribe",
          "profile_name": "CCN NEws",
          "profile":
              "https://breakingnewsenglish.com/2405/240530-national-service.jpg",
          "image":
              "https://www.socialmediatoday.com/imgproxy/wuKDxgJaEK6LRaHyajqAm8VklZv6biIcLTJhNNXkgmw/g:nowe:0:46/c:700:395/rs:fill:600:338:1/bG9jYWw6Ly8vZGl2ZWltYWdlL2hvcml6b25fd29ybGRzLnBuZw==.webp",
          "description":
              "Meta’s Horizon Worlds enables users to create their own interactive VR experiences, which is the foundation of Meta’s broader metaverse push. Horizon Worlds is still relatively early in its life cycle in this respect, and as such, it’s still largely reliant on the existing, pre-built Worlds available within the platform. But eventually, the hope is that more and more people will be building and interacting via their avatars within this customizable, creative digital space.",
          "album_image": [
            "https://www.socialmediatoday.com/imgproxy/dKC0lSutrssv7hH_ANMfiRUWvgQ3Cy4FN_opl07zSAE/g:ce/rs:fill:600:338:1/bG9jYWw6Ly8vZGl2ZWltYWdlL3NlbnNvcl90b3dlcl90b3BfYXBwcy5wbmc=.webp",
            "https://www.socialmediatoday.com/imgproxy/KX0ZHYJ8-Ub2AK4NSI4W5FKgCTpZ4-rMcGsi2Y_-ics/g:ce/rs:fill:600:338:1/bG9jYWw6Ly8vZGl2ZWltYWdlL3ZpZGNvbl8yMDI0LnBuZw==.webp",
          ]
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
