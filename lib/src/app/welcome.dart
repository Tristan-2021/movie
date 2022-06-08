import 'package:flutter/material.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_movi_recomend.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_movi_top_rare.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/search_movie.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double zise = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          key: const Key('_column_principal'),
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SearchMovie(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 0.0, top: 10, bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17)),
                    color: Theme.of(context).cardColor),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, bottom: 20.0, right: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'RECOMMENDED FOR YOU ',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                              ),
                            ),
                            Text(
                              'Sell all',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: zise / 3.5,
                          width: double.infinity,
                          margin: const EdgeInsets.all(5.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(17)),
                          ),
                          child: const ItemsMoviRecomend()),
                      Container(
                        height: zise / 3.5,
                        margin: const EdgeInsets.all(5.0),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17)),
                        ),
                        child: const ItemsTopRare(),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
