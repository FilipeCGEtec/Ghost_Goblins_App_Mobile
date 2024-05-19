import 'package:flutter/material.dart';

class enredo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enredo', style: TextStyle(color: Colors.white)),
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
              color: Colors.black.withOpacity(0.5), // Sombra de fundo, intensidade.
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.07,
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Define o raio de arredondamento
                        color: Color(0xFF0B0603), // Usando a cor personalizada
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "Ghost'n Goblins",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'JotiOne',
                            ),
                          ),
                          SizedBox(height: 20),
                          Image.network(
                            'https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/GhostsnGoblins_flyer.jpg/220px-GhostsnGoblins_flyer.jpg',
                            fit: BoxFit.contain,
                            height: 300,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Gênero(s): Run and Gun/Plataforma",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'JotiOne',
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Desenvolvedor: Capcom",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'JotiOne',
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Publicador: Capcom",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'JotiOne',
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Criador: Tokuro Fujiwara",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'JotiOne',
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Spin-offs: Gargoyle's Quest, Maximo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'JotiOne',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20), // Espaçamento entre as seções
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Define o raio de arredondamento
                        color: Color(0xFF0B0603), // Usando a cor personalizada
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/Ghosts_%27n_Goblins_arcade_screenshot.png/220px-Ghosts_%27n_Goblins_arcade_screenshot.png', // Substitua pela URL da sua imagem
                            fit: BoxFit.contain,
                            width: double.infinity,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Os jogadores assumem o papel de Sir Arthur, um cavaleiro valente em uma missão para resgatar a princesa Prin Prindas garras do malévolo demônio.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
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
}
