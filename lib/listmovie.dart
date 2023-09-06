import 'package:flutter/material.dart';
import 'data_movie.dart';
import 'detail_movie.dart';
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
    Movie spiritedaway = new Movie("Spirited Away",'asset/spirited_away.jpg', "2001", "8.6","Spirited Away menceritakan tentang anak kecil bernama Chihiro yang terpaksa kerja di dunia makhluk gaib untuk menyelamatkan orangtuanya yang berubah jadi babi gara-gara makan di warung buat makhluk gaib di tempat tersebut." ,"asset/spiritedaway.jpg");
    Movie pussinboots = new Movie("Puss in Boots: The Last Wish",'asset/puss.jpg', "2022", "9.1","Puss in Boots yang berani menemukan bahwa hasratnya akan bahaya dan ketidakpedulian terhadap keselamatan telah memakan korban. Puss telah menghabiskan delapan dari sembilan nyawanya, meskipun ia kehilangan hitungan di sepanjang jalan. Mendapatkan kembali kehidupan itu akan mengirim Puss in Boots pada pencarian termegahnya.","asset/pussinbut.jpg" );
    Movie unberabletalent = new Movie("The Unbearable Weight of Massive Talent", 'asset/theunbearable.jpg', "2022", "7.6","Nicolas Cage yang kekurangan uang, menerima tawaran untuk tampil dengan bayaran di pesta ulang tahun miliarder fans sejati, Javi. Hal berubah menjadi sangat tak terduga ketika Cage direkrut oleh seorang agen CIA dan dipaksa untuk hidup bersama dengan Javi sekaligus menjadi informan mereka","asset/theunberable.jpg");
    Movie riseofguardian = new Movie("Rise of the Guardians", 'asset/rise_of_guardian.jpg', "2012", "7.2","Saat roh jahat dikenal dengan Pitch the Bogeyman mencoba menguasai dunia dengan menciptakan rasa takut pada anak-anak, para Penjaga abadi, yang dikenal sebagai pahlawan dari berbagai kisah anak-anak: Jack Frost, Easter Bunny, Tooth Fairy, Sandman and Santa Claus - harus bersatu untuk pertama kalinya demi melindungi harapan, kepercayaan dan imajinasi anak-anak diseluruh dunia.","asset/riseofguardian.jpg");
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
        padding:  EdgeInsets.all(8),
        itemCount: datamovie.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 200,
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

                    Text("Rating :" + datamovie[index].rate,
                        style: TextStyle(fontWeight: FontWeight.bold)),

                    Text("Tahun Rilis " + datamovie[index].tahunrilis,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 0,top: 15, right: 0,bottom: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailMovie(movie:datamovie[index]),
                              ),
                            );
                          },style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(Colors.grey),
                        ),
                          child: Text('Detail',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          );
        },
      ),
    );



  }

}
