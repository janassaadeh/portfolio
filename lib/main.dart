import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jana Saadeh Technologies', 
      home: BAUQueuePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbfbfbf),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // Set the height here
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top:20,left:22.0),
            child: Text("Jana Saadeh Technologies",style: TextStyle(
              color:Colors.black,
              fontWeight: FontWeight.w900
            ),),
          ),
          backgroundColor:Colors.white,
          elevation: 0
        ),
      ),
      body: SingleChildScrollView(                
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      Row(
    mainAxisAlignment: MainAxisAlignment.center, // Center children horizontally
    crossAxisAlignment: CrossAxisAlignment.center, // Align items vertically
    children: [
      MeCard(title: "Flutter", imageUrl: "123 456 789 0", name: ""),
      SizedBox(width: 20), // Add spacing between MeCard and Column
      Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center text inside column
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
        children: [
          Text(
            "I'm Jana",
            style: TextStyle(fontSize: 70, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 15), // Add spacing between texts
          SizedBox(
            width: 400, // Set a max width for better readability
            child: Text(
"Welcome to Jana Saadeh Technologies, a platform I created to release Flutter apps and share my knowledge along the way. I'm a passionate developer from Lebanon with experience in building mobile and web applications using Flutter. In addition to Flutter, I specialize in backend development with Spring Boot and have experience with various other technologies. I love coding, learning new skills, and solving complex problems.",             
 style: TextStyle(height:1.5,color:Colors.black,fontSize: 16,),
              softWrap: true, // Ensure text wraps properly
            ),
          ),
        ],
      ),
    ],
  ),

              Divider(),
              SizedBox(height: 20),
              Text("Projects",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              ProjectCard(
                title: "Golf Cart Rental App for C and S Golf Cart",
                date: "October 2024 - Present",
                description:"Developed a custom golf cart rental management app for C and S Golf Cart, Belize’s top rental service, bringing efficiency and ease to their daily operations.\n\n\nBuilt with Flutter, MongoDB, and Spring Boot, the app empowers staff to seamlessly track cart availability, monitor insurance and maintenance schedules, and keep operations running smoothly. With real-time updates and an intuitive design, it ensures effortless management for a top-tier rental experience.",
                imageUrl: "assets/images/logo_p.png",
                widget: Container(),
              ),
              ProjectCard(
                title: "Queue System for BAU",
                date: "August 2024",
                description:"Developed a queue management system for BAU Tripoli, with plans to expand its use across other faculties.\n\n\nBuilt with Flutter for the mobile app, Spring Boot for the backend, and HTML/CSS for the web interface, this system streamlines student check-ins by allowing security personnel to input student details, automatically generating a queue number. The system then intelligently assigns students to counters based on their purpose—registration or admission—while also enabling real-time role adjustments for each counter directly within the app.",
                imageUrl: "assets/images/bau_logo.png", // Add your project image URL
                widget: BAUQueuePage(),              
              ),
              ProjectCard(
                title: "Loyalty App for Arco Energies",
                date: "October 2023",
                description:"Developed a Loyalty Gas System for Arco Energies in Tripoli, Lebanon, using Spring Boot, MongoDB, and Flutter, creating a seamless experience for Station Managers, Operators, and Customers.\n\n\nThis system integrates NFC for automatic car detection during transactions, replacing manual searches, and utilizes QR codes for effortless reward redemption. With Firebase Messaging handling notifications, Operators can process transactions and add funds to company balances, while Station Managers oversee everything—managing Operators, Customers, and their vehicles. Customers who accumulate enough points from transactions can visit a station, present a QR code for their chosen reward, and have it instantly redeemed with a quick scan.",
                imageUrl: "assets/images/arco_logo.png", // Add your project image URL
                widget: Container(),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final String imageUrl; // Added image URL
  final Widget widget;
  const ProjectCard({
    required this.title,
    required this.date,
    required this.description,
    required this.imageUrl, // Added image URL
    required this.widget, // Added image URL

  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 800,
        child: Card(
          
        
        color: Color(0xffe4e1e2),
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Ensures alignment at the same level
        children: [
          // Left Side: Title & Description
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Prevents unnecessary expansion
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:40.0,bottom:30),
                  child: Row( // Wrap title & container in a row to keep them at the same level
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.black,
                        height: 32,
                        width:10
                        
                      ),
                      SizedBox(width: 25,),
                      Text(
                        title,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10), // Space between title and container
                      
                    ],
                  ),
                ),
              
                Padding(
                  padding: const EdgeInsets.only(left:40,bottom:10),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10),
               
                GestureDetector(
                onTap: ()  {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => widget));
                      },
                  child: Padding(
                    padding: const EdgeInsets.only(left:40,top:20,bottom:40),
                    child: Container(
                      width:130,
                      decoration: BoxDecoration(color: Color(0xff767674),borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(child: Text("Learn More",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500),)),
                      ),),
                  ),
                )
              ],
            ),
          ),
        
          SizedBox(width: 15), // Space between text and image
        
          // Right Side: Image
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                imageUrl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        ),
        ),
      ),
    );
