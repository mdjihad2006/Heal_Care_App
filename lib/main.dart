import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurpleAccent,
              elevation: 8,
              shadowColor: Colors.grey,
              titleTextStyle: TextStyle(color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
              centerTitle: true,
              toolbarHeight: 90,
              shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.vertical(
                      bottom: Radius.circular(18)
                  )
              ),
            )
        ),
        home: DefaultTabController(length: 4, child: HomePage()));
  }

}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageActivity();
}
class HomePageActivity extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("HealCare"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(47),
            child: TabBar(
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.blue,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.access_alarm_sharp,color: Colors.white,size:28,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.accessibility_sharp,color: Colors.white,size:28,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add_call,color: Colors.white,size:28,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add_alert,color: Colors.white,size:28,),
                  ),
                ]
            ),
          )
      ),
      body: TabBarView(
        children: [
          AlarmPageActivity(),
          FitnessPageActivity(),
          EmergencyPageActivity(),
          MedicinesPageActivity()
        ],
      ),
    );
  }

}

class AlarmPageActivity extends StatelessWidget{
  const AlarmPageActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              onTap: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.blueAccent,
              leading: CircleAvatar(child: Icon(Icons.access_alarms_rounded,size: 30,)),
              title: Text('7:30 AM', style: TextStyle(fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              subtitle: Text("Take your medicine.it the time to take your medicine.as doctor wrote the prescription",),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              onTap: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.deepPurpleAccent,
              leading: CircleAvatar(child: Icon(Icons.access_alarms_rounded,size: 30,)),
              title: Text('10:00 AM', style: TextStyle(fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              subtitle: Text("💊 Health Reminder: It’s time to take your medicine. Stay on schedule for better health!",),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              onTap: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.pinkAccent,
              leading: CircleAvatar(child: Icon(Icons.access_alarms_rounded,size: 30,)),
              title: Text('2:45 PM', style: TextStyle(fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              subtitle: Text("🔔 Pill Time: Don’t forget your medication—your health matters!",),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              onTap: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.orange,
              leading: CircleAvatar(child: Icon(Icons.access_alarms_rounded,size: 30,)),
              title: Text('4:30 AM', style: TextStyle(fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              subtitle: Text("⏰ Medicine Alert: Take your prescribed dose now. Consistency is key!",),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              onTap: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.green,
              leading: CircleAvatar(child: Icon(Icons.access_alarms_rounded,size: 30,)),
              title: Text('6:25 AM', style: TextStyle(fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              subtitle: Text("💡 Reminder: It's time for your meds. Take care of yourself!",),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              onTap: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.purple,
              leading: CircleAvatar(child: Icon(Icons.access_alarms_rounded,size: 30,)),
              title: Text('7:30 AM', style: TextStyle(fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              subtitle: Text("🕒 Reminder: Time to take your medicine. Stay healthy, stay strong!",),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              onTap: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.amber,
              leading: CircleAvatar(child: Icon(Icons.access_alarms_rounded,size: 30,)),
              title: Text('9:20 PM', style: TextStyle(fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              subtitle: Text("⏳ Health Alert: Take your dose now to keep things on track.",),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              onTap: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.cyan,
              leading: CircleAvatar(child: Icon(Icons.access_alarms_rounded,size: 30,)),
              title: Text('11:10 PM', style: TextStyle(fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              subtitle: Text("🔔 Friendly Reminder: It’s med time! A small step for a better you.",),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          )

        ],
      ),
    );
  }

}

class FitnessPageActivity extends StatelessWidget{
  const FitnessPageActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(11),
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Stack(
                            children: [Image.network(
                                "https://tse2.mm.bing.net/th/id/OIP.4KiS8wHJ2mE3H--y_tn_SwHaE7?r=0&rs=1&pid=ImgDetMain&o=7&rm=3"),
                              Positioned(top: 50,left: 50,right: 50,bottom: 50,child: Icon(Icons.play_circle_fill_outlined,size: 60,color: Colors.white,),)
                            ])),
                    SizedBox(height: 8),
                    ListTile(
                      leading: ClipOval(child: Image.network(
                        "https://tse1.mm.bing.net/th/id/OIP.ZaZfdfcfs8pAvm67XKNPYAHaJ4?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                        height: 80, width: 55, fit: BoxFit.cover,),),
                      title: Text(
                        "How to do exercise properly.a new Weight lifting video 2025.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),),
                      subtitle: Text("3 month ago"),
                    ),



                    ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Stack(
                            children: [Image.network(
                                "https://static.vecteezy.com/system/resources/previews/001/226/689/non_2x/man-training-with-battle-ropes-free-photo.jpg"),
                              Positioned(top: 50,left: 50,right: 50,bottom: 50,child: Icon(Icons.play_circle_fill_outlined,size: 60,color: Colors.white,),)
                            ])),
                    SizedBox(height: 8),
                    ListTile(
                      leading: ClipOval(child: Image.network(
                        "https://www.dmoose.com/cdn/shop/articles/Cable_Squat_to_Underhand_Row.png?v=1660566159",
                        height: 80, width: 55, fit: BoxFit.cover,),),
                      title: Text(
                        "How to do exercise properly.a new Weight lifting video 2025.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),),
                      subtitle: Text("3 month ago"),
                    ),


                    ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Stack(
                            children: [Image.network(
                                "https://tse2.mm.bing.net/th/id/OIP.ZDz0RlGZxXgJ18c5SFaamAHaFb?r=0&w=1200&h=879&rs=1&pid=ImgDetMain&o=7&rm=3"
                            ),
                              Positioned(top: 50,left: 50,right: 50,bottom: 50,child: Icon(Icons.play_circle_fill_outlined,size: 60,color: Colors.white,),)
                            ])),
                    SizedBox(height: 8),
                    ListTile(
                      leading: ClipOval(child: Image.network(
                        "https://tse2.mm.bing.net/th/id/OIP.4KiS8wHJ2mE3H--y_tn_SwHaE7?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                        height: 80, width: 55, fit: BoxFit.cover,),),
                      title: Text(
                        "How to do exercise properly.a new Weight lifting video 2025.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),),
                      subtitle: Text("3 month ago"),
                    ),


                    ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Stack(
                            children: [Image.network(
                                "https://tse1.explicit.bing.net/th/id/OIP.C2fG90dHS6LmupbyYsO0WAHaF7?r=0&rs=1&pid=ImgDetMain&o=7&rm=3"
                            ),
                              Positioned(top: 50,left: 50,right: 50,bottom: 50,child: Icon(Icons.play_circle_fill_outlined,size: 60,color: Colors.white,),)
                            ])),
                    SizedBox(height: 8),
                    ListTile(
                      leading: ClipOval(child: Image.network(
                        "https://i.pinimg.com/originals/13/6e/1b/136e1b0b9ec76ac74f402ad15ceeda3b.jpg",
                        height: 80, width: 55, fit: BoxFit.cover,),),
                      title: Text(
                        "How to do exercise properly.a new Weight lifting video 2025.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),),
                      subtitle: Text("3 month ago"),
                    ),



                    ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Stack(
                            children: [Image.network(
                                "https://www.dmoose.com/cdn/shop/articles/Cable_Squat_to_Underhand_Row.png?v=1660566159"
                            ),
                              Positioned(top: 50,left: 50,right: 50,bottom: 50,child: Icon(Icons.play_circle_fill_outlined,size: 60,color: Colors.white,),)
                            ])),
                    SizedBox(height: 8),
                    ListTile(
                      leading: ClipOval(child: Image.network(
                        "https://tse4.mm.bing.net/th/id/OIP.X3rL7PlceSu1r2t1RROdvQHaEK?r=0&w=489&h=275&rs=1&pid=ImgDetMain&o=7&rm=3,",
                        height: 80, width: 55, fit: BoxFit.cover,),),
                      title: Text(
                        "How to do exercise properly.a new Weight lifting video 2025.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),),
                      subtitle: Text("3 month ago"),
                    ),


                    ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Stack(
                            children: [Image.network(
                                "https://tse4.mm.bing.net/th/id/OIP.X3rL7PlceSu1r2t1RROdvQHaEK?r=0&w=489&h=275&rs=1&pid=ImgDetMain&o=7&rm=3"),
                              Positioned(top: 50,left: 50,right: 50,bottom: 50,child: Icon(Icons.play_circle_fill_outlined,size: 60,color: Colors.white,),)
                            ])),
                    SizedBox(height: 8),
                    ListTile(
                      leading: ClipOval(child: Image.network(
                        "https://www.dmoose.com/cdn/shop/articles/Cable_Squat_to_Underhand_Row.png?v=1660566159",
                        height: 80, width: 55, fit: BoxFit.cover,),),
                      title: Text(
                        "How to do exercise properly.a new Weight lifting video 2025.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),),
                      subtitle: Text("3 month ago"),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }

}

class EmergencyPageActivity extends StatelessWidget{
  const EmergencyPageActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Column(
              children: [
                Icon(Icons.add_call,size: 120,color: Colors.deepPurpleAccent,),
                SizedBox(height: 5, width: 5,),
                Text("Emergency call",style: TextStyle(fontSize: 22,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),)
              ],
            ),
          )
      ),
    );
  }

}

class MedicinesPageActivity extends StatelessWidget{
  const MedicinesPageActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey,
                      width: 3
                  ),
                ),
                title: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
                subtitle: Text("Stay hydrated and avoid outdoor activity during peak heat hours. Wear light clothing and use sunscreen. If feeling dizzy or unwell, seek shade and medical help."),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey,
                      width: 3
                  ),
                ),
                title: Text("🔔 Health Alert:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
                subtitle: Text("A heatwave is ongoing. Drink plenty of water, avoid the sun between 11 AM–4 PM, and stay in cool places. Elderly and children are at higher risk."),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey,
                      width: 3
                  ),
                ),
                title: Text("🔔 Health Alert",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
                subtitle: Text("Flu cases rising in your area. Wash hands frequently, wear masks in crowded places, and consult a doctor if symptoms appear."),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey,
                      width: 3
                  ),
                ),
                title: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
                subtitle: Text("High pollution levels today. Limit outdoor exercise, especially if you have asthma or heart issues. Use masks and keep windows closed."),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey,
                      width: 3
                  ),
                ),
                title: Text("🚨 Health Alert:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
                subtitle: Text("Dengue risk is high. Use mosquito repellents, wear long sleeves, and eliminate standing water near your home."),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey,
                      width: 3
                  ),
                ),
                title: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
                subtitle: Text("Stay hydrated and avoid outdoor activity during peak heat hours. Wear light clothing and use sunscreen. If feeling dizzy or unwell, seek shade and medical help."),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey,
                      width: 3
                  ),
                ),
                title: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
                subtitle: Text("Stay hydrated and avoid outdoor activity during peak heat hours. Wear light clothing and use sunscreen. If feeling dizzy or unwell, seek shade and medical help."),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color: Colors.grey,
                      width: 3
                  ),
                ),
                title: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
                subtitle: Text("Stay hydrated and avoid outdoor activity during peak heat hours. Wear light clothing and use sunscreen. If feeling dizzy or unwell, seek shade and medical help."),
              ),
            )
          ],
        )
    );
  }

}


// class AlarmPage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() => AlarmPageActivity();
//
// }
//
// class AlarmPageActivity extends State<AlarmPage>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Alarm page"),
//       ),
//     );
//   }
//
//}