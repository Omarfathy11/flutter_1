import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final data;
  const ItemDetails({super.key, this.data});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  String? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 40,
            selectedItemColor: Colors.orange,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ]),
        endDrawer: Drawer(),
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shop),
              Text(
                "  Ecomemerce ",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Fathy ",
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
          iconTheme: const IconThemeData(
              // بيتحكم في زرار الباك او اي ايكون مكانه
              color: Colors.black),
          backgroundColor: Colors.grey[200],
          elevation: 0.0, // لالغاء الظل
        ),
        body: ListView(
          children: [
            Image.asset(widget.data["image"]),
            Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.data["title"],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 50),
                )),
            Container(
                child: Text(
              widget.data["subtitle"],
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.orange),
            )),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "color :",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100),
              child: RadioListTile(
                  title: const Text("yellow"),
                  value: "yellow",
                  groupValue: color,
                  onChanged: (val) {
                    setState(() {
                      color = val;
                    });
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100),
              child: RadioListTile(
                  title: const Text("red"),
                  value: "red",
                  groupValue: color,
                  onChanged: (val) {
                    setState(() {
                      color = val;
                    });
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100),
              child: RadioListTile(
                  title: const Text("orange"),
                  value: "orange",
                  groupValue: color,
                  onChanged: (val) {
                    setState(() {
                      color = val;
                    });
                  }),
            ),
            Container(
              margin:const  EdgeInsets.symmetric(horizontal: 60 ),
              child: MaterialButton(
                padding: const EdgeInsets.symmetric(vertical: 15),
                color: Colors.black,
                onPressed: () {},
                child: const Text("Add to Cart", style: TextStyle(color: Colors.white,),
              )
                    ),
            )],
        ));
  }
}
