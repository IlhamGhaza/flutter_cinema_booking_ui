import 'package:flutter/material.dart';
import 'package:flutter_cinema_booking_ui/const.dart';
import 'package:flutter_cinema_booking_ui/models/movie_model.dart';
import 'package:flutter_cinema_booking_ui/pages/movie_detail_page.dart';

class DiscoverPages extends StatefulWidget {
  const DiscoverPages({super.key});

  @override
  State<DiscoverPages> createState() => _DiscoverPagesState();
}

class _DiscoverPagesState extends State<DiscoverPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        title: const Text("Discover",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return MovieDetailPage(movie: movies[index]);
                }));
              },
              child: Card(
                color: Colors.grey[850],
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      child: Image.network(
                        movies[index].poster,
                        width: 100,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movies[index].title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              movies[index].genre,
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  // movies[index].duration.toString() + " min",
                                  formatTime(Duration(minutes: movies[index].duration)),
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Row(
                                  children: [
                                  Text(
                                    // movies[index].rating.toString(),
                                    "${movies[index].rating}/10",
                                    style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 14,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                    size: 16,
                                  ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
