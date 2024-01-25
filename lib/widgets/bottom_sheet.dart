import '../models/item_model.dart';
import 'package:flutter/material.dart';

class BottomSheeet extends StatelessWidget {
  BottomSheeet(this.item);
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 3,
        child: Stack(children: [
          Center(
            child: Image(
              image: AssetImage(item.image),
              height: 200,
            ),
          ),
          if (item.brand == 'havas')
            Positioned(
                top: 16,
                child: SizedBox(
                  width: 128,
                  height: 64,
                  child: Image.asset(
                    'assets/big/${item.brand}.png',
                    fit: BoxFit.contain,
                  ),
                )),
          if (item.brand != 'havas')
            Positioned(
              left: 16,
              child: SizedBox(
                width: 128,
                height: 64,
                child: Image.asset(
                  'assets/big/${item.brand}.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          Positioned(
            top: 10,
            right: 16,
            child: CircleAvatar(
              backgroundColor: const Color(0xfff94f0c),
              radius: 25,
              child: Text(
                item.sale,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                item.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ))
        ]),
      ),
      Expanded(
        flex: 1,
        child: SizedBox(
          child: Column(
            children: [
              Text(
                item.count,
                textAlign: TextAlign.center,
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: Text(
                      item.firstPrice,
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 141, 140, 140)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: Text(
                      item.secondPrice,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff94f0c)),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 12),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Amal qilish muddati: ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              item.endDate,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xfff94f0c),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
