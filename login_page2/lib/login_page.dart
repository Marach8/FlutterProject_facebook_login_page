import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {  

  @override
  Widget build(BuildContext context){
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(      
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: const Color.fromARGB(255, 5, 28, 50), height: h, width: w,
          child: Center(
            child: Column(
              children: [
                SizedBox(height:h*0.058),
                const Row(children: [Icon(Icons.arrow_back_outlined, color: Colors.white,)]),
                SizedBox(height: h*0.045),
                Text('English (US)', style: GoogleFonts.getFont('Ubuntu', color: Colors.white60, fontWeight: FontWeight.w100)),
                SizedBox(height: h*0.051),
                CircleAvatar(
                  radius:h*0.038, backgroundColor: Colors.blue.shade700,                    
                  child: Text(
                    'f',
                    style: TextStyle(
                      fontSize: h*0.09, fontWeight: FontWeight.bold, color: Colors.white
                    )
                  )
                ), 
                SizedBox(height: h*0.075),
                Container(
                  padding: const EdgeInsets.only(left:9, right:9),
                  child: Column(
                    children: [
                      const Divider(height:2, color: Colors.white60),
                      SizedBox(height: h*0.005),
                      SizedBox(
                        height: h*0.073, width: w*0.9, 
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'By proceeding, you agree to',
                                style: GoogleFonts.getFont(
                                  'Nunito', color: Colors.white, fontSize: h*0.0185, fontWeight: FontWeight.w400
                                ),
                              ),
                              TextSpan(
                                text: " MTN's Terms",
                                style: GoogleFonts.getFont(
                                  'Nunito', color: Colors.blue.shade300, fontSize: h*0.0185, fontWeight: FontWeight.w400
                                ),
                              ),
                              TextSpan(
                                text: ', which includes letting Facebook request and receive your phone number.',
                                style: GoogleFonts.getFont(
                                  'Nunito', color: Colors.white,fontSize: h*0.0185, fontWeight: FontWeight.w400
                                ),
                              ),
                              TextSpan(
                                text: ' Change Settings',
                                style: GoogleFonts.getFont(
                                  'Nunito', color: Colors.blue.shade300, fontSize: h*0.0185, fontWeight: FontWeight.w400
                                ),
                              )
                            ]
                          )
                        ),
                      ),
                      Divider(thickness: h*0.0015, color: Colors.white),
                    ]
                  )
                ),
                SizedBox(height: h*0.004),
                Container(    
                  padding: const EdgeInsets.only(left:10), height: h*0.072, width: w*0.9,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 37, 52),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [BoxShadow(color: Colors.white70, blurRadius: 1)]
                  ),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(              
                      hintStyle: GoogleFonts.getFont(
                        'Quicksand', color: Colors.white38, fontSize: h*0.02, fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Mobile number or email', border: InputBorder.none,                                                     
                    )
                  ),
                ), 
                SizedBox(height: h*0.02),
                Container(    
                  padding: const EdgeInsets.only(left:10), height: h*0.072, width: w*0.9,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 37, 52), borderRadius: BorderRadius.circular(10),
                    boxShadow: const [BoxShadow(color: Colors.white70, blurRadius: 1)]
                  ),
                  child: TextField(
                    style: const TextStyle(color:Colors.white), obscureText: true,
                    decoration: InputDecoration(                            
                      hintStyle: GoogleFonts.getFont(
                        'Quicksand', color: Colors.white38, fontSize: h*0.02, fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Password', border: InputBorder.none,                                                     
                    )
                  ),
                ),
                SizedBox(height: h*0.02),
                SizedBox(                            
                  height: h*0.06, width: w*0.9,
                  child: ElevatedButton(    
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue.shade800, ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),                      
                    ),
                    onPressed: (){},
                    child: Text(
                      'Log in',
                      style: GoogleFonts.getFont('Quicksand', color: Colors.white, fontSize: h*0.02, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                SizedBox(height: h*0.005),
                SizedBox(
                  height: h*0.05,
                  child: TextButton(                              
                    child: Text(
                      'Forgot password?',
                      style: GoogleFonts.getFont(
                        'Quicksand', color: Colors.white, fontSize: h*0.02, fontWeight: FontWeight.bold
                      )
                    ),
                    onPressed: (){}                            
                  ),
                ),
                SizedBox(height: h*0.1),
                Container(                             
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 5, 28, 50), boxShadow: [BoxShadow(blurRadius: 1)]),
                  height: h*0.06,  width: w*0.9,
                  child: ElevatedButton(    
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 5, 28, 50),),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(width: 0.9, color: Color.fromARGB(255, 46, 108, 224),)
                        )
                      )
                    ),
                    onPressed: (){},
                    child: Text(
                      'Create new account',
                      style: GoogleFonts.getFont(
                        'Quicksand',
                        color: Colors.blue.shade800,//const Color.fromARGB(255, 25, 83, 190),
                        fontSize: h*0.02, fontWeight: FontWeight.bold,
                      )
                    )
                  ),
                ),
                SizedBox(height: h*0.025),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [                    
                      FaIcon(FontAwesomeIcons.meta, color: Colors.white, size: h*0.02,),
                      SizedBox(width: w*0.01),
                      Text('Meta', style: GoogleFonts.getFont('Quicksand', color: Colors.white, fontSize: h*0.022))
                    ]
                  ),
                )
              ]
            ),
          ),
        ),
      )
    );
  }
}