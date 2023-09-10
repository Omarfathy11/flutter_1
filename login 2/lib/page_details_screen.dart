import 'package:flutter/material.dart';
import 'package:practise/login_screen.dart';

class PageDetails extends StatelessWidget {
  const PageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 121, 174, 137)),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const LogIn();
                        }));
                      },
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  const Text(
                    'Feed',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Filter',
                    style: TextStyle(
                        color: Color(0xff5DB075),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                onChanged: (value) {
                  print(value);
                },
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    fillColor: const Color(0xffF6F6F6),
                    //  fillColor: Colors.amber,
                    filled: true,
                    hintText: "search",
                    hintStyle: const TextStyle(
                        color: Color(0xffBDBDBD),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Header",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                "He'll want to use your yacht, and I don't want this thing smelling like fish..",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Header",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish.  ."),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Header",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish.."),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Header",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                  "He'll want to use your yacht, and I don't want this thing smelling like fish.."),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
