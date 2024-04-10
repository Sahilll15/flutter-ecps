import 'package:flutter/material.dart';


void main() {
  runApp(MYapp());
}

class MYapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('34_PARTHPATIL_EXP4',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Experiment3()
      
    );
  }
}



class Experiment3 extends StatelessWidget {

  Experiment3({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  void _submitForm(){
    if(_formKey.currentState!.validate()){

    }
  }

  String? _validateEmail(value){
    if(value!.isEmpty){
      return "Please enter an email";
    }
    RegExp emailRegExp = RegExp(r'/^[^\.\s][\w\-]+(\.[\w\-]+)*@([\w-]+\.)+[\w-]{2,}$/gm');

    if(!emailRegExp.hasMatch(value)){
      return  "Please enter a valid email";
    }
    return null;
  }

  String? _validatePassword(value){
    if(value!.isEmpty){
      return "Please enter the password";
    }

    if(value.length < 6){
      return 'Password length must be more than 60';
    }

    return null;


  }

  @override
  Widget build(BuildContext context) {

    return  Container(
    
      color: Color.fromARGB(255, 143, 4, 181),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           
              const SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",

                  hintStyle: const TextStyle(
                    color: Colors.white
                  ),

                  labelStyle: const TextStyle(
                    color: Colors.white
                  ),
                  
                  errorStyle: const TextStyle(
                    fontSize: 18
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                  ),

                  style: const TextStyle(
                    color: Colors.white
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter a Username";
                    }
                    return null;
                  },

                  
                
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",

                  labelStyle: const TextStyle(
                    color: Colors.white
                  ),
                  errorStyle: const TextStyle(
                    fontSize: 18
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                  ),
                  style: const TextStyle(
                    color: Colors.white
                  ),

                  validator: _validateEmail,
                
              ),
              const SizedBox(height: 20,),
      
             
              SizedBox(
      
                height: 50,
                width: double.infinity,
      
                child: ElevatedButton(
                  onPressed: _submitForm,

                  style:  ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 9, 8, 8)
                  ),
                  child: const Text(
                    "login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}