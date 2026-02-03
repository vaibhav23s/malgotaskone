
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_svg/svg.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0; // 👈 ADD THIS LINE

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Color(0xFFF4F3F6),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: h * 0.45,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(18),
                      bottomLeft: Radius.circular(18),

                    )
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        SizedBox(height: 38,),
                        SafeArea(
                          child: Row(
                            children: [
                              Container(
                                margin:EdgeInsets.only(bottom: 20),
                                child: CircleAvatar(
                                      radius:20,
                                    backgroundColor: Color(0x47cfcfcf),
                                    child: Icon(Icons.location_on_rounded,color: Colors.white,size: 25,
                                    )),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('location',style: TextStyle(color: Color(0xFFaaaaaa),fontSize: 15),),
                                  Row(
                                    children: [
                                      Text('Melur,madurai',style: TextStyle(color: Colors.white,fontSize: 15),),
                                      Icon(Icons.expand_more_outlined,color: Colors.white,),


                                    ],
                                  ),

                                ],
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0x4de1e1e2),
                                child: Icon(Icons.notifications_none_outlined,color: Colors.white,size: 25,),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0x4de1e1e2),
                                child: Icon(Icons.person,color: Colors.white,),
                              ),

                            ],

                          ),

                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          height: 175,
                          color: Colors.white,
                          child: Image.asset('assets/images/add.png'),
                        ),
                      //bottom side ke cheje

                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //bottom horijantal bar here

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('Explore by regions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text('view all',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFdb9b15)),),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: SizedBox(
                        height: 130,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          separatorBuilder: (context, index) => SizedBox(width: 10),
                          itemBuilder: (context, index) {
                            return Container(
                              width: 100,

                              decoration: BoxDecoration(
                                  color: Color(0xFFF4a404),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Column(
                                children: [
                                  Stack(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                          width:90,
                                          height: 122.5,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(15),
                                            child: Image.asset('assets/images/get.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                    ),
                                    Positioned(
                                      bottom:0,
                                      child: Container(
                                        width:95,
                                        height:80,
                                        child: ClipRRect(
                                            borderRadius:BorderRadius.only(
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),

                                            ),
                                            child: Image.asset('assets/images/blacksmoke.png',fit: BoxFit.cover,
                                            )),

                                      ),
                                    ),
                                    Positioned(
                                        bottom:0,
                                        right:0,
                                        left:0,
                                        child: Center(child: Text('tamilnadu',style: TextStyle(color: Colors.white,fontSize: 20),))),
                                  ],),

                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height:15,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:5),
                          child: Text('Discover plots',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right:5),
                          child: Text('Discover plots',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color: Color(0xFFdb9b15)),),
                        ),
                      ],
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => SizedBox(height: 15),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          height: 700,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x79040405),
                                blurRadius: 9,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Container(
                                width: 370,
                                height: 260,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'assets/images/Land.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Green Meadows Plot',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),

                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 130,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Color(0xFFFbF5e8),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: SvgPicture.asset(
                                                  'assets/icons/glow.svg',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:5),
                                              child: Container(
                                                  child: Text('3',style: TextStyle(fontSize: 24),),
                                                   margin: EdgeInsets.only(left: 44,top: 5),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:5),
                                              child: Container(
                                                child: Text('cent',style: TextStyle(fontSize: 24),),
                                                margin: EdgeInsets.only(left:65,top: 5),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: SvgPicture.asset(
                                      'assets/icons/location.svg',
                                      width: 27,
                                      height: 27,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Melur, Madurai',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Container(
                                width: w * 0.9,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFece9FF),
                                   borderRadius: BorderRadius.circular(50)
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left:10),
                                      child: Text('Monthly EMI from',style: TextStyle(fontSize: 20,color: Color(0xFF4120FF)),),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:  EdgeInsets.only(right:10),
                                      child: Text('₹15,000',style: TextStyle(fontSize: 20,color: Color(0xFF4120FF)),),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: ElevatedButton(onPressed: (){}, child: Text('lake view',style: TextStyle(fontSize: 17,),),style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0XFFecfdf5),
                                      foregroundColor: Color(0xFF048358),
                                      shadowColor: Colors.transparent,
                                      fixedSize:Size(120,55)

                                    ),),
                                  ),
                                  SizedBox(height: 20,),
                                  ElevatedButton(onPressed: (){}, child: Column(

                                    children: [
                                      Container(
                                          margin:EdgeInsets.only(top: 7),
                                          child: Text('developed',style: TextStyle(fontSize: 15,),)),
                                      Text('area',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0XFFecfdf5),
                                    foregroundColor: Color(0xFF048358),
                                    shadowColor: Colors.transparent,
                                    fixedSize:Size(120,55)

                                  ),),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: ElevatedButton(onPressed: (){}, child: Text('+1 more',style: TextStyle(fontSize: 17,),),style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFF5F6Fa),
                                      foregroundColor: Colors.black,
                                      shadowColor: Colors.transparent,
                                      fixedSize:Size(120,55)

                                    ),),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Padding(

                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Total Investments',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 30),
                                          child: Text('₹3,50,000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 24,),
                                  Container(
                                    width: 178,
                                    height: 80,

                                    decoration:BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFd3930d),
                                          Color(0xFFFFC107), // yellow
                                          Color(0xFFa6740b),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(17),
                                  ),
                                    child: Center(child: Text('Invest now',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)),
                                  )
                                ],
                              )
                            ]  ),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ),


            //discover plot side here



          ],
        ),
      ),
      //bottom navigation bar


      bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(16),
    child: Material(
    elevation: 8,
    shadowColor: Colors.black45,
    borderRadius: BorderRadius.circular(25),
    color: Colors.white,
        child: ClipRRect(

          borderRadius: BorderRadius.circular(25), // yaha rounding
          child: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.white,


            selectedLabelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
                color: Colors.black
          
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black
            ),
          
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/go.svg',
                  width: 45,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/go.svg',
                  width: 45,
                ),
                label: 'Home',
          
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/explor.svg',
                  width: 35,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/explor.svg',
                  width: 35,
                ),
                label: 'explor',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/invest.svg',
                  width: 35,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/invest.svg',
                  width: 35,
                ),
                label: 'invest',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/protfolio.svg',
                  width: 35,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/protfolio.svg',
                  width: 35,
                ),
                label: 'protfolio',
              ),
          
            ],
          ),
        ),
      ),


   ) );

  }
}
