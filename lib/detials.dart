
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskone/home.dart';

class detialspage extends StatefulWidget {
  const detialspage({super.key});

  @override
  State<detialspage> createState() => _detialspageState();
}

class _detialspageState extends State<detialspage> {
  @override

  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Color(0xFFF4F3F6),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 360,
              decoration: BoxDecoration(

              ),
             child: Stack(
               children: [
                 Image.asset('assets/images/grassland.png',fit: BoxFit.cover,),
                 Positioned(
                     top: 50,
                     left: 20,
                     child: CircleAvatar(
                         radius: 22,
                         backgroundColor: Color(0xFFe8e9ed),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                               },
                               child: Icon(Icons.arrow_back_ios,color: Color(0xFF8a8a95),)),
                         ))),
                 Center(
                   child: Container(
                     margin: EdgeInsets.only(top:240),
                     width:275,
                     height: 58,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16),
                       color: Colors.white,
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:5.0),
                           child: Container(
                             width: 50,
                             height: 50,
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(12),
                                 child: Image.asset('assets/images/grassland.png',fit: BoxFit.cover,)),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(12),
                               color: Colors.white,
                             ),
                           ),
                         ),
                         Container(
                           width: 50,
                           height: 50,
                           child: ClipRRect(
                               borderRadius: BorderRadius.circular(12),
                               child: Image.asset('assets/images/grassland.png',fit: BoxFit.cover,)),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             color: Colors.white,
                           ),
                         ),
                         Container(
                           width: 50,
                           height: 50,
                           child: ClipRRect(
                               borderRadius: BorderRadius.circular(12),
                               child: Image.asset('assets/images/grassland.png',fit: BoxFit.cover,)),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             color: Colors.white,
                           ),
                         ),
                         Container(
                           width: 50,
                           height: 50,
                           child: ClipRRect(
                               borderRadius: BorderRadius.circular(12),
                               child: Image.asset('assets/images/grassland.png',fit: BoxFit.cover,)),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             color: Colors.white,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right:5.0),
                           child: Container(
                             width: 50,
                             height: 50,
                             child: ClipRRect(
                                 borderRadius: BorderRadius.circular(12),
                                 child: Image.asset('assets/images/grassland.png',fit: BoxFit.cover,)),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(12),
                               color: Colors.white,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 )
               ],
             ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Green Meadows Plot',style:TextStyle(fontSize: 20),),
                            Row(
                              children: [
                                Container(
                                    width: 25,
                                    height: 25,
                                    child: SvgPicture.asset('assets/icons/location.svg',)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text('melur,madurai',style: TextStyle(fontSize: 16),),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFF2eadF),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: SvgPicture.asset('assets/icons/glow.svg'),
                          ),

                        ),
                      ),

                    ],
                  ),
                 SizedBox(height: 20,),
                 Container(

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 5),
                         child: Container(
                           height: 78,
                           width: 90,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12)
                             ,color: Colors.white,

                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 1.0),
                                 child: Text('Plots Available',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                               ),
                               SizedBox(height: 7,),
                               Text('67',style: TextStyle(fontSize: 19,color: Color(0xFF048358),fontWeight: FontWeight.bold),),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         height: 78,
                         width: 90,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(12)
                           ,color: Colors.white,

                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('booked plots',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                             SizedBox(height: 7,),
                             Text('67',style: TextStyle(fontSize: 19,color: Color(0xFF048358),fontWeight: FontWeight.bold),),
                           ],
                         ),
                       ),
                       Container(
                         height: 78,
                         width: 90,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(12)
                           ,color: Colors.white,

                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 1.0),
                               child: Text('total cent',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                             ),
                             SizedBox(height: 7,),
                             Padding(
                               padding: const EdgeInsets.only(left: 5.0),
                               child: Text('67',style: TextStyle(fontSize: 19,color: Color(0xFF048358),fontWeight: FontWeight.bold),),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(right: 5.0),
                         child: Container(
                           height: 78,
                           width: 90,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12)
                             ,color: Colors.white,

                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left:5.0),
                                 child: Text('Ratings',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                               ),
                               SizedBox(height: 7,),
                               Padding(
                                 padding: const EdgeInsets.only(left: 5.0),
                                 child: Text('67',style: TextStyle(fontSize: 19,color: Color(0xFF048358),fontWeight: FontWeight.bold),),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
