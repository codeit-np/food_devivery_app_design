import 'package:demo/view/widgets/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
