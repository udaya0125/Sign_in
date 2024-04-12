import 'package:flutter/material.dart';
class signin extends StatefulWidget{
  @override
  State<signin> createState() => _signin();
}
class _signin extends State<signin>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){},
        ),
        
      ),
      body:SingleChildScrollView(child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child:Form(
          child: Column(
            children: [
            
              const SizedBox(height: 20),
              const Align(alignment: Alignment.centerLeft,
               child: Text('Sign In',style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold),
               ),
               ),
             
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email),
                  
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock),
                  // suffixIcon: Icon(Icons.visibility),                
                  // suffix: InkWell(
                   
                  //   child: Icon(Icons.visibility),
                    
                  //   onTap: (){
                  //     setState(() {
                  //      passToogle = !passToogle;
                  //     });
                  //    },                
                  // ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: (){},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 6, 11, 156),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text('Sign In',style: TextStyle(
                    color: Colors.white,fontSize: 18),
                    ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: (){},
                    child: const Text('Sign Up',style: TextStyle(color: Color.fromARGB(255, 16, 8, 239)),),
                  )
                ],
              )

              
            ],


        )

      )
      )
      )
      );
      
       
  }
}