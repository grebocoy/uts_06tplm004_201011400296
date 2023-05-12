import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts_06tplm004_201011400296/data/shoes_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shoes",
          style: TextStyle(color: Colors.black54, fontSize: 32),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xFFEFEFEF),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: SHOES_DATA
              .map((item) => Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 32),
                    child: (Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      color: item.color,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        child: InkWell(
                          onTap: () {},
                          child: ListTile(
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    item.title,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    item.category,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  )
                                ],
                              ),
                              subtitle: Text('\$' + item.price.toString()),
                              trailing: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.network(item.image,
                                      fit: BoxFit.fill))),
                        ),
                      ),
                    )),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
