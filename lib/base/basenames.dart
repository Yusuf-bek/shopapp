import 'package:flutter/material.dart';
import 'package:shopapp/screens/chocolatepage.dart';
import 'package:shopapp/screens/clothpage.dart';
import 'package:shopapp/screens/foodpage.dart';
import 'package:shopapp/screens/homepage.dart';
import 'package:shopapp/screens/laptoppage.dart';

List<String> pageNames = ["Trend", "Chocolate", "Food", "Cloth", "Laptop"];

List<StatefulWidget> pushNames = [ Homepage(),Chocopage(), Foodpage(), Clothpage(), Laptoppage()];

int choosenIndex = 0;

List<String> trendImageAddresses = [
  "https://www.pngpix.com/wp-content/uploads/2016/08/PNGPIX-COM-Food-Plate-PNG-Transparent-Image-1.png",
  "https://img-fotki.yandex.ru/get/172931/161031371.313/0_1b9d78_3ab31dfc_L",
  "https://w7.pngwing.com/pngs/907/226/png-transparent-black-crew-neck-t-shirt-t-shirt-under-armour-sleeve-polo-shirt-black-t-shirt-tshirt-white-active-shirt.png",
  "https://www.pikpng.com/pngl/b/203-2036970_omen-family-of-laptops-and-desktops-for-sale.png",
  "https://assets.stickpng.com/images/589eefcd64b351149f22a891.png",
];

List<String> foodImageAddresses = [
  "https://www.pngpix.com/wp-content/uploads/2016/08/PNGPIX-COM-Food-Plate-PNG-Transparent-Image-1.png",
  "https://www.pngonly.com/wp-content/uploads/2017/06/Food-Healthy-Breakfast-PNG.png",
  "https://i.pinimg.com/originals/f1/12/69/f11269b45e561d9612e8962bf635d2d5.png",
  "https://www.pngonly.com/wp-content/uploads/2017/06/Food-Sandvich-PNG.png",
  "http://a.mktgcdn.com/p/_45LmOCnCvwjY3hICBVYdpD41_4N1p0yZcx5wpi8_Hk/1920x1080.png",
];
List<String> chocoImageAddresses = [
  "https://pngimg.com/uploads/chocolate/chocolate_PNG97187.png",
  "https://img-fotki.yandex.ru/get/172931/161031371.313/0_1b9d78_3ab31dfc_L",
  "https://catherineasquithgallery.com/uploads/posts/2021-02/1612331167_18-p-fon-shokolad-png-22.png",
  "https://assets.stickpng.com/images/589eefcd64b351149f22a891.png",
  "https://img-fotki.yandex.ru/get/172931/161031371.313/0_1b9d78_3ab31dfc_L",
];
List<String> clothImageAddresses = [
  "https://www.pngpix.com/wp-content/uploads/2016/10/PNGPIX-COM-Suit-PNG-Transparent-Image-2.png",
  "https://w7.pngwing.com/pngs/907/226/png-transparent-black-crew-neck-t-shirt-t-shirt-under-armour-sleeve-polo-shirt-black-t-shirt-tshirt-white-active-shirt.png",
  "https://w7.pngwing.com/pngs/907/226/png-transparent-black-crew-neck-t-shirt-t-shirt-under-armour-sleeve-polo-shirt-black-t-shirt-tshirt-white-active-shirt.png",
  "https://purepng.com/public/uploads/large/purepng.com-green-jacketgarmentupper-bodyjacketlighterarmy-green-1421526362373sj0ho.png",
  "https://pngpress.com/wp-content/uploads/2020/08/uploads_jeans_jeans_PNG5748.png",
];
List<String> laptopImageAddresses = [
  "https://www.vippng.com/png/full/352-3528209_msi-presents-gt80-titan-gaming-laptop-with-gtx.png",
  "https://assetscdn1.paytm.com/images/catalog/product/L/LA/LAPACER-NITRO-AAMAZ29104DBA10800/1562414734037_0..png",
  "https://www.pinpng.com/pngs/m/372-3725934_list-of-laptop-with-exceptional-15-hours-battery.png",
  "https://images.icecat.biz/img/gallery_raw/67480011_7712166042.png",
  "https://assetscdn1.paytm.com/images/catalog/product/L/LA/LAPACER-NITRO-AAMAZ29104DBA10800/1562414734037_0..png",
];
