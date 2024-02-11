
import 'package:Arzon/core/repositories/models/item_repo_model.dart';
import 'package:flutter/material.dart';

class ItemColumn extends StatelessWidget {
  ItemColumn(this.item);
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: 155,
              width: double.infinity,
              child: Image.network(item.image),
            ),
            Positioned(
              top: 4,
              left: 4,
              child: SizedBox(
                width: 32,
                height: 32,
                child: Image(
                  image: AssetImage('assets/small/korzinka.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 15,
                child: Text(
                  item.category,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
          SizedBox(
            height: 55,
            child: Column(
              children: [
                Text(
                  item.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.price,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 8,
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(right: 4),
                          child: Text(
                            item.price,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 80, 78, 78),
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            item.price,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff94f0c)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
