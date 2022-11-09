import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylette/Screens/product_overview.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_circle_left_outlined)),
          title: const Text('Black',style: TextStyle(fontStyle: FontStyle.italic),),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 40,
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height*0.84,
            width: MediaQuery.of(context).size.width * 0.90,
            decoration: BoxDecoration(
              color: Colors.blueGrey[400],
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              
            ),
            child : Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all( Radius.circular(20)),
                  child: GestureDetector(
                    onTap: () {
                     Navigator.of(context).pushNamed(ProductOverview.routName); 
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height*0.42,
                      width: MediaQuery.of(context).size.width * 0.90,
                      color: Colors.blue[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Find your', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                          Text('Stylette', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                          Text('Stylist', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                          SizedBox(height: 20,),
                          Icon(Icons.keyboard_double_arrow_right),
                        ],
                      )
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height*0.42,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[400],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Browse the', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                          Text('Stylette', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                          Text('Store', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                          SizedBox(height: 20,),
                          Icon(Icons.keyboard_double_arrow_right),
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}