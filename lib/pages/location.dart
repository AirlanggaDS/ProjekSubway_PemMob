import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 178, 58),
          leading: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "images/logo1.png",
                  width: 200,
                  height: 200,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          leadingWidth: 70,
          title: Padding(
            padding: EdgeInsets.only( right: 20),
            child: Row(
              children: [
                const Text(
                  " FIND",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  " US",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
            ),
          ),
      ),
      body:
      Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60 ),
              child: LocationContainer(Kota: 'Surabaya', Alamat: 'Jln Raya Gubeng No.411Surabaya, East Java, 60281'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocationContainer(Kota: 'Surabaya', Alamat: 'Jl. Dr. Ir. H Soekarno No.323Surabaya, East Java, 60298'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocationContainer(Kota: 'Jakarta Pusat', Alamat: 'Jl. Jenderal SudirmanKota Jakarta Pusat, DKI Jakarta, 10270'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocationContainer(Kota: 'Jakarta Selatan', Alamat: 'Jl. Melawai Raya No.191South Jakarta, DKI Jakarta, 12160'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocationContainer(Kota: 'Surabaya', Alamat: 'Jl. Dr. Ir. H Soekarno No.323Surabaya, East Java, 60298'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocationContainer(Kota: 'Surabaya', Alamat: 'Jl. Dr. Ir. H Soekarno No.323Surabaya, East Java, 60298'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocationContainer(Kota: 'Surabaya', Alamat: 'Jl. Dr. Ir. H Soekarno No.323Surabaya, East Java, 60298'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocationContainer(Kota: 'Surabaya', Alamat: 'Jl. Dr. Ir. H Soekarno No.323Surabaya, East Java, 60298'),
            ),
          ],
        ),
      ) 
          );
    
  }
}

class LocationContainer extends StatelessWidget {
  final String Kota;
  final String Alamat;
   LocationContainer({required this.Kota, required this.Alamat});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(Kota, 
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(Alamat,
            style: TextStyle(
              color: Colors.black,
              
            ),),
          )
        ],
      ),
    );
  }
}