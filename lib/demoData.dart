// It contains all our demo data that we used
final List<String> demoRestaurantNames = [
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง",
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน",
  "ไก่ทอด ลุงพล ป้าแต๋น",
  "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ",
  "ไก่ทอดข้างทาง อุุดหนุนป้าหน่อย",
  "ควยหีแตด"
  // Add more restaurant names here as needed
];

final Map<String, String> restaurantImages = {
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง": "assets/images/ไก่ทอดซอสหัวหอม.png",
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน": "assets/images/ลาบไก่ทอด.jpg",
  "ไก่ทอด ลุงพล ป้าแต๋น": "assets/images/ปีกไก่ทอด.jpg",
  "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ": "assets/images/ข้าวเหนียวไก่ทอด.png",
  "ควยหีแตด": "assets/images/ไก่ทอดหน้าโรงเรียน.jpg"
  // Add more restaurant names and images here as needed
};

List<String> demoBigImages = [
  "assets/images/ไก่ทอดซอสหัวหอม.png",
  "assets/images/ลาบไก่ทอด.jpg",
  "assets/images/ปีกไก่ทอด.jpg",
  "assets/images/ข้าวเหนียวไก่ทอด.png",
  "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
  "assets/images/ไก่ทอดสับ.jpg",
  "assets/images/ข้าวเหนียวไก่ทอด.png",
  "assets/images/ไก่ทอดคาราอาเกะ.jpg",
  "assets/images/ไก่ทอดบ้านๆ.jpg"
];

List<Map<String, dynamic>> demoMediumCardData = [
  {
    "name": "บ้านไก่เกาหลี อร่อยกว่าบอนชอน",
    "image": "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
    "location": "อโศก, กรุงเทพ",
    "rating": 8.6,
    "delivertTime": 20,
  },
  {
    "name": "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง",
    "image": "assets/images/ไก่ทอดหาดใหญ่.png",
    "location": "นานา, กรุงเทพ",
    "rating": 9.1,
    "delivertTime": 35,
  },
  {
    "name": "ไก่ทอด ลุงพล ป้าแต๋น",
    "image": "assets/images/ไก่ทอดซอสน้ำปลา.png",
    "location": "ชิดลม, กรุงเทพ",
    "rating": 7.3,
    "delivertTime": 25,
  },
  {
    "name": "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ",
    "image": "assets/images/ข้าวหมกไก่ทอด.png",
    "location": "ทองหล่อ, กรุงเทพ",
    "rating": 8.4,
    "delivertTime": 30,
  },
  {
    "name": "ไก่ทอดข้างทาง อุุดหนุนป้าหน่อย",
    "image": "assets/images/ปีกไก่ทอด.png",
    "location": "มศว, กรุงเทพ",
    "rating": 9.5,
    "delivertTime": 15,
  }
];

final Map<String, List<Map<String, dynamic>>> restaurantMenu = {
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน": [
    {
      "name": "ไก่ทอดคลุกซอสเกาหลี",
      "location": "อโศก, กรุงเทพ",
      "image": "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
      "foodType": "ไก่ทอด",
      "price": 0,
      "priceRange": "\$ \$",
    },
    {
      "name": "ข้าวมันไก่",
      "location": "อโศก, กรุงเทพ",
      "image": "assets/images/ข้าวหมกไก่ทอด.png",
      "foodType": "ข้าวมันไก่",
      "price": 0,
      "priceRange": "\$ \$",
    },
    // เมนูอาหารอื่นๆ ของร้าน "บ้านไก่เกาหลี อร่อยกว่าบอนชอน" ไปต่อที่นี่
  ],
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง": [
    {
      "name": "ไก่ทอดหาดใหญ่",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ไก่ทอดหาดใหญ่.png",
      "foodType": "ไก่ทอด",
      "price": 0,
      "priceRange": "\$ \$",
    },
    {
      "name": "ข้าวมันไก่",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ข้าวหมกไก่ทอด.png",
      "foodType": "ข้าวมันไก่",
      "price": 0,
      "priceRange": "\$ \$",
    },
    // เมนูอาหารอื่นๆ ของร้าน "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง" ไปต่อที่นี่
  ],
  // เพิ่มร้านอื่นๆ และเมนูอาหารของแต่ละร้านตามต้องการได้ที่นี่
};
