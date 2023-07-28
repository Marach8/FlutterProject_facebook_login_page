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

    return Scaffold(      
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 5, 28, 50),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                child: Center(
                  child: SingleChildScrollView(
                    child: SizedBox(                      
                      height: MediaQuery.of(context).size.height*0.95,
                      width: MediaQuery.of(context).size.width*0.95,
                      child: Column(
                        children: [
                          SizedBox(
                            height:MediaQuery.of(context).size.height*0.04
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.white,
                              )
                            ]
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.045
                          ),
                          Text('English (US)',
                            style: GoogleFonts.getFont(
                              'Ubuntu',
                            color: Colors.white60,
                            fontWeight: FontWeight.w100
                            )
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.051
                          ),
                          CircleAvatar(
                            radius:MediaQuery.of(context).size.height*0.038,
                            backgroundColor: const Color.fromARGB(255, 46, 108, 224),                    
                            child: Text(
                              'f',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height*0.08,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(255, 255, 255, 0.8)
                              )
                            )
                          ), 
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.075
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left:9, right:9,
                            ),
                            child: Column(
                              children: [
                                const Divider(
                                  height:2,
                                  color: Colors.white60                    
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height*0.005
                                ),
                                SizedBox(                            
                                  height: MediaQuery.of(context).size.height*0.073,
                                  width: MediaQuery.of(context).size.height*0.9,                            
                                  child: Text("""
By proceeding, you agree to MTN's Terms, which
includes letting Facebook request and receive your
phone number. Change Settings""",
                                  style: GoogleFonts.getFont(
                                    'Nunito',
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height*0.0185,
                                    fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),                          
                                Divider(
                                  thickness: MediaQuery.of(context).size.height*0.0015,                      
                                  color: Colors.white                   
                                ),
                              ]
                            )
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.004
                          ),
                          Container(    
                            padding: const EdgeInsets.only(left:10),
                            height: MediaQuery.of(context).size.height*0.072,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 22, 37, 52),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 1
                                )
                              ]
                            ),
                            child: TextField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(              
                                hintStyle: GoogleFonts.getFont(
                                  'Quicksand',
                                  color: Colors.white38,
                                  fontSize: h*0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                                hintText: 'Mobile number or email',
                                border: InputBorder.none,                                                     
                              )
                            ),
                          ), 
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.02
                          ),
                          Container(    
                            padding: const EdgeInsets.only(left:10),
                            height: MediaQuery.of(context).size.height*0.072,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 22, 37, 52),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 1
                                )
                              ]
                            ),
                            child: TextField(
                              obscureText: true,
                              style: const TextStyle(color:Colors.white),
                              decoration: InputDecoration(                            
                                hintStyle: GoogleFonts.getFont(
                                  'Quicksand',
                                  color: Colors.white38,
                                  fontSize: h*0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                                hintText: 'Password',
                                border: InputBorder.none,                                                     
                              )
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.02
                          ),
                          SizedBox(                            
                            height: MediaQuery.of(context).size.height*0.06,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: ElevatedButton(    
                              style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 46, 108, 224),),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)
                                  )
                                )
                              ),                              
                              onPressed: (){print(MediaQuery.of(context).size.height);},
                              child: Text(
                                'Log in',
                                style: GoogleFonts.getFont(
                                  'Quicksand',
                                  color: Colors.white,
                                  fontSize: h*0.02,
                                  fontWeight: FontWeight.bold,
                                )
                              )
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.005
                          ),
                          SizedBox(
                            height: h*0.05,
                            child: TextButton(                              
                              child: Text(
                                'Forgot password?',
                                style: GoogleFonts.getFont(
                                'Quicksand',
                                color: Colors.white,
                                fontSize: h*0.02,
                                fontWeight: FontWeight.bold
                              )
                                ),
                              onPressed: (){}                            
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.09
                          ),
                          Container(                             
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 5, 28, 50),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,                                  
                                )
                              ]
                            ),
                            height: MediaQuery.of(context).size.height*0.06,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: ElevatedButton(    
                              style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                  Color.fromARGB(255, 5, 28, 50),
                                  ),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                      width: 0.9, 
                                      color: Color.fromARGB(255, 46, 108, 224),
                                    )
                                  )
                                )
                              ),                              
                              onPressed: (){},
                              child: Text(
                                'Create new account',
                                style: GoogleFonts.getFont(
                                  'Quicksand',
                                  color: const Color.fromARGB(255, 25, 83, 190),
                                  fontSize: h*0.02,
                                  fontWeight: FontWeight.bold,
                                )
                              )
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.015
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [                    
                              FaIcon(FontAwesomeIcons.meta,
                              color: Colors.white,
                              size: h*0.02,
                              ),
                              SizedBox(
                            width: MediaQuery.of(context).size.width*0.01
                          ),
                              Text('Meta',
                              style: GoogleFonts.getFont(
                                'Quicksand',
                                color: Colors.white,
                                fontSize: h*0.022
                                )
                              )
                            ]
                          )
                        ]
                      )
                    ) ,
                  ),
                ),
              ),
            ]
          ),
        )
      )
    );
  }
}