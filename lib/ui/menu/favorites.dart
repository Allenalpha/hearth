import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    
     final favourites = [
      {
        "title": "1 plot of land",
        "price": "₦250,000 /night",
        "location": "GRA, Port Harcourt, Rivers State",
        "image": "https://via.placeholder.com/150",
      },
      {
        "title": "4 bedroom detached duplex",
        "price": "₦5,500,700 /year",
        "location": "GRA, Port Harcourt, Rivers State",
        "image": "https://via.placeholder.com/150",
      },
      {
        "title": "5 plot of land",
        "price": "₦4,650,000 /plot",
        "location": "Omagwa, Rivers State",
        "image": "https://via.placeholder.com/150",
      },
      {
        "title": "Hall for Lease",
        "price": "₦250,000 /year",
        "location": "GRA, Port Harcourt, Rivers State",
        "image": "https://via.placeholder.com/150",
      },
      {
        "title": "Shelton Apartment",
        "price": "₦121,000 /night",
        "location": "GRA, Port Harcourt, Rivers State",
        "image": "https://via.placeholder.com/150",
      },
      {
        "title": "Emmy Apartment",
        "price": "₦121,000 /night",
        "location": "GRA, Port Harcourt, Rivers State",
        "image": "https://via.placeholder.com/150",
      },
    ];
 

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },),
        title: Text("Favourites",style: Body2Text ,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${favourites.length} Favourites",style: Body10Text,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: favourites.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final fav = favourites[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        //  borderRadius: const BorderRadius.only(
                             // topLeft: Radius.circular(12),
                             // bottomLeft: Radius.circular(12)),
                          child: Image.network(fav["image"]!,height: 72,width: 97,fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(fav["title"]!,style: TitleText,
                                ),
                                SizedBox(height: 4),
                                Text(fav["price"]!,style: Body5Text,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                     Icon(Icons.location_on,size: 14, color: Colors.grey),
                                     SizedBox(width: 4),
                                    Expanded(
                                      child: Text(fav["location"]!,style: TextStyle(fontSize: 12,color: darkGrey,),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite, color: Colors.red),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

    