import 'package:flutter/material.dart';
import 'package:viata/models/disease.dart';
import 'package:viata/network/api_service.dart';
import 'package:viata/view/components/components.dart';

class Diseases extends StatelessWidget {
  const Diseases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Disease>>(
      future: ApiService.create().getDiseaseList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var diseases = snapshot.data!;
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
                      var disease = diseases[index];
                      return DiseaseItem(
                        imageUrl: disease.photo,
                        name: disease.name,
                        detail: disease.detail,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemCount: diseases.length)
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
