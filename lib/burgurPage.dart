import 'package:flutter/material.dart';

class BurgurPage extends StatefulWidget {


  final imgPath, foodName, pricePerItem, heroTag;

  const BurgurPage({ this.imgPath, this.foodName, this.pricePerItem, this.heroTag}) ;


  @override
  _BurgurPageState createState() => _BurgurPageState();
}

class _BurgurPageState extends State<BurgurPage> {

  var netPrice= 0.0;
  var quintity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: Colors.black,),
                Stack(
                  children: [
                    Container(
                      height: 45.0,
                        width: 45.0,
                      color: Colors.transparent,
                    ),

                    Container(
                    height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color(0xFFFE7D6A).withOpacity(0.3),
                            blurRadius: 6.0,
                            spreadRadius: 4.0,
                            offset: Offset(0.0, 4.0))
                      ], color: Color(0xFFFE7D6A), shape: BoxShape.circle),
                      child: Center(
                          child: Icon(Icons.shopping_cart, color: Colors.white))),
                      ],

                    )
                  ],
                )
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'SUPER',
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              widget.foodName.toString().toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
        SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(tag: widget.heroTag,

                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage(widget.imgPath),
                      fit:BoxFit.cover,
                      ),
                    ),
                  )),
              SizedBox(width: 15.0,),
              Column(

                children: [
                  Stack(
                    children: [
                     Container(
                       height: 45.0,
                       width: 40.0,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0),
                         boxShadow: [
                           BoxShadow(
                             color: Color(0xFFFE7D6A).withOpacity(0.1),
                             blurRadius: 6.0,
                             spreadRadius: 6.0,
                             offset: Offset(5.0, 11.0)
                           )
                         ]
                       ),
                     ) ,

                      Container(

                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                          child: Center(
                            child: Icon(Icons.favorite_border,
                             color: Color(0xFFFE7D6A), size: 25.0),
                          ),
                           ),


                      //for shadow effect k lia use kia y container
                    ],
                  ) ,//for shadow effect
                  SizedBox(height: 35.0,),
                  Stack(
                    children: [
                      Container(
                        height: 45.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFFE7D6A).withOpacity(0.1),
                                  blurRadius: 6.0,
                                  spreadRadius: 6.0,
                                  offset: Offset(5.0, 11.0)
                              )
                            ]
                        ),
                      ) ,

                      Container(

                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(Icons.favorite_border,
                              color: Color(0xFFFE7D6A), size: 25.0),
                        ),
                      ),


                      //for shadow effect k lia use kia y container
                    ],
                  ) ,

                ],
              )


            ],
          ),

          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
              height: 70.0,
                width: 125.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    '\$  ${int.parse(widget.pricePerItem) * quintity}',
//                    '\$' + (int.parse(widget.pricePerItem + quintity). toString()),
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Color(0xFF5E6166),
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
            ),

              Container(
                height: 60.0,
                width: 225.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFE7D6A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)
                  )
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40.0,
                      width: 105.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              iconSize: 17.0,
                              icon:
                              Icon(Icons.remove, color: Color(0xFFFE7D6A)),
                              onPressed: () {

                                adjustquntity('MINUS');
                              }),
                          Text(
                            quintity.toString(),
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFFFE7D6A),
                                fontWeight: FontWeight.w400),
                          ),
                          IconButton(
                              iconSize: 17.0,
                              icon: Icon(Icons.add, color: Color(0xFFFE7D6A)),
                              onPressed: () {
                                adjustquntity('PLUS');
                              }),
                        ],
                      ),
                    ),
                    Text(
                      'Add to cart',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          )


        ],


            ),

          );

  }

 adjustquntity(pressed) {

    switch(pressed){
      case 'PLUS': setState(() {
         quintity += 1;
      });
      return;
      case 'MINUS': setState(() {
        if(quintity !=0)
        {
          quintity -=1;
        }
      });
      return;
    }
 }
}
