import 'package:flutter/material.dart';

class joga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogabilidade', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF0B0603),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://pbs.twimg.com/media/FHmibpMXIAAteoJ?format=jpg&name=900x900',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Center(
                child: Column(
                  children: [
                    buildGameSection(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxJUc8uzG9Om5XJv8Jewf3ZPd9dqVuZL18QonXMShq8Jv8Q-DaBQCaVWZJtx9xxuznns4&usqp=CAU',
                      "A mecânica do jogo é implacavelmente difícil. Não apenas os inimigos são numerosos e agressivos, mas Sir Arthur também é notoriamente vulnerável.",
                    ),
                    SizedBox(height: 20), // Espaçamento entre as seções
                    buildGameSection(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMHRMtx75vukmSs39LUrX6J8m93IJFmhhrtKaLjOKSx6VksYbb-7iyAcyaIM0U6vI8riY&usqp=CAU',
                      "O jogo é lembrado com carinho por muitos jogadores por seu design desafiador, trilha sonora memorável e o charme retro dos gráficos e animações.",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGameSection(String imageUrl, String description) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF0B0603),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
