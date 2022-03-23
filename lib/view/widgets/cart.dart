import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523__340.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                "Chicken Brust Pizza",
                style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: const Text("1 x 2 = 1000"),
              trailing: const Icon(Icons.delete),
            ),
          ),
          Card(
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523__340.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                "Chicken Pizza",
                style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: const Text("1 x 1 = 450"),
              trailing: const Icon(Icons.delete),
            ),
          ),
          Card(
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523__340.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                "Mutton Momo",
                style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: const Text("1 x 4 = 400"),
              trailing: const Icon(Icons.delete),
            ),
          )
        ],
      ),
    );
  }
}
