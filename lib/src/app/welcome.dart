import 'package:flutter/material.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_movi_recomend.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Hello, What do you\n want to watch?',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17)),
                          color: Theme.of(context).canvasColor),
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 10.0, bottom: 5.0, top: 15.0),
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.white),
                          icon: Icon(
                            Icons.search,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 0.0, top: 10, bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17)),
                    color: Theme.of(context).cardColor),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, bottom: 20.0, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Text(
                              'RECOMMENDED FOR YOU ',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                          Text(
                            'Sell all',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                            width: double.infinity,
                            margin: const EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(17)),
                            ),
                            child: const ItemsMoviRecomend())),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(5.0),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(17)),
                      ),
                      child: const ItemsTopRare(),
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