;
  }
}

class MeCard extends StatelessWidget {
  final String name;
  final String title;
  final String imageUrl; // Added image URL

  const MeCard({
    required this.name,
    required this.title,
    required this.imageUrl, // Added image URL
  });

  @override
  Widget build(BuildContext context) {
    return Container(
width:350,      child: Card(
        
        color: Color(0xffe4e1e2),
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column( // Changed from Column to Row
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image on the left side
     Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/images/profile.jpg"), // Add your profile picture URL
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Jana \nSaadeh\nTechnologies",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center, // Centers text within the Text widget

                  ),
                ),
               
                SizedBox(height: 30,),
                Container(color:Color(0xff797979),height: 3,width:50)
     ,SizedBox(height: 30),
                Center(
                  child: Text("Flutter App Developement", style: TextStyle(fontSize: 18)),
                ),
                // // About Section
                // SizedBox(height: 20),
                // Text(
                //   "About Me",
                //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                // ),
                // SizedBox(height: 10),
                // Text(
                //   "I am a passionate Flutter developer with experience building mobile and web applications. I love coding, learning new technologies, and solving problems.",
                //   style: TextStyle(fontSize: 16),
                // ),
                // Divider(),
    
                // // Skills Section
                // SizedBox(height: 20),
                // Text(
                //   "Skills",
                //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                // ),
                // SizedBox(height: 10),
                // Wrap(
                //   spacing: 15,
                //   runSpacing: 10,
                //   children: [
                //     Chip(label: Text("Flutter")),
                //     Chip(label: Text("Dart")),
                //     Chip(label: Text("Firebase")),
                //     Chip(label: Text("MongoDB")),
                //     Chip(label: Text("Spring Boot")),
                //     Chip(label: Text("UI/UX Design")),
                //     Chip(label: Text("Web Development")),
                //   ],
                // ),
             
                  ],
          ),
        ),
      ),
    );
  }
}

class BAUQueuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8e6e6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // Set the height here
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top:20,left:22.0),
            child: Text("Jana Saadeh Technologies",style: TextStyle(
              color:Colors.black,
              fontWeight: FontWeight.w900
            ),),
          ),
          backgroundColor:Colors.white,
          elevation: 0
        ),
      ),
      body: SingleChildScrollView(                
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      ProjectDetailsCard(
                title: "Queue System for BAU",
                date: "August 2024",
                description:"Developed a queue management system for BAU Tripoli, with plans to expand its use across other faculties.\n\n\nBuilt with Flutter for the mobile app, Spring Boot for the backend, and HTML/CSS for the web interface, this system streamlines student check-ins by allowing security personnel to input student details, automatically generating a queue number. The system then intelligently assigns students to counters based on their purpose—registration or admission—while also enabling real-time role adjustments for each counter directly within the app.",
                imageUrl: "assets/images/bau_logo.png", // Add your project image URL
                widget: BAUQueuePage(),              
              ),
              Divider(),
              SizedBox(height: 40,),
              Center(
                child: Text(
                    "How It Works 📱",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
              ),
              SizedBox(height: 40,),
              Row(children: [
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left:25.0,right:25),
                    child: Image.asset("assets/images/next page.png",width:250),
                  ),
                   Text(
                    "When Pressing next a new",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
                
                )

              ],)
            ],
          ),
        ),
      ),
    );
  }
}
class ProjectDetailsCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final String imageUrl; // Added image URL
  final Widget widget;
  const ProjectDetailsCard({
    required this.title,
    required this.date,
    required this.description,
    required this.imageUrl, // Added image URL
    required this.widget, // Added image URL

  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left:200.0,right:200,top:40,bottom:20),
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Ensures alignment at the same level
        children: [
          // Left Side: Title & Description
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Prevents unnecessary expansion
              children: [
              
                Text(
                  title,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),

                SizedBox(width: 10),
                
              
                Padding(
                  padding: const EdgeInsets.only(right:200,bottom:10),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10),
               
                GestureDetector(
                onTap: ()  {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => widget));
                      },
                  child: Padding(
                    padding: const EdgeInsets.only(left:0,top:20,bottom:40),
                    child: Container(
                      width:130,
                      decoration: BoxDecoration(color: Color(0xff767674),borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(child: Text("View Demo",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500),)),
                      ),),
                  ),
                )
              ],
            ),
          ),
        
          SizedBox(width: 15), // Space between text and image
        
          // Right Side: Image
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                imageUrl,
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        ),
      ),
    );
;
  }
}