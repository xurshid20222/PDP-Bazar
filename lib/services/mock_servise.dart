
List<Map<String, dynamic>> categoriesMock = [
  {
    "id": '01',
    "name": 'Computer',
    "icon": '💻',
    "products": [
      '01'
      '02'
      '03'
      '04'
      '05'
    ],
  },
  {
    "id": '02',
    "name": 'Phone',
    "icon": '📱',
    "products": [
          '06'
          '07'
          '08'
          '09'
          '10'
    ],
  },
  {
    "id": '03',
    "name": 'Shoes',
    "icon": '👟',
    "products": [
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
    ],
  }

];


List<Map<String, dynamic>> productsMock = [
  //computer
  {
  'id': "01",
'title': "Mac Book",
'price': 120000,
'categoryId': "01",
'images': [
  'https://newmart.ru/upload/iblock/a2e/a2ef68f6742a18acc6cb422de5ff6431.jpg',
  'https://spb.xbook.ru/upload/resize_cache/iblock/c31/500_500_140cd750bba9870f18aada2478b24840a/3_applemacbook_promacbook_pro_2017mpxr2rua.jpg',
  'https://static.re-store.ru/upload/resize_cache/iblock/270/494_340_17f5c944b3b71591cc9304fac25365de2/270729d5ac3b7408a773509e6b9d60f7.jpg'
],
'createdDate': DateTime(2022, 8, 21, 14).toString(),
'size': "1",
'companyName': "Apple",
},
  {
    'id': "02",
    'title': "HP",
    'price': 120000,
    'categoryId': "01",
    'images': [
      'https://becompact.ru/upload/iblock/14e/14ecf8366368f1acfbfc2b705c14e934.jpg',
      'https://ae01.alicdn.com/kf/Hd6dda0d74dde4204966a454e7ec671968/Laptop-HP-Pavilion-gaming-15-dk1015ur-15-6-IPS-i7-10750H-16-GB-512-GB-SSD.jpeg',
      'https://tehnoteca.ru/img/913/912078/hp_envy_15_as000_15_as003ur_w7b37ea_2.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "HP",
  },
  {
    'id': "03",
    'title': "Asus",
    'price': 120000,
    'categoryId': "01",
    'images': [
      'https://spb.xbook.ru/upload/resize_cache/iblock/a41/500_500_140cd750bba9870f18aada2478b24840a/3_asuszenbookux410ufgv179t.jpg',
      'https://tehnoteca.ru/img/1526/1525679/asus_tuf_gaming_fx505gd_fx505gd_bq260t_9.jpg',
      'https://avatars.mds.yandex.net/get-mpic/5186016/img_id1036515784966692146.jpeg/orig'
      ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Asus",
  },
  {
    'id': "04",
    'title': "Dell",
    'price': 120000,
    'categoryId': "01",
    'images': [
      'https://avatars.mds.yandex.net/i?id=8c06b66c0c7f485f8bb89a7234b26b3a-5495858-images-thumbs&n=13',
      'https://avatars.mds.yandex.net/get-mpic/5253277/img_id8093313407287438564.jpeg/orig',
      'http://dselect.alloy.ru/media/images/2013/02/25/big/1717bbbf-fb33-44a7-97d9-9c0fc69d9979.jpeg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Dell",
  },
  {
    'id': "05",
    'title': "Lenovo",
    'price': 120000,
    'categoryId': "01",
    'images': [
     'https://avatars.mds.yandex.net/get-mpic/1750349/img_id8199761713724094940.jpeg/orig',
      'https://avatars.mds.yandex.net/get-mpic/2017118/img_id9110553354469883.jpeg/orig',
      'https://domnouta.ru/img/notes/Originals/Lenovo/49003.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Lenovo",
  },

  // phone
  {
    'id': "06",
    'title': "iPhone",
    'price': 120000,
    'categoryId': "02",
    'images': [
      'https://static.baza.farpost.ru/v/1632980596204_bulletin',
      'https://www.appleshop52.ru/upload/iblock/e51/e5139bf641162f78d047ccc211c6fd3f.jpg',
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Apple",
  },
  {
    'id': "07",
    'title': "Readme",
    'price': 120000,
    'categoryId': "02",
    'images': [
     'https://smartprice.ru/static/img/smartprice/models/xiaomi/redmi-3s/01.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Readme",
  },
  {
    'id': "08",
    'title': "Samsung",
    'price': 120000,
    'categoryId': "02",
    'images': [
     'https://tehnoteca.ru/img/832/831815/samsung_galaxy_s7_vip_1.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Samsung",
  },
  {
    'id': "09",
    'title': "Nokia",
    'price': 120000,
    'categoryId': "02",
    'images': [
      'https://www.prepaidisraelisim.com/image/data/Phones/Nokia-230-Dual-.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Nokia",
  },
  {
    'id': "10",
    'title': "Vivo",
    'price': 120000,
    'categoryId': "02",
    'images': [
     'https://astera.ru/wp-content/uploads/2019/05/9b53519b102b4a9c0f081223c2d05c01b9143870-957x1024.jpg',
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Vivo",
  },


  //shoes
  {
    'id': "11",
    'title': "Nike Shoes",
    'price': 120000,
    'categoryId': "03",
    'images': [
    'http://g03.a.alicdn.com/kf/HTB1ZUV5HVXXXXcdXpXXq6xXFXXXk/223144781/HTB1ZUV5HVXXXXcdXpXXq6xXFXXXk.jpg?size=155849&amp;height=525&amp;width=800&amp;hash=f4b774d111aadd2d4d20b7c3119f04b6'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Nike",
  },
  {
    'id': "12",
    'title': "Adidas Shoes",
    'price': 120000,
    'categoryId': "03",
    'images': [
     'http://ae01.alicdn.com/kf/HTB1udUcPVXXXXbcXVXXq6xXFXXXc.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Adidas",
  },
  {
    'id': "13",
    'title': "Puma Shoes",
    'price': 120000,
    'categoryId': "03",
    'images': [
     'https://i.ebayimg.com/00/s/MTYwMFgxNjAw/z/y0cAAOSwbZpewE1E/\$_57.JPG?set_id=8800005007'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Puma",
  },
  {
    'id': "14",
    'title': "Rebook Shoes",
    'price': 120000,
    'categoryId': "03",
    'images': [
      'https://images-na.ssl-images-amazon.com/images/I/71cCxVjcDeL._AC_UL1500_.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Rebook",
  },
  {
    'id': "15",
    'title': "Rebook Shoes",
    'price': 120000,
    'categoryId': "03",
    'images': [
      'https://images-na.ssl-images-amazon.com/images/I/71cCxVjcDeL._AC_UL1500_.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Rebook",
  },
  {
    'id': "16",
    'title': "Bata Shoes",
    'price': 120000,
    'categoryId': "03",
    'images': [
      'https://skygear.ru/upload/iblock/364/36419973ae48ddea9bcab63886f89587.jpg'
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Bata",
  },

];
