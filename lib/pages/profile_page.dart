import 'package:flutter/material.dart';
import 'package:cv_io/user/user.dart';
import 'package:cv_io/pages/edit_profile_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () => print("Open menu"),
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
              onPressed: () => print("search"), icon: const Icon(Icons.search))
        ],
        title: const Text(
          'My profile',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: size.height * 0.02,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfile()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      //todo:MAKE TOUCH INSIDE THE CIRCLE(NO TOUCHES OUTSIDE)
                      image: DecorationImage(
                        image: AssetImage("assets/01.jpeg"),
                        fit: BoxFit.cover,
                      )),
                  height: size.height * 0.2,
                  width: size.width * 0.4,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                height: size.height * 0.2,
                width: size.width * 0.50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 18, left: 10),
                      child: Text(
                        "Avkhadeev Albert",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Image(
                            image: AssetImage("assets/innopolis.png"),
                            width: 50,
                            height: 50,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Image(
                            image: AssetImage("assets/innopolis.png"),
                            width: 50,
                            height: 50,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Image(
                            image: AssetImage("assets/innopolis.png"),
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "ML Engineer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 45),
                width: size.width * 0.47,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.add),
                  onPressed: () => print("Follow"),
                  label: Text("Follow"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightGreen),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            height: size.height * 0.05,
            child: Text(
              "Education",
              style: TextStyle(
                fontSize: 24,
                backgroundColor: Colors.limeAccent,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Image(
                    image: AssetImage("assets/innopolis.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image(
                    image: AssetImage("assets/innopolis.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image(
                    image: AssetImage("assets/innopolis.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80, left: 20),
            height: size.height * 0.05,
            child: Text(
              "Worked companies",
              style: TextStyle(
                fontSize: 24,
                backgroundColor: Colors.limeAccent,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Image(
                    image: AssetImage("assets/innopolis.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image(
                    image: AssetImage("assets/innopolis.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image(
                    image: AssetImage("assets/innopolis.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80, left: 20),
            height: size.height * 0.05,
            child: Text(
              "About me",
              style: TextStyle(
                fontSize: 24,
                backgroundColor: Colors.limeAccent,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Text(
                "Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности требуют от нас анализа соответствующий условий активизации. Задача организации, в особенности же укрепление и развитие структуры требуют определения и уточнения форм развития. Разнообразный и богатый опыт реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнять важные задания по разработке систем массового участия. Значимость этих проблем настолько очевидна, что консультация с широким активом представляет собой интересный эксперимент проверки систем массового участия. Равным образом укрепление и развитие структуры влечет за собой процесс внедрения и модернизации позиций, занимаемых участниками в отношении поставленных задач."),
          )
        ],
      ),
    );
  }
}
