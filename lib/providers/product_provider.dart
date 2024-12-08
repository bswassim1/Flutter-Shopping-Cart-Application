import 'package:exam/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const List<Product> allProducts = [
  Product(
      id: '1',
      title: 'Apple IPhone 12',
      descreption: ' 64 Go Vert',
      details:
          'Ecran 6.1" OLED Super Retina XDR (2532 x 1170 px) - Processeur Apple A14 Bionic Hexa Core - Etanche IP68 - RAM 4 Go - Mémoire 64 Go - Système Apple iOS 14 - Appareil Photo: 2x 12 MP ( F/1.6 + F/2.4) (Arrière), 12 MP (Frontale) - 4G - Wi-Fi 6 AX - Bluetooth 5.0 - Batterie 2815 mAh - Couleur Noir - Garantie 1 an (Fourni Sans Adaptateur Secteur et Sans Ecouteurs)',
      oldPrice: 2499000,
      price: 2499000,
      imageURL: [
        'assets/products/iphone121.png',
        'assets/products/iphone122.png',
        'assets/products/iphone123.png',
      ],
      category: Category.smartPhone,
      color: [Colors.green]),
  Product(
      id: '2',
      title: 'Apple iPhone 15 Pro',
      descreption: '5G - 8 Go 128 Go Black Titanium',
      details:
          'Double SIM - Écran Super Retina XDR 6.1" - Résolution de 2556 x 1179 pixels - Puce A17 Pro avec GPU 6 cœurs (CPU 6 cœurs, GPU 6 cœurs, Neural Engine 16 cœurs) - RAM 8 Go - Stockage 128 Go - Appareil photo: (Objectif principal 48 Mpx 24 mm, ouverture ƒ/1.78 / Ultra grand-angle 12 Mpx 13 mm, ouverture ƒ/2.2 / Téléobjectif 2x 12 Mpx 48 mm, ouverture ƒ/1.78 / Téléobjectif 3x 12 Mpx : 77 mm, ouverture ƒ/2.8 / Zoom numérique jusqu’à 15x) - Flash True Tone adaptatif - Smart HDR 5 - Caméra TrueDepth (Selfie): 12 Mpx, Ouverture ƒ/1.9 - Retina Flash - Connectivité cellulaire et sans fil: 5G, Wi‑Fi 6E, Bluetooth 5.3 - NFC avec mode lecteur - GPS - Connec­teur USB‑C - Capteur Face ID - Système d’exploitation iOS 17 - Couleur : Black Titanium - Garantie 1 an',
      oldPrice: 5799000,
      price: 5499000,
      imageURL: [
        'assets/products/iphone-15-pro-1.png',
        'assets/products/iphone-15-pro-2.png',
        'assets/products/iphone-15-pro-3.png',
        'assets/products/iphone-15-pro-4.png',
        'assets/products/iphone-15-pro-5.png',
      ],
      category: Category.smartPhone,
      color: [Colors.black]),
  Product(
      id: '3',
      title: 'Samsung Galaxy S24',
      descreption: '5G 8 Go 256 Go Gris',
      details:
          'Double SIM - Écran 6.2" AMOLED dynamique 2X - Résolution: Full HD+ (2340 x 1080) - Taux de rafraîchissement: 120 Hz - Processeur: Samsung Exynos 2400 Dix cœurs - Mémoire: 8 Go - Stockage: 256 Go - Résolution caméra arrière (Multiple): 50.0 MP (f1.8) + 10.0 MP (f2.4) + 12.0 MP (f2.2) - Auto Focus - Digital Zoom up to 30x - Résolution caméra frontale: 12.0 MP (f/2.2) - Auto Focus caméra frontale - Flash - Réseau 5G - Connectivité: Interface USB-C USB 3.2 Gen 1 - Technologie de localisation GPS - Wi-Fi - Bluetooth 5.3 - NFC - Système d\'exploitation: Android 14 - Capacité de la batterie: 4000 mAh - Haut-parleurs stéréo - Poids: 167 g - Couleur Gris - Garantie 1 an',
      oldPrice: 3999000,
      price: 3699000,
      imageURL: [
        'assets/products/galaxy-s24-1.png',
        'assets/products/galaxy-s24-2.png',
        'assets/products/galaxy-s24-3.png',
        'assets/products/galaxy-s24-4.png',
      ],
      category: Category.smartPhone,
      color: [Colors.grey]),
  Product(
      id: '4',
      title: 'Samsung Galaxy S24 Ultra',
      descreption: '5G 12 Go 256 Go Violet',
      details:
          ' Double SIM - Écran 6.8" AMOLED dynamique 2X - Résolution: Quad HD+ (3120 x 1440) - Taux de rafraîchissement: 120 Hz - Prise en charge du stylet S - Processeur: Qualcomm Snapdragon 8 Gen 3 Octa-Core - Mémoire: 12 Go - Stockage: 256 Go - Résolution caméra arrière (Multiple): 200.0 MP (f1.7) + 50.0 MP (f3.4) + 12.0 MP (f2.2) + 10.0 MP (f2.4) - Auto Focus - Digital Zoom up to 100x - Résolution caméra frontale: 12.0 MP (f/2.2) - Auto Focus caméra frontale - Flash - Réseau 5G - Connectivité: Interface USB-C USB 3.2 Gen 1 - Technologie de localisation GPS - Wi-Fi - Bluetooth 5.3 - NFC - Système d\'exploitation: Android 14 - Capacité de la batterie: 5000 mAh - Haut-parleurs stéréo - Poids: 232g - Couleur Violet - Garantie 1 an',
      oldPrice: 5999000,
      price: 5699000,
      imageURL: [
        'assets/products/galaxy-s24-ul1.png',
        'assets/products/galaxy-s24-ul2.png',
        'assets/products/galaxy-s24-ul3.png',
        'assets/products/galaxy-s24-ul4.png',
      ],
      category: Category.smartPhone,
      color: [Colors.purple]),
  Product(
      id: '5',
      title: 'XIAOMI REDMI 14T',
      descreption: '12 Go 512 Go GRIS',
      details:
          'Ecran AMOLED 6.67″ - Résolution : 1220 x 2712 pixels - Affichage : IA 144 Hz nouvelle génération - Processeur : MediaTek Dimensity 8300-Ultra(4 nm) - Batterie : 5000 mAh - Hyper Charge 67 W - Caméra principale arrière : Leica50 MP+50MP+12MP - Caméra selfie : 32 MP intégrée à l’écran - technologie HDR10+, Dolby Vision - Système de refroidissement : Xiaomi IceLoop - RAM 12Go - Stockage 512 Go - Résistant aux éclaboussures, à l’eau et à la poussière IP68 - Système d’exploitation : Android 14, Xiaomi HyperOS - Fonctions IA : Entourer pour chercher de Google, Google Gemini - Connectivités : Wifi, Bluetooth 5.4 - Sécurité : Capteur d’empreintes digitales intégré à l’écran, Déverrouillage par reconnaissance faciale via l’IA - Couleur Gris - Garantie 1 an',
      oldPrice: 2199000,
      price: 2199000,
      imageURL: [
        'assets/products/redmi-14t-1.png',
        'assets/products/redmi-14t-2.png',
        'assets/products/redmi-14t-3.png',
        'assets/products/redmi-14t-4.png',
      ],
      category: Category.smartPhone,
      color: [Colors.grey, Colors.blueAccent, Colors.green, Colors.black]),
  Product(
      id: '6',
      title: 'XIAOMI Redmi Note 13 PRO',
      descreption: '5G 12 GO 512 GO WHITE',
      details:
          'Double SIM - Écran 6.67", AMOLED 1.5K, 1220 x 2712 pixels, taux de rafraîchissement 120 Hz, taux d\'échantillonnage jusqu\'à 240 Hz, 500 nits - Corning Gorilla Glass Victus - Processeur MediaTek Dimensity 7200 Octo-Core cadencé à 2.8 GHz - Taux de rafraîchissement 120Hz - RAM 12Go - Mémoire 512Go (extensible jusqu\'à 1 To via carte microSDXC) - Système: Android 13 avec MIUI14 - Appareils photo principal : Triple caméra: Caméra principale 200MP, Caméra ultra grand-angle 8MP, Objectif macro 2MP - Caméra frontale 16MP - Batterie 5100 mAh Type-C - Charge Rapide 120W - Lecteur d\'empreintes sous l\'écran - Wi-Fi - GPS - Reconnaissance faciale -  Couleur Blanc - Garantie 1 an',
      oldPrice: 1849000,
      price: 1849000,
      imageURL: [
        'assets/products/xiaomi-redmi-note-131.png',
        'assets/products/xiaomi-redmi-note-132.png',
        'assets/products/xiaomi-redmi-note-133.png',
        'assets/products/xiaomi-redmi-note-134.png',
      ],
      category: Category.smartPhone,
      color: [Colors.white]),
  Product(
      id: '7',
      title: 'TECNO POVA 6 NEO',
      descreption: '8 Go 256 Go Silver',
      details:
          'Double SIM - Écran Dot-in 6.78" Full HD+, (1080 x 2460 pixels), 120 Hz - Processeur MediaTek G99 Ultimate - RAM 8 Go (extensible jusqu\'à 16 Go) - Stockage 256 Go - Appareil photo 50MP + capteur de lumière - Caméra frontale 8MP avec double flash - Capacité de la batterie: 7000mAh - Chargeur rapide USB Type-C 33 W - Réseau 4G - Connectivité: Wi-Fi + Bluetooth - Double haut-parleur avec Dolby Atmos - résistant à l\'eau et aux éclaboussures IP53- Système d\'exploitation: Android 14 - Couleur Silver - Garantie 1 an',
      oldPrice: 699000,
      price: 699000,
      imageURL: [
        'assets/products/tecno-neo-1.png',
        'assets/products/tecno-neo-2.png',
      ],
      category: Category.smartPhone,
      color: [Colors.grey, Colors.black]),
  Product(
      id: '8',
      title: 'Tecno Spark 20',
      descreption: '8 Go 256 Go Bleu',
      details:
          'Double SIM - Ecran 6.6 HD+ (720 x 1612px) - Taux de rafraichissement 90Hz - Processeur MediaTek Helio G85 - RAM 8 Go extensible jusqu\'à 16 Go - Stockage 256 Go - Android 13 - Appareil Photo 50MP (Arrière) avec double flash , 32MP (Frontale) avec double flash - 4G - Wifi - Bluetooth - Lecteur d\'empreintes digitales - Batterie 5000 mAh - Charge rapide 18W - Garantie 1 an',
      oldPrice: 529000,
      price: 489000,
      imageURL: [
        'assets/products/spark-20-1.png',
        'assets/products/spark-20-2.png',
        'assets/products/spark-20-3.png',
      ],
      category: Category.smartPhone,
      color: [Colors.blueAccent, Colors.amber]),
  Product(
      id: '9',
      title: 'Oppo A3x',
      descreption: '4 Go 128 GO Rouge',
      details:
          'Double SIM - Écran 6.67” LCD HD+, Taux de rafraichissement 90 Hz, Luminosité 1000 nits - Processeur Snapdragon 6s Gen 1 Octa core, 4x 2.2 Ghz + 4x 1.8 Ghz - RAM 4 Go - Stockage 128 Go - IP54: résistant à la poussière et aux éclaboussures Conforme à la norme MIL-STD-810H - Caméra principale 8 MP avec Capteur de scintillement - Caméra Avant 5 MP - Système d\'exploitation Android 14, ColorOS 14.0 - 4G - Wifi - Bluetooth - Lecteur d\'empreintes Digitales - Reconnaissance Faciale - Batterie 5100 mAh - Charge Rapide 45W SUPERVOOC 2.0 - Couleur Rouge - Garantie 2 ans',
      oldPrice: 499000,
      price: 499000,
      imageURL: [
        'assets/products/oppo-a3x-1.png',
        'assets/products/oppo-a3x-2.png',
        'assets/products/oppo-a3x-3.png',
        'assets/products/oppo-a3x-4.png',
        'assets/products/oppo-a3x-5.png',
      ],
      category: Category.smartPhone,
      color: [Color.fromARGB(255, 117, 15, 15)])
];

final productProvider = Provider((ref) {
  return allProducts;
});
