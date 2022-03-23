import 'package:flutter/material.dart';

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
