import 'package:flutter/material.dart';
import 'detail_grid.dart';

class CustomeGrid extends StatefulWidget {
  const CustomeGrid({super.key});
  @override
  State<CustomeGrid> createState() => _CustomeGridState();
}

class _CustomeGridState extends State<CustomeGrid> {
  List<Map<String, dynamic>> listMovie = [
    {
      "judul": "The Lobster",
      "gambar": "film1.jpg",
      "harga": 45000,
    },
    {
      "judul": "Big Hero",
      "gambar": "film2.jpg",
      "harga": 35000,
    },
    {
      "judul": "Jungle Cruise",
      "gambar": "film3.jpg",
      "harga": 50000,
    },
    {
      "judul": "Everything Everywhere...",
      "gambar": "film4.jpg",
      "harga": 45000,
    },
    {
      "judul": "Midsommar",
      "gambar": "film5.jpg",
      "harga": 35000,
    },
    {
      "judul": "Inside Out",
      "gambar": "film6.jpg",
      "harga": 45000,
    },
    {
      "judul": "Ratatoullie",
      "gambar": "film7.jpg",
      "harga": 45000,
    },
    {
      "judul": "The Simpson",
      "gambar": "film8.jpg",
      "harga": 35000,
    },
    {
      "judul": "Up",
      "gambar": "film9.jpg",
      "harga": 50000,
    },
    {
      "judul": "Home Alone",
      "gambar": "film10.jpg",
      "harga": 45000,
    },
    {
      "judul": "Exhuma",
      "gambar": "film11.jpg",
      "harga": 50000,
    },
    {
      "judul": "Girl From Nowhere",
      "gambar": "film12.jpg",
      "harga": 45000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custome Grid"),
        backgroundColor: Colors.grey,
      ),
      body: GridView.builder(
          itemCount: listMovie.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DetailGrid(listMovie[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                    footer: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${listMovie[index]["judul"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text("Rp. ${listMovie[index]["harga"]}")
                        ],
                      ),
                    ),
                    child: Image.asset("gambar/${listMovie[index]["gambar"]}")),
              ),
            );
          }),
    );
  }
}
