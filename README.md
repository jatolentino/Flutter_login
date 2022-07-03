# flutter_login

A new Flutter project.

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