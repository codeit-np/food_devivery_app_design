import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //Carousel Slide
                SizedBox(
                  width: Get.size.width,
                  height: 200,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062__340.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                //Todays Special
                ListTile(
                  title: Text(
                    "Todays Special",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: const Text("Get 15% off"),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: Get.size.width,
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ProductWidget(
                          title: "Chicken Brust Pizza",
                          description:
                              "Cheese burst-Chicken Mushroom Pizza ... Reviews. There are no reviews yet. Only logged in customers who have purchased this product may leave a review",
                          image: "https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523__340.jpg",
                        ),
                        ProductWidget(
                          title: "Chick Burger",
                          description:
                              "Cheese burger Mushroom Pizza ... Reviews. There are no reviews yet. Only logged in customers who have purchased this product may leave a review",
                          image: "https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg",
                        ),
                        ProductWidget(
                          title: "Chicken Momo",
                          description:
                              "Chicken Momo. Reviews. There are no reviews yet. Only logged in customers who have purchased this product may leave a review",
                          image: "https://cdn.pixabay.com/photo/2021/10/28/08/48/momos-6749181__340.jpg",
                        ),
                      ],
                    ),
                  ),
                ),
                //Todays Special End

                //Thuppa Items
                ListTile(
                  title: Text(
                    "Thuppa Items",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: const Text("Get 5% off"),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: Get.size.width,
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ProductWidget(
                          title: "Chiekn Thuppa",
                          description:
                              "Chicken Thuppa Reviews. There are no reviews yet. Only logged in customers who have purchased this product may leave a review",
                          image: "https://cdn.pixabay.com/photo/2018/07/18/19/12/pasta-3547078__340.jpg",
                        ),
                        ProductWidget(
                          title: "Chick Burger",
                          description:
                              "Cheese burger Mushroom Pizza ... Reviews. There are no reviews yet. Only logged in customers who have purchased this product may leave a review",
                          image: "https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg",
                        ),
                        ProductWidget(
                          title: "Chicken Momo",
                          description:
                              "Chicken Momo. Reviews. There are no reviews yet. Only logged in customers who have purchased this product may leave a review",
                          image: "https://cdn.pixabay.com/photo/2021/10/28/08/48/momos-6749181__340.jpg",
                        ),
                      ],
                    ),
                  ),
                ),

                //Todays Special End

                ListTile(
                  title: Text(
                    "Special Offers",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: const Text("Get 80% off"),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                ),
              ],
            ),
          )),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const ProductWidget({Key? key, required this.image, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .2,
      child: SizedBox(
        width: 200,
        height: 150,
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                  width: 200,
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(title, style: const TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                description,
                style: Theme.of(context).textTheme.caption,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
