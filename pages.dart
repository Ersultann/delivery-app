import 'package:zhetkiz_kz/color_filters.dart';
import 'package:flutter/material.dart';
import 'package:zhetkiz_kz/detailpage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Zhetkiz Kz';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}


class RestoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Рестораны'), actions: [
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          onPressed: () => {},
        )
      ]),
      body: ListView(
          children: [buildRestoCard(), buildRestoCard2(context), buildRestoCard3()]),
    );
  }
}

class RestoScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Супермаркеты'), actions: [
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          onPressed: () => {},
        )
      ]),
      body: ListView(
          children: [buildSuperCard(), buildSuperCard2(), buildSuperCard3()]),
    );
  }
}

Widget buildRestoCard() => Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/10/15/11/41/sushi-2853382_1280.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {
                BuildContext context;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestoScreen()),
                );
              },
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'СушиХайп',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildRestoCard2(BuildContext context) => Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/burger-with-beef-and-bacon-picture-id1166797165?b=1&k=6&m=1166797165&s=170667a&w=0&h=oli4U_a2wA7GLusYOipZ4-7up27c82_rFVoYpLNJou0='),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(),
              ));
            }),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Tsar`s Burger',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildRestoCard3() => Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/plate-of-meat-free-doner-cebab-picture-id1245412370?b=1&k=6&m=1245412370&s=170667a&w=0&h=GrLlfTS4mMuy0NJ5cK5CyMMK76TwttKOwYBOT3LvFrU='),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(onTap: () {}),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Zheka`s Doner',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildSuperCard() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://avatars.mds.yandex.net/get-altay/2029876/2a0000017015a47cbf6fadf653964a8b381c/L'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(onTap: () {
              BuildContext context;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestoScreen()),
              );
            }),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Small',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildSuperCard2() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/03/02/20/13/shopping-1232944__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(onTap: () {
              BuildContext context;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestoScreen()),
              );
            }),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Magnum',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildSuperCard3() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/12/30/11/57/fruit-basket-1114060__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(onTap: () {}),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Azhar City',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

class RestoScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Цветочные магазины'), actions: [
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          onPressed: () => {},
        )
      ]),
      body: ListView(children: [
        buildFlowerCard(),
        buildFlowerCard2(),
        buildFlowerCard3()
      ]),
    );
  }
}

Widget buildFlowerCard() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Camellia Flowers',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildFlowerCard2() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/lot-of-flower-bouquets-at-the-florist-shop-on-the-table-made-of-picture-id1159802579?b=1&k=6&m=1159802579&s=170667a&w=0&h=OVq7mlwJjxJWeggMsgPib092ALR1-Jk6d8US7WSEJdM='),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {},
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Империя Цветов',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildFlowerCard3() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2013/07/30/12/28/bouquet-168832__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(onTap: () {}),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Art-Flower',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            buildImageCard(),
            buildImageCard2(),
            buildImageCard3(),
            buildImageCard6(context),
            buildImageCard5(context),
          ],
        ),
      );

  Widget buildImageCard() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/12/08/00/26/food-1081707__340.jpg'),
              colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestoScreen()),
                  );
                },
              ),
              height: 140,
              fit: BoxFit.cover,
            ),
            Text(
              'Рестораны',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      );

  Widget buildImageCard2() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/03/02/20/13/shopping-1232944__340.jpg'),
              colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestoScreen2()),
                  );
                },
              ),
              height: 140,
              fit: BoxFit.cover,
            ),
            Text(
              'Супермаркеты',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      );

  Widget buildImageCard3() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/02/15/13/40/tulips-2068692__340.jpg'),
              colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestoScreen3()),
                  );
                },
              ),
              height: 140,
              fit: BoxFit.cover,
            ),
            Text(
              'Цветы',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      );
}

Widget buildImageCard4(BuildContext context) => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2013/11/26/17/23/pharmacy-218692__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {
                BuildContext context;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestoScreen6()),
                );
              },
            ),
            height: 140,
            fit: BoxFit.cover,
          ),
          Text(
            'Аптеки',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildImageCard5(BuildContext context) => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/03/30/21/59/coffee-1291656__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestoScreen4()),
                );
              },
            ),
            height: 140,
            fit: BoxFit.cover,
          ),
          Text(
            'Коффе и сладости',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

class RestoScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Коффе и сладости'), actions: [
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          onPressed: () => {},
        )
      ]),
      body: ListView(children: [
        buildCoffeeCard(),
        buildCoffeeCard2(),
        buildCoffeeCard3()
      ]),
    );
  }
}

Widget buildCoffeeCard() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/10/12/14/54/coffee-983955__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Zebra Coffee',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildCoffeeCard2() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/06/24/01/15/morning-819362__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {},
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Globall Coffee',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildCoffeeCard3() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/homemade-triple-layer-chocolate-cake-picture-id1227551348?b=1&k=6&m=1227551348&s=170667a&w=0&h=R1Rf6GVFS-Qcgdg-qzXssV4NLjC-U_tcG6wzg8Ez9g4='),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(onTap: () {}),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Сластёна',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildImageCard6(BuildContext context) => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2018/03/10/19/32/logo-pharmacy-3215049_1280.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestoScreen6()),
                );
              },
            ),
            height: 140,
            fit: BoxFit.cover,
          ),
          Text(
            'Аптеки',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

class RestoScreen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Аптеки'), actions: [
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          onPressed: () => {},
        )
      ]),
      body: ListView(
          children: [buildPharmCard(), buildPharmCard2(), buildPharmCard3()]),
    );
  }
}

Widget buildPharmCard() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/02/02/18/59/health-621351__340.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Europharma',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildPharmCard2() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/07/24/21/01/thermometer-1539191__180.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(
              onTap: () {},
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Доктор Плюс',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );

Widget buildPharmCard3() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/11/23/15/03/close-up-1853400__180.jpg'),
            colorFilter: ColorFilters.greyscale,
            child: InkWell(onTap: () {}),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Zerde Аптека',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
