import 'package:flutter/material.dart';
import 'package:viata/models/treatment.dart';
import 'package:viata/network/api_service.dart';
import 'package:viata/view/components/components.dart';

class Treatments extends StatefulWidget {
  const Treatments({Key? key}) : super(key: key);

  @override
  State<Treatments> createState() => _TreatmentsState();
}

class _TreatmentsState extends State<Treatments> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Treatment>>(
      future: ApiService.create().getTreatmentList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var treatments = snapshot.data!;
          return SafeArea(
            child: ListView(
              primary: true,
              padding: const EdgeInsets.all(16.0),
              children: [
                const Header(),
                const SizedBox(height: 30),
                ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var treatment = treatments[index];
                      return TreatmentItem(
                        imageUrl: treatment.photo,
                        catBreed: treatment.catBreed,
                        characteristics: treatment.characteristics,
                        treatment: treatment.treatment,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemCount: treatments.length),
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
