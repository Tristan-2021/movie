import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';

class SearchMovie extends StatefulWidget {
  const SearchMovie({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchMovie> createState() => _SearchMovieState();
}

class _SearchMovieState extends State<SearchMovie> {
  sumit(
    value,
  ) {
    context.read<CubitmovieCubit>().getMoviesSearch(value);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 190,
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
                  borderRadius: const BorderRadius.all(Radius.circular(17)),
                  color: Theme.of(context).canvasColor),
              width: 300,
              child: TextField(
                onSubmitted: sumit,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 10.0, bottom: 5.0, top: 15.0),
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
    );
  }
}
