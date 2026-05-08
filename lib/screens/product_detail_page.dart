import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {

  final String image;
  final String title;
  final String price;

  const ProductDetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [

            // IMAGE SECTION
            Stack(
              children: [

                // PRODUCT IMAGE
                Align(
                  alignment: Alignment.topRight,

                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),

                    child: Image.asset(
                      image,

                      height: 450,
                      width: MediaQuery.of(context).size.width * 0.85,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // BACK BUTTON
                Positioned(
                  top: 50,
                  left: 20,

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                        ),
                      ],
                    ),

                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      ),

                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),

                // COLOR SELECTOR
                Positioned(
                  top: 150,
                  left: 25,

                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                        ),
                      ],
                    ),

                    child: Column(
                      children: [

                        buildColorDot(
                          Colors.white,
                          true,
                        ),

                        buildColorDot(
                          Colors.brown.shade400,
                          false,
                        ),

                        buildColorDot(
                          Colors.brown.shade200,
                          false,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // PRODUCT INFO
            Padding(
              padding: const EdgeInsets.all(25),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  // TITLE
                  Text(
                    title,

                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // PRICE + QTY
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      Text(
                        price,

                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Row(
                        children: [

                          buildQtyButton(Icons.remove),

                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),

                            child: Text(
                              '01',

                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          buildQtyButton(Icons.add),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // RATING
                  const Row(
                    children: [

                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 22,
                      ),

                      SizedBox(width: 5),

                      Text(
                        '4.5',

                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(width: 10),

                      Text(
                        '(50 reviews)',

                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // DESCRIPTION
                  const Text(
                    'Minimal Stand is made of natural wood. '
                    'The design is very simple and minimal. '
                    'This furniture is suitable for modern homes '
                    'and makes your room more elegant.',

                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.8,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // EXTRA INFO
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      infoBox(
                        Icons.chair,
                        'Chair',
                      ),

                      infoBox(
                        Icons.star,
                        'Premium',
                      ),

                      infoBox(
                        Icons.local_shipping,
                        'Free Ship',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // BOTTOM BUTTON
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),

        child: Row(
          children: [

            // BOOKMARK BUTTON
            Container(
              padding: const EdgeInsets.all(15),

              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Icon(
                Icons.bookmark_border,
                size: 30,
              ),
            ),

            const SizedBox(width: 20),

            // ADD TO CART BUTTON
            Expanded(
              child: ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF242424),

                  minimumSize:
                      const Size(double.infinity, 60),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                child: const Text(
                  'Add to cart',

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // COLOR DOT
  Widget buildColorDot(
    Color color,
    bool isSelected,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),

      padding: const EdgeInsets.all(3),

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        border: Border.all(
          color: isSelected
              ? Colors.grey
              : Colors.transparent,
          width: 2,
        ),
      ),

      child: CircleAvatar(
        backgroundColor: color,
        radius: 12,
      ),
    );
  }

  // QUANTITY BUTTON
  Widget buildQtyButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),

      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Icon(
        icon,
        size: 20,
      ),
    );
  }

  // EXTRA INFO BOX
  Widget infoBox(
    IconData icon,
    String title,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 15,
      ),

      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        children: [

          Icon(
            icon,
            size: 28,
            color: Colors.black87,
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}