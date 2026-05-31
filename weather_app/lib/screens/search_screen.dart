import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFAA44),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Search a City",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 4,
        shadowColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 64,
        ),

        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              if (value.trim().isEmpty) return;

              await BlocProvider.of<WeatherCubit>(
                context,
              ).getWeather(value);

              if (!context.mounted) return;

              Navigator.pop(context);
            },

            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 24,
              ),

              labelText: 'Search',
              hintText: 'Enter City Name',
              suffixIcon: Icon(Icons.search),

              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFFAA44),
                ),
              ),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFFAA44),
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFFAA44),
                ),
              ),

              labelStyle: TextStyle(
                color: Color(0xFFFFAA44),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
