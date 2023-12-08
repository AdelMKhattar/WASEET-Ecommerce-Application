import 'package:ecommerce_project/core/constant/imageasset.dart';

class Shop {
  late final String? shopname;
  late final String? shoplocation;
  late final String? shopnumber;
  late final String? shopimg;
  late final List<String>? shopimgsurls;
  late final int? index;
  late final String? description;
  late final String? category;

  Shop({
    this.shopname,
    this.shoplocation,
    this.shopnumber,
    this.shopimg,
    this.shopimgsurls,
    this.index,
    this.description,
    this.category,
  });
  List<Shop> fetchShops() {
    return [
      Shop(
          shopname: 'ZARA',
          shoplocation: 'Erbil',
          shopnumber: '9232123',
          shopimg: ImageAssets.cat1,
          shopimgsurls: [
            'https://blog.healyconsultants.com/wp-content/uploads/2013/11/zara-1024x731.jpg',
            'https://blog.healyconsultants.com/wp-content/uploads/2013/11/zara-1024x731.jpg',
            'https://blog.healyconsultants.com/wp-content/uploads/2013/11/zara-1024x731.jpg',
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/kaia-gerber-zara-2-1664871930.jpg',
          ]),
      Shop(
          shopname: 'Shoes Store',
          shoplocation: 'Erbil',
          shopnumber: '123231',
          shopimg: ImageAssets.cat2),
      Shop(
          shopname: 'Shoes Store',
          shoplocation: 'Erbil',
          shopnumber: '123231',
          shopimg: ImageAssets.cat2),
      Shop(
          shopname: 'Shoes Store',
          shoplocation: 'Erbil',
          shopnumber: '123231',
          shopimg: ImageAssets.cat2),
    ];
  }
}
