import 'package:ecommerce_project/core/constant/imageasset.dart';
import 'package:ecommerce_project/data/model/onboardingmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../model/shop.dart';

const String imageRoot = "assets/images";

const String clothescat = 'Clothes & Fashion';
const String foofcat = 'Food & Restaurants';
const String medicalcat = 'Medical Services';
const String electroniscat = 'Electronics & Gadgets';
const String autoservicescat = 'Auto Services';

List<OnboardingModel> onBoarding = [
  OnboardingModel(
    title: "Hello There",
    body:
        "Welcome To WASEET Mareket,\n Here you can find it All\nKnow All the shops near to you",
    image: "$imageRoot/ecomm.jpg",
  ),
  OnboardingModel(
      title: "Food & Restaurants",
      body:
          "A Great variaty of Restarants, \nCafeterias and more\n are wating for you",
      image: "$imageRoot/icon_hamburger.png",
      color: Colors.amber),
  OnboardingModel(
    title: "What's Nearby",
    body: "All what you need in you hands\n Search,view and go",
    image: "$imageRoot/icon_search.png",
  ),
];
List<Shop> topshopsstatic = [
  Shop(
      index: 2,
      shopname: 'J U M P FASHION',
      category: clothescat,
      shoplocation: 'UAE-Dubai-Dubai Mall',
      shopnumber: '800 03123122',
      shopimg: ImageAssets.cat1,
      description:
          'Moda, Fashion, Casual and much more, welcome to JUMP Store our only branch in ME, DUBAI',
      shopimgsurls: [ImageAssets.user]),
];
List<Shop> shopsstatic = [
  Shop(
      index: 0,
      shopname: 'ZARA',
      category: clothescat,
      shoplocation: 'Damascus-Almazzeh',
      shopnumber: '0933921223',
      shopimg: ImageAssets.cat1,
      //shopimg: 'https://thewshopping.be/wp-content/uploads/2020/09/zara.jpg',
      description:
          'Zara Store presents you with the best in class, Men & Women.',
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
    index: 1,
    shopname: 'Apple Store',
    category: electroniscat,
    shoplocation: 'UAE-Dubai-Dubai Mall',
    shopnumber: '800 04449012',
    shopimg: ImageAssets.cat1,
    description:
        'Welcome to The Largest Apple Store in Dubai, Keep in Touch with All Apple Products',
    shopimgsurls: [ImageAssets.cat1],
  ),
  Shop(
      index: 2,
      shopname: 'J U M P FASHION',
      category: clothescat,
      shoplocation: 'UAE-Dubai-Dubai Mall',
      shopnumber: '800 03123122',
      shopimg: ImageAssets.cat1,
      description:
          'Moda, Fashion, Casual and much more, welcome to JUMP Store our only branch in ME, DUBAI',
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
      index: 3,
      shopname: 'Shawarma Station',
      category: foofcat,
      description: 'Arabian, Middle Eastern, Shawarma',
      shoplocation: 'Khalifa City, Abu Dhabi',
      shopnumber: 'NA',
      shopimg: ImageAssets.cat1,
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
      index: 4,
      shopname: 'Texas Chicken',
      category: foofcat,
      description: 'Fast Food, American, Burger',
      shoplocation: 'Deerfields Mall,Abu Dhabi',
      shopnumber: '850 21332111',
      shopimg: ImageAssets.cat1,
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
      index: 5,
      shopname: 'West Bay\nLounge',
      category: foofcat,
      shoplocation: 'Radisson Blu Hotel & Resort,\nAbu Dhabi',
      description: 'Finger Food, Mediterranean',
      shopimg: ImageAssets.cat1,
      shopnumber: '800 01123322',
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
      index: 6,
      shopname: 'Casa Goa',
      category: foofcat,
      description: 'Goan, Seafood',
      shoplocation: 'Tourist Club Area (Al Zahiyah),\nAbu Dhabi',
      shopnumber: '505013655',
      shopimg: ImageAssets.cat1,
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
      index: 7,
      shopname: 'Velocity',
      category: foofcat,
      description: 'Finger Food',
      shoplocation: 'Marriott Hotel, Downtown,\nAbu Dhabi',
      shopnumber: '23047777',
      shopimg: ImageAssets.cat1,
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
      index: 8,
      shopname: 'Jumbo Electronics',
      category: electroniscat,
      description: 'Electronics store',
      shoplocation: 'Dubai Mall - Dubai',
      shopnumber: '43253711',
      shopimg: ImageAssets.cat1,
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
      index: 9,
      shopname: 'KFC',
      category: foofcat,
      description: 'Fast Food, American, Burger',
      shoplocation: 'Dubai -United Arab Emirates',
      shopnumber: '600 522252',
      shopimg: ImageAssets.cat1,
      shopimgsurls: [ImageAssets.cat1]),
  Shop(
      index: 10,
      shopname: 'Kenzies Car \nWashing & Detailing',
      category: autoservicescat,
      shoplocation: 'Princess Tower, Dubai Marina',
      description: 'Car Wash, Oil Change and other Services',
      shopnumber: '600 565693',
      shopimg: ImageAssets.cat1,
      shopimgsurls: [
        ImageAssets.cat1,
        ImageAssets.cat1,
        ImageAssets.cat1,
      ])
];
