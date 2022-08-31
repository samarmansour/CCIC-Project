import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text('Products')),
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {
            setState(() {});
          },
        ),
      ),


      body: ListView(
      
        children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
  Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/pic2.jpg')), shape: BoxShape.circle),    
                                
                              ),
                              SizedBox(width: 10,),
                               Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/pic3.PNG')), shape: BoxShape.circle),    
                                
                              ),
                               SizedBox(width: 10,),
                               Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/pic4.PNG')), shape: BoxShape.circle),    
                              
                              ),
                           
            ],
          ),
        ),
          Container(
            color: Color.fromARGB(255, 215, 209, 209),
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
                itemCount: 8,
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.66,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 13,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/pic1.jpg')),
                              color: Colors.black),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.energy_savings_leaf,color: Colors.white,),
                              Spacer(),
                              Icon(Icons.favorite_border,color: Colors.white,),
                            ],
                          ),
                        ),
                        
                        Text(
                          'Dell corei7',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Belk',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'EGP 11000',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                              child: Icon(Icons.add_shopping_cart_outlined),
                            ),
                          ],
                        ),
                        Text(
                          'EGP 12000',
                          style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
