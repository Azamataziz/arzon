import '../widgets/bottom_sheet.dart';

import '../models/item_model.dart';
import 'package:flutter/material.dart';
import '../widgets/item_column.dart';

class GridItems extends StatefulWidget {
  @override
  State<GridItems> createState() => _GridItemsState();
}

class _GridItemsState extends State<GridItems> {
  final items = const [
    ItemModel(
        image: 'assets/items/2.png',
        firstPrice: '66 990',
        secondPrice: '52 990',
        sale: '20%',
        title: 'Колбаса В/К Sherin Arqon',
        count: '800g±10g',
        endDate: '24.01.2024',
        brand: 'baraka'),
    ItemModel(
        image: 'assets/items/1.png',
        firstPrice: '9 990',
        secondPrice: '8 990',
        sale: '10%',
        title: 'Напиток Черноголовка Тархун',
        count: '1.5l',
        endDate: '24.01.2024',
        brand: 'korzinka'),
    ItemModel(
        image: 'assets/items/3.png',
        firstPrice: '10 990',
        secondPrice: '7 990',
        sale: '27%',
        title: 'Шок.плитка Alpen Gold..',
        count: '85g',
        endDate: '24.01.2024',
        brand: 'makro'),
    ItemModel(
        image: 'assets/items/4.png',
        firstPrice: '349 990',
        secondPrice: '99 990',
        sale: '70%',
        title: 'Термос Yiwu кувшин...',
        count: '2l',
        endDate: '24.01.2024',
        brand: 'andalus'),
    ItemModel(
        image: 'assets/items/11.jpg',
        firstPrice: '2 438 000',
        secondPrice: '1 980 000',
        sale: '21%',
        title: 'Пылесос TEFAL TW4855EA',
        count: '1 шт',
        endDate: '13.02.2024',
        brand: 'mediapark'),
    ItemModel(
        image: 'assets/items/1.png',
        firstPrice: '9 990',
        secondPrice: '8 990',
        sale: '10%',
        title: 'Напиток Черноголовка Тархун',
        count: '1.5l',
        endDate: '24.01.2024',
        brand: 'texnomart'),
    ItemModel(
        image: 'assets/items/makfa.png',
        firstPrice: '9 990',
        secondPrice: '8 490',
        sale: '15%',
        title: 'Makfa_vitki',
        count: '400g',
        endDate: '24.01.2024',
        brand: 'korzinka'),
    ItemModel(
        image: 'assets/items/borjomi.png',
        firstPrice: '13 990',
        secondPrice: '11 990',
        sale: '14%',
        title: 'Вода мин. Borjomi',
        count: '750мл',
        endDate: '24.01.2024',
        brand: 'korzinka'),
    ItemModel(
        image: 'assets/items/jacobs.png',
        firstPrice: '219 990',
        secondPrice: '149 990',
        sale: '31%',
        title: 'Jacobs Monarch в зернах',
        count: '800g',
        endDate: '24.01.2024',
        brand: 'magnum'),
    ItemModel(
        image: 'assets/items/passim.png',
        firstPrice: '13 990',
        secondPrice: '11 990',
        sale: '14%',
        title: 'Крупа перловая Passim в/упак',
        count: '400g',
        endDate: '24.01.2024',
        brand: 'makro'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          mainAxisExtent: 223,
        ),
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.white,
                  builder: (ctx) {
                    return BottomSheeet(items[i]);
                  });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(
                    width: 1,
                    color: Colors.black12,
                  ),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: ItemColumn(items[i]),
              ),
            ),
          );
        });
  }
}
