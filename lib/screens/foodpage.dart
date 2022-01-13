import 'package:flutter/material.dart';
import 'package:shopapp/base/basenames.dart';

class Foodpage extends StatefulWidget {
  const Foodpage({ Key? key }) : super(key: key);

  @override
  _FoodpageState createState() => _FoodpageState();
}

class _FoodpageState extends State<Foodpage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.5,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.redAccent,
                Colors.blueAccent,
              ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.16,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: index == choosenIndex
                            ? Colors.blueAccent
                            : Colors.green),
                    child: TextButton(
                      child: Text(
                        "${pageNames[index]}",
                        style: const TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        choosenIndex = index;
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => pushNames[index],
                          ),
                        );
                        setState(() {});
                      },
                    ),
                  );
                }),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.65,
            color: Colors.transparent,
            child: gridviewReturner(),
          ),
        ],
      ),
    );
  }

  GridView gridviewReturner() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (MediaQuery.of(context).size.width) /
              (MediaQuery.of(context).size.height / 1.5),
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    bottom: 30, top: 5, right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: NetworkImage("${foodImageAddresses[index]}"),
                        fit: BoxFit.cover),
                  ),
                ),
                left: 21,
                top: -20,
              ),
            ],
            overflow: Overflow.visible,
          );
        });
  }
}