import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelPage(),
    );
  }
}

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  "https://storage.googleapis.com/goa-app-12a91.appspot.com/2023-08-14T08%3A26%3A32.400Zjalavane-falls.webp?GoogleAccessId=firebase-adminsdk-zeqcj%40goa-app-12a91.iam.gserviceaccount.com&Expires=16447017600&Signature=EzOz1hSyWXjHynwfs6BZSViBgkAUdDCGJmXWBKh5B0sYiK7jP2roXUPCNAXMiPfefG2LDqezrXBqPbFHQmPrFQF3EqAqtKFq3GZIeaFNVpP%2B0ybIwABkLocmJXN84obPJd7eAeN1zcpG1XxTktWkTL2dj%2B6iqaLpRKoXLFDlcwVNejHLPRONkyrqb584hH4DyQnztjPPtjLKBTP9UUK4xKuCY5vQCrEztQmRii%2FcptqHUV4agylEfZSnwp1H7WwTXNSEw8hbxycPhTxFN%2FKOdPfJqtJqO3OmV2Uu8ELCDThP3P0EVF9ddcatibfnCd%2BXwfJytA%2FRrOGAUYgRSNv%2BuA%3D%3D",
                  height: 430,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: IconButton(
                    icon: const Icon(Icons.bookmark, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Jalvane WaterFall in Goa",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_pin, color: Colors.orange),
                      const SizedBox(width: 4),
                      Text(
                        'Jalvane WaterFall, Goa',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: List.generate(5, (index) {
                      return const Icon(Icons.star, color: Colors.orange);
                    })
                      ..add(const Text(
                        ' 4.8',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  ),
                  const SizedBox(height: 16),
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('About',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Review'),
                      Text('Photo'),
                      Text('Video'),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 16),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'The rainy season brings new life to nature, turning the forests greener, the hills mistier, and the waterfalls stronger. As the monsoons take over in full-swing, they add a new sense of vigour and magic to our waterfalls. There is a refreshed enchantment that the monsoon harbours with it, making it ideal for a short break. While you will not find a waterfall near Mumbai or in the heart of a city, we have prepared a list of 7 waterfalls near Mumbai and Pune to help you plan your next monsoon getaway.....Located in the Lonavala-Khandala Valley, Kune Falls is a three-tiered waterfall. Due to its location, it is easily accessible from both Mumbai and Pune. The monsoon turns the 200m tall waterfall into a majestic sight, which can be spotted right from the highway. Set against the Sahyadri hills, Kune Falls is a beautiful picnic spot for your monsoon getaway with family and friends. If you are looking for the best waterfall near Mumbai, head to Kune Falls....Bhivpuri Waterfalls lies at a distance of around 90 km from Mumbai. It is also very close to Lonavala if you are already in the area. Pinched between two hills, Bhivpuri Waterfalls drops down 20 feet in height, and is a treat for the eyes during the monsoon, especially in July and August. You can drive down to the waterfall, or make the picturesque 20-minute walk from Bhivpuri Railway Station. On your next visit to a waterfall near Mumbai, head to the gushing Bhivpuri Waterfalls as it cascades down the hills. It is also safe for visitors to approach and splash in',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 80),
                  Center(
                    child: ElevatedButton(
                      
                      style: ElevatedButton.styleFrom(
                        // iconColor: Colors.pinkAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 120),
                        backgroundColor: const Color.fromARGB(255, 255, 122, 113),
                      ),
                      
                      onPressed: () {},
                      child: const Text(
                        'Save a Trip',
                        style: TextStyle
                        (
                          fontSize: 16,
                          color: Colors.white
                        ),
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}