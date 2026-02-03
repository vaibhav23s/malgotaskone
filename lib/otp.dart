
import 'package:flutter/material.dart';
import 'package:taskone/home.dart';

class otppage extends StatefulWidget {
  const otppage({super.key});

  @override
  State<otppage> createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/register.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),

          // Bottom white container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 80,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25),
                          ),

                        ),
                        SingleChildScrollView(child: SizedBox(height: 30)),
                        Text(
                          'Verify OTP',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "We've sent a 6-digit code to",
                          style:
                          TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "+91 000000000",
                          style:
                          TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "change number",
                          style:
                          TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                        SizedBox(height: 30),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Enter OTP',
                            style:
                            TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 8),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...List.generate(6, (index) {
                               return Container(
                                 width: 55.8,
                                 height: 55.8,
                                 child: Container(
                                   child: TextField(
                                     textAlign: TextAlign.center,
                                     decoration: InputDecoration(

                                       hintText: '0',
                                       hintStyle: TextStyle(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold

                                       ),
                                       border: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(12)
                                       )
                                     ),
                                   ),
                                 ),
                               );
                              })
                            ],
                          ),

                           SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Didn't receive code?",style: TextStyle(color: Colors.grey,fontSize: 17),),
                              SizedBox(width: 6,),
                              Text("Didn  't receive code?",style: TextStyle(color: Colors.black,fontSize: 17),),
                            ],
                          ),
                        SizedBox(height: 90,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("By continuing, you agree to our ",style: TextStyle(color: Colors.grey,fontSize: 17),),
                            SizedBox(width: 6,),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                },
                                child: Text("Terms & Privacy Policy",style: TextStyle(color: Colors.black,fontSize: 17),)),
                          ],
                        ),

                      ],
                    ),
                  ),
                
                ),
              ),
            ),
          ),

        ],
      ),
      
    );
  }
}
