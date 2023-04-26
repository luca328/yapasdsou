import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/assets/images/image.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/views/homeview.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/post.dart';

class PlanView extends StatelessWidget {
  final String titre;
  final String description;
  final String lien;
  final int rating;

  const PlanView({
    super.key,
    this.titre = "Lorem Ipsum",
    this.description =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    this.lien = "Abonnement 1 an Lorem Ipsum",
    this.rating = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.brokenWhite,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    image: DecorationImage(
                      image: AssetImage(CustomImages.tacos),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.1),
                      ],
                      stops: const [
                        0.0,
                        0.5,
                        1.0
                      ]
                    )
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(titre, style: CustomTextStyles.titleSmall(color: Colors.white),),
                        const SizedBox(height: 5),
                        Text("2 mois offerts", style: CustomTextStyles.normalBoldInterText(color: Colors.white),),
                      ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Post(text: description, rate: rating, author: "Killian74", authorImage: CustomImages.profilePicture,),
            const SizedBox(height: 20),
            Text("testée par 32 galériens", style: CustomTextStyles.normalBoldText(color: Colors.black)),
            const Spacer(),
            SimpleButton(text: "PROFITER DE L'OFFRE", pressed: () => { Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeView()))}, color: CustomColors.blue),
            const SizedBox(height: 30),

          ],
        )
    );
  }
}
