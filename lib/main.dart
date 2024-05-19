import 'package:flutter/material.dart';
import 'enredo.dart';
import 'joga.dart';
import 'besta.dart'; //importando o arquivo da outra tela

void main() {
  runApp(TelaPrincipal());
}

class TelaPrincipal extends StatelessWidget {
  TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  color: Colors.black
                      .withOpacity(0.2) // sombra de fundo, intensidade.
                  ),
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/11a10a01-ac23-4fea-ad5a-b51f53084159/d5z5toc-0a8de005-7948-4a44-a099-698dce052e98.png/v1/fill/w_1824,h_327/ghosts__n_goblins_logo_by_ringostarr39_d5z5toc-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzI3IiwicGF0aCI6IlwvZlwvMTFhMTBhMDEtYWMyMy00ZmVhLWFkNWEtYjUxZjUzMDg0MTU5XC9kNXo1dG9jLTBhOGRlMDA1LTc5NDgtNGE0NC1hMDk5LTY5OGRjZTA1MmU5OC5wbmciLCJ3aWR0aCI6Ijw9MTgyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.y9W5CmI_12yDgZ0CDUtZ7AFJo2WQ9sea0DkKyb4_cPA',
                      fit: BoxFit.contain,
                      height: 66,
                    ),
                    SizedBox(height: 8),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Color(0xFFEA2F2F),
                            Color(0xFFEAEE2D),
                          ],
                        ).createShader(bounds);
                      },
                      child: Text(
                        'Bestiário',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'JotiOne',
                            backgroundColor: Colors.black.withOpacity(0.7)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF3040AA),
                Color(0xFF97C8E7),
                Color(0xFF3040AA),
              ],
            ),
          ),
          child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Builder(
                  //builder adicionado para carregar as telas pelo navegation
                  builder: (context) => IconButton(
                    icon: Icon(Icons.menu_book,
                        color: Color(0xffffffff), size: 55),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                enredo()), //chama a classe principal do arquivo enredo.dart
                      );
                    },
                  ),
                ),
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.bug_report,
                        color: Color(0xffffffff), size: 55),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => besta()),
                      );
                    },
                  ),
                ),
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.sports_esports,
                        color: Color(0xffffffff), size: 55),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => joga()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

