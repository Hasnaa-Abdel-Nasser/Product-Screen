import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List imageList = [
    'assets/g.png',
    'assets/shoes1.png',
    'assets/shoes3.png',
    'assets/g.png',
    'assets/shoes1.png',
    'assets/shoes3.png',
  ];
  final CarouselController obj = CarouselController();
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    double mediaheight = MediaQuery.of(context).size.height;
    double mediawidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFECECEC),
          appBar: AppBar(
            title: Text("Product",style: TextStyle(color: Colors.black , fontSize: 17),),
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              icon:Icon(Icons.arrow_back_ios , color: Colors.black, size: 15),
              onPressed: (){},
            ),
            actions: [
              IconButton(
                icon:Icon(Icons.favorite , color: Colors.red, size: 25),
                onPressed: (){},
              ),
            ],
          ),
          body:Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
              child: Column(
                children: [
                  Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.only(top: 10 , bottom: 10),
                        width: double.infinity,
                        height: mediaheight * 0.3,
                        child: CarouselSlider(
                          items: imageList.map(
                              (item)=>Image.asset(item)
                          ).toList(),
                          carouselController: obj,
                          options: CarouselOptions(
                            scrollPhysics: BouncingScrollPhysics(),
                            autoPlay: true,
                            viewportFraction: 1,
                            onPageChanged: (index,reason){
                              setState(() {
                                cnt = index;
                              });
                            }
                          ),
                        )

                    ),
                      Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imageList.asMap().entries.map((entry){
                                return GestureDetector(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: cnt == entry.key ? Color(0xFFF62B83):Colors.white
                                        ),
                                      ),
                                    )
                                );
                              }).toList()
                          )
                      ),
                    ]
                  ),

                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text('Nikon FX-format D750 - 24.3 MP, SLR Camera 24-120mm Lens, Black',style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),)
                                    ),
                                    SizedBox( width: 20),
                                    Container(
                                        child: Text('20.0\$',style: TextStyle(color: Color(0xFFF62B83),fontSize: 20 , fontWeight: FontWeight.bold)
                                    ))
                                  ],
                                ),
                                SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text('Description' , textAlign: TextAlign.start , style: TextStyle(color: Colors.black , fontSize: 15,fontWeight: FontWeight.w600)),
                                  ),
                                  SizedBox( width: 20),
                                  Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_rounded , color: Colors.yellow , size: 20),
                                          Icon(Icons.star_rounded, color: Colors.yellow, size: 20),
                                          Icon(Icons.star_rounded, color: Colors.yellow, size: 20),
                                          Icon(Icons.star_rounded, color: Colors.black12, size: 20),
                                          Icon(Icons.star_rounded, color: Colors.black12, size: 20),
                                        ],
                                      ))
                                ],
                              ),
                                SizedBox(height: 10),
                                Text('The Nikon FX Format D750 SLR Camera comes loaded with an array of '
                                    'advanced features that provide total control,enabling you to capture '
                                    'life’s fleeting moments in their purest form. The compact camera comes '
                                    'with 24 to 120mm NIKKOR lens that is perfect for capturing portraits, '
                                    'landscapes, and weddings. Even though this imaging device is small and '
                                    'lightweight, it does not compromise on performance. The device’s impressive'
                                    ' 24.3MP CMOS image sensor and EXPEED 4 engine provide you with the ability '
                                    'to shoot stellar photos and videos, even in low light conditions. The sleek '
                                    'black camera’s movie shooting menu with preset control settings make it '
                                    'possible to record 1080/60p Full HD movies with reduced moiré and minimal '
                                    'jaggies. The SLR camera’s 3.2inch tilting TFT LCD monitor has a resolution '
                                    'of approximately 1229K dots. It makes it convenient for you to compose shots '
                                    'from tricky angles or playback the captured footage. '
                                    'The device’s built in WiFi simplifies on the spot sharing of your '
                                    'images and videos with the world. The inclusion of all these and several '
                                    'other sought after features make the Nikon D750 perfect for pro and semi pro '
                                    'photographers alike.' , textAlign: TextAlign.start , style: TextStyle(color: Colors.black45 , fontSize: 10,)),

                            ],
                          ),
                        ),
                      )
                    ),
                  ),
                  Container(height: mediaheight*0.1,color: Colors.white)
                ],
              )
            ),
              Container(
                height: mediaheight*0.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                  blurRadius: 25.0,
                ),
                 ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:10.0,top: 5 , right: 10.0 , bottom: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child:InkWell(
                          onTap: (){},
                          child: Row(
                            children: [
                              Icon(Icons.comment),
                              Text('  Feedback',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600))
                            ],
                          ),
                        )
                      ),
                      SizedBox( width: 20),
                      InkWell(
                        onTap: (){},
                        child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 15
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFF62B83),
                                borderRadius: BorderRadius.circular(16)
                            ),

                            child: Text('Add to Cart',style: TextStyle(color: Colors.white,fontSize: 15 , fontWeight: FontWeight.bold)
                            )),
                      )
                    ],
                  ),
                )
              )
           ]
          )
        )
    );
  }
}
