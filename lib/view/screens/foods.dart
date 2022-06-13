import 'package:flutter/material.dart';
import 'package:viata/models/food.dart';
import 'package:viata/network/api_service.dart';
import 'package:viata/view/components/components.dart';

class Foods extends StatelessWidget {
  const Foods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Food>>(
      future: ApiService.create().getFoodList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var foods = snapshot.data!;
          return SafeArea(
            child: ListView(
              primary: true,
              padding: const EdgeInsets.all(16.0),
              scrollDirection: Axis.vertical,
              children: [
                const Header(),
                const SizedBox(height: 30),
                ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      var food = foods[index];
                      return FoodItem(
                        name: food.name,
                        detail: food.detail,
                        price: food.price,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemCount: foods.length),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.indigo,
            ),
          );
        }
      },
    );
  }
}
