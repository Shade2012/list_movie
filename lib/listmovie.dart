import 'package:flutter/material.dart';
import 'data_movie.dart';
class listmovie extends StatefulWidget {
  const listmovie({Key? key}) : super(key: key);

  @override
  State<listmovie> createState() => _listmovieState();
}

class _listmovieState extends State<listmovie> {

  List<Movie> datamovie = [];
  @override
void initState() {
    // TODO: implement initState
    super.initState();
    Movie spiritedaway = new Movie("Spirited Away",'asset/spirited_away.jpg', "2001", "8.6" );
    Movie pussinboots = new Movie("Puss in Boots: The Last Wish",'asset/puss.jpg', "2022", "9.1" );
    Movie unberabletalent = new Movie("The Unbearable Weight of Massive Talent", 'asset/theunbearable.jpg', "2022", "7.6");
    Movie riseofguardian = new Movie("Rise of the Guardians", 'asset/rise_of_guardian.jpg', "2012", "7.2");
    datamovie.add(riseofguardian);
    datamovie.add(unberabletalent);
    datamovie.add(spiritedaway);
    datamovie.add(pussinboots);
  }

  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("List Film Favorit"),
  centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: datamovie.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 1.5,
                offset: Offset(0, 0),
              )],
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(datamovie[index].nama,
                      style: TextStyle(fontWeight: FontWeight.bold)

                    ),
                    Image.asset(datamovie[index].poster),

                    Text(datamovie[index].rate,
                        style: TextStyle(fontWeight: FontWeight.bold)),

                    Text(datamovie[index].tahunrilis,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),

              ],
            ),
          );
        },
      ),
    );


    return const Placeholder();
  }

}
