import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int quantity = 1;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 4),
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,

              ),
            ),
          ),
        ),
        title: Text("Details", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.favorite , color: Colors.red[800]! , size: 30,), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset("images/R-removebg-preview.png", height: 200),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chair",
                  style: TextStyle(fontSize: 25, color: Colors.blueGrey ,fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$212",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Minimalist Style with pillow",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Loren ipsun dolor sit anet, consectetur adipisci elit, sed eiusnod tenpor incidunt ut labore et dolore nagna aliqua. Ut enin ad ninin venian, quis nostrun exercitationen ullan corporis suscipit laboriosan, nisi ut aliquid ex ea connodi consequatur.",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(height: 15),
            Row(

              children: [
                _colorOption(Colors.blue[800]!),
                _colorOption(Colors.red[800]!),
                _colorOption(Colors.green),
                _colorOption(Colors.yellow[700]!),
                Spacer(), //دي عشان البوكس يبقي في الجنب

            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove, size: 18),
                    onPressed: () {
                      setState(() {
                        if (quantity > 1) quantity--;
                      });
                    },
                  ),
                  Text(
                    quantity.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add, size: 18),
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ],
              ),
            ),
              ],
            ),
            SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

      Container(
      decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
      BoxShadow(
      color: Colors.grey.shade300,
        blurRadius: 5,
        spreadRadius: 2,
      ),
        ],
      ),
        child: IconButton(
          icon: Icon(Icons.favorite_border, color: Colors.red),
          onPressed: () {},
        ),
      ),

          // التحكم في الكمية

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
          ],
        ),
      ),
    );
  }

  Widget _colorOption(Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 0.5),
        ),
      ),
    );
  }
}