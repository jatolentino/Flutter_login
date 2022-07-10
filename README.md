# Flutter login app

This app uses firebase as a database to store users' credentials (email & passwords).

## Result of the project

The following images show the sign up and login pages off the app. In total there are four pages, including the welcome page and the splash screen. This project was followed from this youtube channel `https://www.youtube.com/watch?v=o_ZeLqpqt90`. Thanks to `dbestech` for the initial png files!
    
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_login/blob/ver1.4/source/login.png" width="300">
    </p>

    <br>

    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_login/blob/ver1.4/source/signup.png" width="300">
    </p>

## How to run the project?

- Clone the repository and navigate to the `ios` folder and run:
    ```bash
    flutter pub add firebase_auth
    flutter pub add firebase_core
    sudo gem install cocoapods
    flutter pub get
    pod install
    ```

- Configure the firebase database, following the Step 8 (`Create a firebase project`).
- Enjoy!

## Follow along step by step

### 1. Getting Started

- Create the project in the terminal (it'll also create the folder)

    ```bash
        flutter create flutter_login
    ```

- Open VSCODE and open the folder `flutter_login` just created
- Navigate to the Source Control icon on VSCODE and choose the option `Publish to Github`, then enter your credentials and set the name of the repo (Flutter_login).


### 2. Modify the main.dat

- Create the LoginPage class

    ```dart
    import 'package:flutter/material.dart';
    import 'login_page.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                    primarySwatch: Colors.blue,
                ),
                home: LoginPage()
            );
        }
    }
    ```

### 3. Create the login_page.dart

- In the lib folder create the login_page.dart

    ```dart
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class LoginPage extends StatefulWidget {
        const LoginPage({Key? key}): super(key: key);

        @override
        _LoginPageState createState() => __LoginPageState();
    }

    class _HomePageState extends State<LoginPage> {
        @override
        Widget build(BuildContext context) {
            return Scaffold(

            );
        }
    }
    ```
- Add the images folder in the root folder and edit the pubspec.yaml file
    ```yml
    flutter:
        assets:
            - img/
    ```

### 4. Edit the login_page.dart

- Add image and sample test

    ```dart
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class LoginPage extends StatefulWidget {
    const LoginPage({Key? key}): super(key: key);

    @override
    _LoginPageState createState() => _LoginPageState();
    }

    class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
        double w = MediaQuery.of(context).size.width; //max width in window
        double h = MediaQuery.of(context).size.height; //max height in window
        return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
            Container(
                width: w,
                height: h*0.3,
                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                    "img/loginimg.png"
                    ),
                    fit: BoxFit.cover
                )
                ),
            ),
            Container(
                child: Column(
                children: [
                    Text(
                    "hello",
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold

                    ),
                    )
                ]
                )
            )
            ]
        )
        );
    }
    }
    ```

    Test 4.1 Compliled @ the branch of [`ver-1.0`](https://github.com/jatolentino/Flutter_login/tree/ver1.0)
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_login/blob/ver1.0/source/step4-test-1.png" width="300">
    </p>
    
### 5. Complete the input field

- Add in the login_page.dart

    ```dart
    body: Column(
            children: [
            Container(
                width: w,
                height: h*0.3,
                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                    "img/loginimg.png"
                    ),
                    fit: BoxFit.cover
                )
                ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                    "Hello",
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(
                    "Sign into your account",
                    style: TextStyle(
                        fontSize: 20,
                        color:Colors.grey[500]

                    ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color:Colors.grey.withOpacity(0.2)
                        )
                        ]
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                            color:Colors.white,
                            width: 1.0
                            )
                        ),
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                            ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                        )
                    )
                    ),
                    SizedBox(height: 20,),
                    Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color:Colors.grey.withOpacity(0.2)
                        )
                        ]
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                            color:Colors.white,
                            width: 1.0
                            )
                        ),
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                            ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                        )
                    )
                    ),
                    SizedBox(height: 20,),
                    Row(
                    children: [
                        Expanded(child: Container(),),
                        Text(
                        "Sign into your account",
                        style: TextStyle(
                            fontSize: 20,
                            color:Colors.grey[500]

                        ),
                        ),
                    ],
                    ),
                ],
                ),
            ),
            SizedBox(height: 40,),
            Container(
                width: w*0.5,
                height: h*0.08,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                    "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
                ),
                child: Center(
                child: Text(
                    "sign in",
                    style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color:Colors.white,
                    ),
                ),
                ),
            ),
            SizedBox(height:w*0.08),
            RichText(text: TextSpan(
                text:"Don\'t have an account?",
                style: TextStyle(
                color:Colors.grey[500],
                fontSize: 20
                ),
                children: [
                TextSpan(
                text:" Create",
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
                )
                ]
            )
            )
            ]
        )
    ```
    Test 5.1 Compliled @ the branch of [`ver-1.1`](https://github.com/jatolentino/Flutter_login/tree/ver1.1)
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_login/blob/ver1.1/source/step5-test-1.png" width="300">
    </p>

### 6. Create the sign up page

- Inside the lib folder, create and edit signup_page.dart

    ```dart
    import 'package:flutter/material.dart';

    class SignUpPage extends StatelessWidget {
    const SignUpPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        List images = [
        "g.png",
        "t.png",
        "f.png"
        ];
        double w = MediaQuery.of(context).size.width; //max width in window
        double h = MediaQuery.of(context).size.height; //max height in window
        return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
            Container(
                width: w,
                height: h*0.3,
                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                    "img/signup.png"
                    ),
                    fit: BoxFit.cover
                )
                ),
                child: Column(
                children: [
                    SizedBox(height: h*0.16,),
                    CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 51.5,
                    backgroundImage: AssetImage(
                        "img/profile.png"
                    ),
                    )
                ]
                )
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    SizedBox(height: 50,),
                    Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color:Colors.grey.withOpacity(0.2)
                        )
                        ]
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email, color:Colors.deepOrangeAccent),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                            color:Colors.white,
                            width: 1.0
                            )
                        ),
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                            ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                        )
                    )
                    ),
                    SizedBox(height: 20,),
                    Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color:Colors.grey.withOpacity(0.2)
                        )
                        ]
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_outlined, color:Colors.deepOrangeAccent),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                            color:Colors.white,
                            width: 1.0
                            )
                        ),
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                            ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                        )
                    )
                    ),
                    SizedBox(height: 20,),
                    /* Row(
                    children: [
                        Expanded(child: Container(),),
                        Text(
                        "Sign into your account",
                        style: TextStyle(
                            fontSize: 20,
                            color:Colors.grey[500]

                        ),
                        ),
                    ],
                    ), */
                ],
                ),
            ),
            SizedBox(height: 40,),
            Container(
                width: w*0.5,
                height: h*0.08,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                    "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
                ),
                child: Center(
                child: Text(
                    "Sign up",
                    style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color:Colors.white,
                    ),
                ),
                ),
            ),
            SizedBox(height:w*0.08),
            RichText(text: TextSpan(
                text:"Sign up using one of the following methods",
                style: TextStyle(
                color:Colors.grey[500],
                fontSize: 16
                ),
            ),

            ),
            Wrap(
                children: List<Widget>.generate(
                3,
                    (index){
                    return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[500],
                        child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                            "img/"+images[index]
                        )
                        ),
                        ),
                    );
                    }
                ),
            )
            ],
        ),
        );
    }
    }
    ```
    Test 6.1 Compliled @ the branch of [`ver-1.2`](https://github.com/jatolentino/Flutter_login/tree/ver1.2)
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_login/blob/ver1.2/source/step6-test-1.png" width="300">
    </p>

### 7. Adding the welcome page

- Add welcome_page.dart in the folder lib

    ```dart
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class WelcomePage extends StatelessWidget {
    const WelcomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        double w = MediaQuery.of(context).size.width;
        double h = MediaQuery.of(context).size.height;
        return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
            Container(
                width: w,
                height: h*0.3,
                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                    "img/signup.png"
                    ),
                    fit: BoxFit.cover
                )
                ),
                child: Column(
                children: [
                    SizedBox(height: h*0.16,),
                    CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 51.5,
                    backgroundImage: AssetImage(
                        "img/profile.png"
                    ),
                    )
                ]
                )
            ),
            SizedBox(height: 70,),
            Container(
                width: w,
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color:Colors.black54
                    ),
                    ),
                    Text(
                    "a@a.com",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color:Colors.grey[500]
                    ),
                    ),
                ],
                ),
            ),
            SizedBox(height: 200,),
            Container(
                width: w*0.5,
                height: h*0.08,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                    "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
                ),
                child: Center(
                child: Text(
                    "Sign out",
                    style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color:Colors.white,
                    ),
                ),
                ),
            ),
            ],
        ),
        );
    }
    }
    ```
- Add the get in pubspec.yaml and save to install the package while running
    ```yaml
    dependencies:
    flutter:
        sdk: flutter

    get:
    ```
    And run `flutter pub get` in the terminal

- Edit the main.dart

    ```dart
    import 'package:flutter/material.dart';
    import 'login_page.dart';
    import 'signup_page.dart';
    import 'welcome_page.dart';
    import 'package:get/get.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        //home: LoginPage()
        //home: SignUpPage()
        home: LoginPage()
        );
    }
    }
    ```
- Add buttons functions in login_page.dart 

    ```dart
    RichText(text: TextSpan(
            text:"Don\'t have an account?",
            style: TextStyle(
              color:Colors.grey[500],
              fontSize: 20
            ),
            children: [
              TextSpan(
              text:" Create",
              style: TextStyle(
                color:Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
              )
            ]
          )
    ```

- Add buttons functions in signup_page.dart

    ```dart
    RichText(
        text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
            text:"Have an account?",
            style: TextStyle(
                fontSize: 20,
                color:Colors.grey[500]
            )
        )
    ),
    ```

    Test 7.1 Compliled @ the branch of [`ver-1.3`](https://github.com/jatolentino/Flutter_login/tree/ver1.3)
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_login/blob/ver1.3/source/step7-test-1.png" width="300">
    </p>

### 8. Create a firebase project

- Head to `https://console.firebase.google.com` and tap on `Add project`
- Name the project: Getx-firebase
- Disable Google Analytics for this project, then hit Continue
- Finalize with `Create project`
- Create an IOS app to get started
    - Apple bundle ID: find it openning ios/Runner.xcworskpace with XCode, select the root folder for details, rename Bundle identifier as `com.getx.app.flutterLogin`, make sure iOS version is at least 10.0 in Deployment Info
    - app nickname (optional)
    - App Store ID (optional)
- Terminate it with the option `Register app`
- Download GoogleService-Info.plist and save it to ios/Runner folder of the project
- Finish giving nex to the following three steps, until `Continue to console`
- Add app for Android, follow the same steps with the Bundle idntifier as `com.getx.app.flutterLogin`, download the json file and save it to android/app folder, finish with the 3 Next steps until `Continue to console`
    - Add the following lines in android/app/build.gradle, in applicationId

    ```gradle
    apply plugin: 'come.google.gms.google-services'
    :
    defaultConfig {
        applicationId "com.getx.app.flutterLogin"
        :
        //MultiDexEnable true
    }
    :
    dependencies {
        :
        implementation 'com.android.support:multidex:1.0.3'
    }
    ```

    - Now edit in android/build.gradle
    ```gradle
    dependencies {
        classpath 'com.google.gms:google-services:4.3.3'
        :
    }
    ```

- Go to the Authentication menu in the project
    - Select `Get started`
    - In Sign-In method, test with Native provider: Email/Password -> Enable and Save it
    - Check Users where the new users will show up
- Install firebase plugins, in the VS terminal run:
    ```bash
    flutter pub add firebase_auth
    flutter pub add firebase_core
    ```
- Install for IOS, open the terminal and run `sudo gem install cocoapods`

### 9. Create the auth_controller

- In the lib folder, create the auth_controller.dart file
    ```dart
    import 'package:get/get.dart';
    import 'package:firebase_auth/firebase_auth.dart';
    import 'login_page.dart';
    import 'welcome_page.dart';
    //import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class AuthController extends GetxController{
    //Authcontroller.instance
        static AuthController instance = Get.find();
    //email, password, name...
        late Rx<User?> _user;
        FirebaseAuth auth = FirebaseAuth.instance;

        @override
    void onReady(){
        super.onReady();
        //user notification
        _user = Rx<User?>(auth.currentUser);
        _user.bindStream(auth.userChanges());
        ever(_user, _initialScreen);
    }

    _initialScreen(User? user){
        if(user==null){
        print("login page");
        Get.offAll(()=>LoginPage());
        }else{
        Get.offAll(()=>WelcomePage(email:user.email!));
        //Get.offAll(()=>WelcomePage(password:user.password!));
        }
    }

    void login(String email, password)async{
        try{
        await auth.signInWithEmailAndPassword(email: email, password: password);
        }catch(e){
        Get.snackbar("About Login", "Login message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
            titleText: Text(
            "Login failed",
            style: TextStyle(
                color: Colors.white
            ),
            ),
            messageText: Text(
            e.toString(),
                style: TextStyle(
                color: Colors.white //29.04
                )
            )
        );
        }
    }

    void register(String email, password)async{
        try{
        await auth.createUserWithEmailAndPassword(email: email, password: password);
        }catch(e){
        Get.snackbar("About User", "user message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
            titleText: Text(
            "Account creation failed",
            style: TextStyle(
                color: Colors.white
            ),
            ),
            messageText: Text(
            e.toString(),
                style: TextStyle(
                color: Colors.white //29.04
                )
            )
        );
        }
    }

    void logOut()async{
        await auth.signOut();
    }
    }
    ```

- Edit the main.dart file and add the firebaseapp

    ```dart
    import 'package:flutter/material.dart';
    import 'package:firebase_core/firebase_core.dart';
    import 'package:firebase_auth/firebase_auth.dart';
    import 'login_page.dart';
    import 'package:get/get.dart';
    import 'auth_controller.dart';

    Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp().then((value) => Get.put(AuthController()));
    runApp(MyApp());
    }
    ```

- Add the GestureDetector on the signup_page.dart file, especifically to the action of the button `Sign up` (wrap with a widget before: select the word `Container` and CTRL + ., choose option that wraps the widget)

    ```dart
    import 'auth_controller.dart';
    :
        @override
        Widget build(BuildContext context) {
        var emailController =  TextEditingController();
        var passwordController = TextEditingController();
        List images = [
        :

          GestureDetector(
            onTap: (){
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
              width: w*0.5,
              height: h*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(
                    "img/loginbtn.png"
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color:Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text:"Have an account?",
              style: TextStyle(
                fontSize: 20,
                color:Colors.grey[500]

              )
            )
          ),  
    ```
### 10. Update the package name so it matches the Bundle ID configured on Firebase `package com.getx.app.flutterLogin`

Then the package name in the Flutter project must be renamed in the following files (your project's name is the app's name):

- flutter_login/android/app/build.graddle

  ```gradle
  deffaultConfig{
  applicationId "com.getx.app.flutterlogin"
  : 
  }
  ```

- flutter_login/android/app/src/main/kotlin/com/example/flutter_login/MainActivity.kt  OR .../MainActivity.java
  ```kt
  package com.getx.app.flutterLogin
  ```

- flutter_login/android/app/src/debug/AndroidManifest.xml
  ```xml
  <manifest xmlns:android="http://schemas.android.com/apk/res/android"
  package="com.getx.app.flutterLogin">
  ```

- flutter_login/android/app/src/main/AndroidManifest.xml
  ```xml
  <manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.getx.app.flutterLogin">
  ```

Finally, to avoid this changes of name, decide ahead the name of the Firebase Bundle ID, so that when the project is created, the following input is utilized

```bash
flutter create --org com.anyname.yourappname yourappname
```

### 11. Configure a splashcreen
- Edit the splashcreen.dart

    ```dart
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class SplashScreen extends StatelessWidget {
    const SplashScreen({Key? key}): super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white,
        child: Center(
            child: Container(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
                backgroundColor: Colors.redAccent,
            ),
            ),
        )
        );
    }
    }
    ```

- Configure the main.dart to begin with the splash_screen.dart

    ```dart
    class MyApp extends StatelessWidget {
    @override
        Widget build(BuildContext context) {
                return GetMaterialApp(
                    title: 'Flutter Demo',
                    theme: ThemeData(
                        primarySwatch: Colors.blue,
                    ),
                home: SplashScreen()
                );
        }
    }
    ```

- Run on both Android and Iphone devices
  Click the Run and Debug icon, then choose the option to Add Configuration, choose Flutter debugger, then a file launch.json is created, delete the launch profile and add this (take in consideration that the devices should be stay opened and add the device ID to the json file). <br>
  Open the iphone simulator via VSCODE with `open -a simulator`. To identify each simulator, run `flutter devices`, add the IDs in the following JSON file. <br>
  Note: If the IOS emulator doesn't start, Go to About this Mac (Apple icon) > Storage > Manage (First disk) > Developer, and delete Xcode caches and Project build, run again `open -a simulator` or download any new Iphone simulator at Xcode > Preferences > Components, then install any simulator

    ```json
    {
        "version": "0.2.0",
        "configurations": [
        {
            "name": "flutter_guide",
            "request": "launch",
            "type": "dart"
        },
        {
            "name": "Android",
            "request": "launch",
            "type": "dart",
            "deviceId": "emulator-5554"
        },
        {
            "name": "iPhone12",
            "request": "launch",
            "type": "dart",
            "deviceId": "E0E30918-9823-4DD7-823F-BE99C99B1412"
        },
        {
            "name": "flutter_guide (release mode)",
            "request": "launch",
            "type": "dart",
            "flutterMode": "release"
        }
        ],
        "compounds": [
        {
            "name": "All Devices",
            "configurations": ["Android","iPhone12"]
        }
        ]
    }
    ```

    Test 11.1 Compliled @ the branch of [`ver-1.4`](https://github.com/jatolentino/Flutter_login/tree/ver1.4)
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_login/blob/ver1.4/source/step11-test-1.png" width="600">
    </p>