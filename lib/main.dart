import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:LoginPage(),
      title: "Registration Screen",
      
      
      
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late String username;
  late String password;
 final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Color.fromARGB(170, 60, 0, 95),title: Text('Log In Screen',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),),
      backgroundColor: Colors.grey[200],
      body:Form(
        
        key: _formkey,
        child: Padding(
        padding: const EdgeInsets.only(top:15,left: 15.0,right: 15.0,bottom: 0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
           TextFormField(
            
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.people_alt_sharp),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                    
                    ),
      
                  validator:(value){
                    if(value.toString().isEmpty){
                      return "User Name is empty.";
                    }else{
                      return null;
                    }
                  } ,
                  onSaved:(value){username=value.toString();} ,
      
            ),
          
          SizedBox(height: 10.0,),

          TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    
                    ),
      
                  validator:(value){
                    if(value.toString().isEmpty){
                      return "Enter Password.";
                    }else{
                      return null;
                    }
                  } ,
                  onSaved:(value){password=value.toString();} ,
      
            ),
            SizedBox(height: 10.0,),
            _enterButton(),
            SizedBox(height: 10.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 72, 1, 86)),
                  child:Text("Sign Up"),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>signUpPage()));
                },),
                SizedBox(height: 10.0,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 72, 1, 86)),
                  child:Text("Forget Password"),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>forgetpassPage()));
                  },)
                ,
                SizedBox(height: 10.0,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 72, 1, 86)),
                  child:Text("Change Password"),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>changePage()));

                  },)
                ,
                
              ],
            ),
            SizedBox(height: 10.0,),
            
      
        ],),
      )),

    );
  }

Widget _enterButton()=> ElevatedButton(onPressed:(){
  if(_formkey.currentState!.validate()){
_formkey.currentState!.save();
  if(username=="a" && password=="a"){
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(title: Text("Successful"),content: Text("Welcome"),);
    } );
  }else{
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(title: Text("Error"),content: Text("Username or password is wrong.\n Hint: username:a password:a"),);
    } );
  }
  }
} ,
style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 30, 77, 55)),
 child:Text("Log In") );

 
}
class signUpPage extends StatelessWidget {
  const signUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Color.fromARGB(170, 60, 0, 95),title: Text('Registration Screen',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),),
      backgroundColor: Colors.grey[200],
      body: Container(child: Padding(
        padding: const EdgeInsets.only(top:15,left: 15.0,right: 15.0,bottom: 0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.people_alt_sharp),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "Password Again",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
      
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 30, 77, 55)),
            onPressed: (){}, child: Text("Create Account")),
          SizedBox(height: 10.0,)
          ,
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 72, 1, 86)),
            onPressed: (){Navigator.pop(context);}, child: Text("Login Page"))
          
        ]),
      ),),
    );
  }
}
class forgetpassPage extends StatelessWidget {
  const forgetpassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Color.fromARGB(170, 60, 0, 95),title: Text('Forget Password Screen',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),),
      backgroundColor: Colors.grey[200],
      body: Container(child: Padding(
        padding: const EdgeInsets.only(top:15,left: 15.0,right: 15.0,bottom: 0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.mail_outline_sharp),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "E-mail",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "New Password",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "New Password Again",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
      
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 30, 77, 55)),
            onPressed: (){}, child: Text("Change Password")),
          SizedBox(height: 10.0,)
          ,
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 72, 1, 86)),
            onPressed: (){Navigator.pop(context);}, child: Text("Login Page"))
          
        ]),
      ),),
    );
  }
}

class changePage extends StatelessWidget {
  const changePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Color.fromARGB(170, 60, 0, 95),title: Text('Change Password Screen',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),),
      backgroundColor: Colors.grey[200],
      body: Container(child: Padding(
        padding: const EdgeInsets.only(top:15,left: 15.0,right: 15.0,bottom: 0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "Old Password",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "New Password",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 157, 21))),
                    labelText: "New Password Again",
                    border: OutlineInputBorder(),
                    
                    ),

            ),
            SizedBox(height: 10.0,)
            ,
      
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 30, 77, 55)),
            onPressed: (){}, child: Text("Change Password")),
          SizedBox(height: 10.0,)
          ,
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 72, 1, 86)),
            onPressed: (){Navigator.pop(context);}, child: Text("Login Page"))
          
        ]),
      ),),
    );
  }
}
