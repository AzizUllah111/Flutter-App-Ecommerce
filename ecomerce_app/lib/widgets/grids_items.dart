import 'package:flutter/material.dart';
import 'package:ecomerce_app/screens/item_screen.dart';

class GridItems extends StatefulWidget {
  var pNames = [
    "Apple Watch M2",
    "White T-Shirt",
    "Nike Shoes",
    "Ear Headphones",
  ];

  @override
  _GridItemsState createState() => _GridItemsState();
}

class _GridItemsState extends State<GridItems> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.pNames.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemScreen()),
            );
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(
                          "30% Off",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Icon(Icons.favorite, color: Colors.redAccent),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/${widget.pNames[index]}.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.pNames[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "\$100",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.redAccent,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "\$130",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "See All",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
