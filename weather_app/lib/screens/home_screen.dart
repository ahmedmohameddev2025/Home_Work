import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/weather_states.dart';
import 'search_screen.dart';
import '../widgets/no_weather_body.dart';
import '../widgets/weather_info_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<WeatherCubit, WeatherState>(
      listener: (context, state) {
        if (state is WeatherFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Center(child: Text(state.errMessage)),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      },

      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Weather', style: TextStyle(color: Colors.white)),

              backgroundColor: state is WeatherLoaded
                  ? getTempColor(state.weather.maxTempC)
                  : Colors.blue,

              elevation: 4,
              shadowColor: Colors.black,

              actions: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SearchScreen()),
                    );
                  },
                ),
              ],
            ),

            body: state is WeatherInitial
                ? const NoWeatherBody()
                : state is WeatherLoaded
                ? WeatherInfoBody(weather: state.weather)
                : const NoWeatherBody(),
          );
        },
      ),
    );
  }
}
