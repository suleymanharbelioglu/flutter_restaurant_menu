import 'dart:core';

import 'package:restaurant_menu2/models/food.dart';

class Data {
  static const List<String> categories = [
    "ÖZEL MENÜ YENİLER",
    "VEJETERYAN MENU",
    "ANA YEMEK",
    "APARATİF YİYECEKLER",
    "HAMBURGERLER",
    "MAKARNALAR",
    "SALATALAR",
    "ALKOLLÜ ÜRÜNLER",
    "SICAK İÇECEKLER",
    "SOĞUK İÇECEKLER",
    "SOĞUK KAHVLER",
    "TATLILAR",
  ];
  static const List<String> categoryPhotoAddress = [
    "ozel_menu_yeniler.jpg",
    "vejeteryan_menu.jpg",
    "ana_yemek.jpg",
    "aparatif_yiyecekler.jpg",
    "hamburgerler.jpg",
    "makarnalar.jpg",
    "salatalar.jpg",
    "alkollu_urunler.jpg",
    "sicak_icecekler.jpg",
    "soguk_icecekler.jpg",
    "soguk_kahvler.jpg",
    "tatlilar.jpg",
  ];

  static List<FoodModel> foodList = [
    // ÖZEL MENÜ YENİLER
    FoodModel(
      name: "Gurme Burger",
      description:
          "150 gram özel dana köftesi, karamelize soğan, cheddar peyniri, trüf mayonezi ve taptaze brioche ekmeğiyle hazırlanmış gurme lezzet.",
      price: 120,
      category: "ÖZEL MENÜ YENİLER",
      photoAddress: "gurme_burger.jpg",
    ),
    FoodModel(
      name: "Trüf Mantarlı Pizza",
      description:
          "İncecik hamur üzerine mozarella peyniri, siyah trüf mantarı dilimleri, parmesan ve fesleğenle fırınlanmış şef spesiyali.",
      price: 150,
      category: "ÖZEL MENÜ YENİLER",
      photoAddress: "truf_mantarli_pizza.jpg",
    ),
    FoodModel(
      name: "Bonfile Rulo",
      description:
          "İnce dilimlenmiş dana bonfile, içinde közlenmiş biber, mantar ve mozzarella ile rulo yapılarak fırında pişirilmiştir.",
      price: 180,
      category: "ÖZEL MENÜ YENİLER",
      photoAddress: "bonfile_rulo.jpg",
    ),
    FoodModel(
      name: "Füme Somon Salatası",
      description:
          "Taze roka, avokado, kapari, çeri domates ve limon sosla harmanlanmış füme Norveç somonu ile zenginleştirilmiş sağlıklı salata.",
      price: 110,
      category: "ÖZEL MENÜ YENİLER",
      photoAddress: "fume_somon_salatasi.jpg",
    ),
    FoodModel(
      name: "Kestaneli Risotto",
      description:
          "İtalyan arborio pirinciyle yapılan risotto, krema, beyaz şarap, rendelenmiş parmesan peyniri ve tatlı kestane parçalarıyla hazırlanır.",
      price: 135,
      category: "ÖZEL MENÜ YENİLER",
      photoAddress: "kestaneli_risotto.jpg",
    ),

    // VEJETERYAN MENU
    FoodModel(
      name: "Sebzeli Güveç",
      description:
          "Patlıcan, kabak, havuç, patates ve domates sosuyla fırında pişmiş enfes sebze güveci.",
      price: 95,
      category: "VEJETERYAN MENU",
      photoAddress: "sebzeli_guvec.jpg",
    ),
    FoodModel(
      name: "Falafel Tabağı",
      description:
          "Nohut köftesi, tahinli humus, turşu, domates ve lavaşla servis edilen Ortadoğu lezzeti.",
      price: 85,
      category: "VEJETERYAN MENU",
      photoAddress: "falafel_tabagi.jpg",
    ),
    FoodModel(
      name: "Zeytinyağlı Enginar",
      description:
          "Taze enginar, havuç, bezelye ve patates ile soğuk servis edilen klasik Ege yemeği.",
      price: 70,
      category: "VEJETERYAN MENU",
      photoAddress: "zeytinyagli_enginar.jpg",
    ),
    FoodModel(
      name: "Kinoa Salatası",
      description:
          "Renkli biber, salatalık, nane ve limon sosla hazırlanan hafif ve besleyici kinoa salatası.",
      price: 80,
      category: "VEJETERYAN MENU",
      photoAddress: "kinoa_salatasi.jpg",
    ),
    FoodModel(
      name: "Izgara Sebze Tabağı",
      description:
          "Izgara kabak, patlıcan, kırmızı biber, mantar ve zeytinyağlı sosla hazırlanmış tabak.",
      price: 90,
      category: "VEJETERYAN MENU",
      photoAddress: "izgara_sebze_tabagi.jpg",
    ),

    // ANA YEMEK
    FoodModel(
      name: "Izgara Bonfile",
      description:
          "Marine edilmiş dana bonfile, ızgarada mühürlenerek servis edilir. Yanında köz patlıcan püresi ve acılı tereyağ sosuyla sunulur.",
      price: 170,
      category: "ANA YEMEK",
      photoAddress: "izgara_bonfile.jpg",
    ),
    FoodModel(
      name: "Kremalı Tavuk",
      description:
          "Küp doğranmış tavuk göğsü, mantar, krema ve taze kekik ile birlikte sotelenip makarnayla birlikte servis edilir.",
      price: 115,
      category: "ANA YEMEK",
      photoAddress: "kremali_tavuk.jpg",
    ),
    FoodModel(
      name: "Balık Tava",
      description:
          "Mevsim balığı mısır unuyla pane edilip kızartılır. Yanında roka salatası ve limon dilimiyle servis edilir.",
      price: 130,
      category: "ANA YEMEK",
      photoAddress: "balik_tava.jpg",
    ),
    FoodModel(
      name: "Fırın Köfte",
      description:
          "Kıymadan yapılmış baharatlı köfteler, domates sos ve patates dilimleriyle fırınlanarak hazırlanır.",
      price: 100,
      category: "ANA YEMEK",
      photoAddress: "firin_kofte.jpg",
    ),
    FoodModel(
      name: "Kuzu İncik",
      description:
          "Tane karabiber, defne yaprağı ve sebzelerle birlikte yavaş pişirilmiş kuzu incik; yanında bulgur pilavıyla servis edilir.",
      price: 180,
      category: "ANA YEMEK",
      photoAddress: "kuzu_incik.jpg",
    ),

    // APARATİF YİYECEKLER
    FoodModel(
      name: "Mozzarella Stick",
      description:
          "Çıtır pane kaplı mozzarella çubukları, domatesli marinara sosla birlikte servis edilir.",
      price: 65,
      category: "APARATİF YİYECEKLER",
      photoAddress: "mozzarella_stick.jpg",
    ),
    FoodModel(
      name: "Sigara Böreği",
      description:
          "Beyaz peynir ve maydanozla doldurulmuş yufkalar, çıtır olacak şekilde kızartılmıştır.",
      price: 55,
      category: "APARATİF YİYECEKLER",
      photoAddress: "sigara_boregi.jpg",
    ),
    FoodModel(
      name: "Soğan Halkası",
      description:
          "Altın sarısı renkte kızartılmış, çıtır dış kaplamalı kalın soğan halkaları, ranch sos eşliğinde.",
      price: 50,
      category: "APARATİF YİYECEKLER",
      photoAddress: "sogan_halkasi.jpg",
    ),
    FoodModel(
      name: "Humus Tabağı",
      description:
          "Zeytinyağlı nohut ezmesi, kimyon, tahin ve limon suyuyla harmanlanmış, sumak ve pul biberle süslenmiştir.",
      price: 60,
      category: "APARATİF YİYECEKLER",
      photoAddress: "humus_tabagi.jpg",
    ),
    FoodModel(
      name: "Patates Tava",
      description:
          "Kalın doğranmış patatesler özel baharatlarla kızartılıp sarımsaklı yoğurt sosla servis edilir.",
      price: 45,
      category: "APARATİF YİYECEKLER",
      photoAddress: "patates_tava.jpg",
    ),

    // HAMBURGERLER
    FoodModel(
      name: "Double Cheeseburger",
      description:
          "İki adet 120g dana köfte, çift cheddar peyniri, turşu, karamelize soğan, domates ve özel burger sos ile servis edilir.",
      price: 135,
      category: "HAMBURGERLER",
      photoAddress: "double_cheeseburger.jpg",
    ),
    FoodModel(
      name: "Tavuk Burger",
      description:
          "Izgara tavuk göğsü, domates, marul ve hardal-mayonez sosu ile hazırlanmış hafif hamburger.",
      price: 110,
      category: "HAMBURGERLER",
      photoAddress: "tavuk_burger.jpg",
    ),
    FoodModel(
      name: "Vegan Burger",
      description:
          "Nohut ve sebzeden yapılan vegan köfte, avokado dilimleri, marul ve zeytinyağlı vegan sos ile servis edilir.",
      price: 125,
      category: "HAMBURGERLER",
      photoAddress: "vegan_burger.jpg",
    ),
    FoodModel(
      name: "Bacon Burger",
      description:
          "Dana burger köftesi üzerine çıtır dana bacon, cheddar peyniri, barbekü sos ve taze soğan halkaları eklenir.",
      price: 145,
      category: "HAMBURGERLER",
      photoAddress: "bacon_burger.jpg",
    ),
    FoodModel(
      name: "Mantar Soslu Burger",
      description:
          "Köfte üzerinde sotelenmiş mantar, karamelize soğan ve krema sosla farklı bir tat sunar.",
      price: 130,
      category: "HAMBURGERLER",
      photoAddress: "mantar_soslu_burger.jpg",
    ),

    // MAKARNALAR
    FoodModel(
      name: "Spaghetti Bolognese",
      description:
          "Kıymalı domates sosu, sarımsak, zeytinyağı ve parmesan ile hazırlanmış geleneksel İtalyan lezzeti.",
      price: 100,
      category: "MAKARNALAR",
      photoAddress: "spaghetti_bolognese.jpg",
    ),
    FoodModel(
      name: "Penne Arabiata",
      description:
          "Acılı domates sosu, sarımsak ve fesleğenle harmanlanmış penne makarna, üzerine rendelenmiş peynirle servis edilir.",
      price: 90,
      category: "MAKARNALAR",
      photoAddress: "penne_arabiata.jpg",
    ),
    FoodModel(
      name: "Fettuccine Alfredo",
      description:
          "Krema, parmesan peyniri ve sarımsak ile yapılan klasik beyaz soslu fettuccine.",
      price: 105,
      category: "MAKARNALAR",
      photoAddress: "fettuccine_alfredo.jpg",
    ),
    FoodModel(
      name: "Tavuklu Kremalı Makarna",
      description:
          "Izgara tavuk dilimleri, mantar, krema ve baharatlarla lezzetlendirilmiş makarna.",
      price: 110,
      category: "MAKARNALAR",
      photoAddress: "tavuklu_kremali_makarna.jpg",
    ),
    FoodModel(
      name: "Sebzeli Spaghetti",
      description:
          "Kabak, havuç, biber ve brokoli ile yapılan hafif, zeytinyağlı ve taze otlu spaghetti.",
      price: 95,
      category: "MAKARNALAR",
      photoAddress: "sebzeli_spaghetti.jpg",
    ),

    // SALATALAR
    FoodModel(
      name: "Sezar Salata",
      description:
          "Roka, marul, kruton, parmesan ve ızgara tavukla hazırlanan klasik salata, Sezar sos ile tamamlanır.",
      price: 85,
      category: "SALATALAR",
      photoAddress: "sezar_salata.jpg",
    ),
    FoodModel(
      name: "Ton Balıklı Salata",
      description:
          "Ton balığı, yeşillikler, mısır, kırmızı soğan ve zeytin ile hazırlanan doyurucu ve sağlıklı bir salata.",
      price: 95,
      category: "SALATALAR",
      photoAddress: "ton_balikli_salata.jpg",
    ),
    FoodModel(
      name: "Akdeniz Salatası",
      description:
          "Domates, salatalık, siyah zeytin, beyaz peynir, kırmızı soğan ve zeytinyağlı limon sosu ile hazırlanır.",
      price: 75,
      category: "SALATALAR",
      photoAddress: "akdeniz_salatasi.jpg",
    ),
    FoodModel(
      name: "Kinoalı Yeşil Salata",
      description:
          "Taze yeşillikler, kinoa, avokado, nar taneleri ve cevizle besleyici ve hafif bir seçenek sunar.",
      price: 100,
      category: "SALATALAR",
      photoAddress: "kinoali_yesil_salata.jpg",
    ),
    FoodModel(
      name: "Hellimli Salata",
      description:
          "Izgara hellim peyniri, roka, semizotu, domates ve balzamik sos ile uyumlu lezzet.",
      price: 90,
      category: "SALATALAR",
      photoAddress: "hellimli_salata.jpg",
    ),

    // ALKOLLÜ ÜRÜNLER
    FoodModel(
      name: "Efes Pilsen (50 cl)",
      description:
          "Soğuk servis edilen yerli bira. Hafif malt aromalı, ferahlatıcı bir içecek.",
      price: 60,
      category: "ALKOLLÜ ÜRÜNLER",
      photoAddress: "efes_pilsen_50_cl.jpg",
    ),
    FoodModel(
      name: "Red Wine (Kırmızı Şarap) 15 cl",
      description:
          "Kırmızı üzümden elde edilen, meyvemsi aromalara sahip kaliteli şarap.",
      price: 90,
      category: "ALKOLLÜ ÜRÜNLER",
      photoAddress: "red_wine_kirmizi_sarap_15_cl.jpg",
    ),
    FoodModel(
      name: "White Wine (Beyaz Şarap) 15 cl",
      description: "Taze, narenciye notaları içeren ferahlatıcı beyaz şarap.",
      price: 85,
      category: "ALKOLLÜ ÜRÜNLER",
      photoAddress: "white_wine_beyaz_sarap_15_cl.jpg",
    ),
    FoodModel(
      name: "Rakı (35 cl)",
      description:
          "Anason aromalı geleneksel Türk içkisi, suyla karıştırıldığında beyazlaşır.",
      price: 200,
      category: "ALKOLLÜ ÜRÜNLER",
      photoAddress: "raki_35_cl.jpg",
    ),
    FoodModel(
      name: "Margarita",
      description:
          "Tekila, lime suyu ve triple sec ile hazırlanmış buzlu, tuz kenarlı klasik kokteyl.",
      price: 120,
      category: "ALKOLLÜ ÜRÜNLER",
      photoAddress: "margarita.jpg",
    ),

    // SICAK İÇECEKLER
    FoodModel(
      name: "Türk Kahvesi",
      description:
          "Közde pişirilmiş, bol köpüklü geleneksel Türk kahvesi. Yanında lokum ile sunulur.",
      price: 35,
      category: "SICAK İÇECEKLER",
      photoAddress: "turk_kahvesi.jpg",
    ),
    FoodModel(
      name: "Filtre Kahve",
      description:
          "Orta sertlikte filtrelenmiş sade kahve, taze demlenmiş olarak sunulur.",
      price: 45,
      category: "SICAK İÇECEKLER",
      photoAddress: "filtre_kahve.jpg",
    ),
    FoodModel(
      name: "Cappuccino",
      description:
          "Espresso ve süt köpüğüyle hazırlanmış İtalyan kahvesi, üstü tarçınla süslenmiştir.",
      price: 50,
      category: "SICAK İÇECEKLER",
      photoAddress: "cappuccino.jpg",
    ),

    // SOĞUK İÇECEKLER
    FoodModel(
      name: "Limonata",
      description:
          "Taze limon suyu, nane ve az şekerle hazırlanan doğal ev yapımı limonata.",
      price: 30,
      category: "SOĞUK İÇECEKLER",
      photoAddress: "limonata.jpg",
    ),
    FoodModel(
      name: "Ev Yapımı Soğuk Çay",
      description:
          "Demlenmiş siyah çay, limon ve şeftali aromasıyla hazırlanan soğuk içecek.",
      price: 35,
      category: "SOĞUK İÇECEKLER",
      photoAddress: "ev_yapimi_soguk_cay.jpg",
    ),

    // SOĞUK KAHVELER
    FoodModel(
      name: "Ice Latte",
      description:
          "Soğuk süt ve buzla hazırlanan klasik espresso bazlı yaz içeceği.",
      price: 45,
      category: "SOĞUK KAHVLER",
      photoAddress: "ice_latte.jpg",
    ),
    FoodModel(
      name: "Cold Brew",
      description:
          "Uzun sürede demlenmiş, yumuşak içimli ve düşük asiditeli soğuk kahve.",
      price: 50,
      category: "SOĞUK KAHVLER",
      photoAddress: "cold_brew.jpg",
    ),

    // TATLILAR
    FoodModel(
      name: "Tiramisu",
      description:
          "Kedi dili bisküvi, mascarpone kreması ve espresso ile yapılan İtalyan tatlısı.",
      price: 60,
      category: "TATLILAR",
      photoAddress: "tiramisu.jpg",
    ),
  ];
}
