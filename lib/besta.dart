import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class besta extends StatefulWidget {
  @override
  _BestaState createState() => _BestaState();
}

class _BestaState extends State<besta> {
  int _current = 0;

  List<Map<String, String>> imgList = [
    {
      'imageUrl': 'img/zumbi.jpg',
      'description':
          "Zumbis (Zombies) são inimigos que basicamente surgirão do chão e caminharão em direção a Arthur. Estes são cadáveres que foram revividos pela energia do Reino Demoníaco.",
      'title': 'ZUMBI',
    },
    {
      'imageUrl': 'img/corvo.jpeg',
      'description':
          'Corvos (Crow) podem ser encontrados nos estágios 1 e 2, são destruídos com apenas um golpe. Os corvos azuis se lançam para frente sempre que Arthur se aproxima de um deles. ',
      'title': 'CORVO',
    },
    {
      'imageUrl': 'img/morcego.jpeg',
      'description': 'Morcego (Bat) são de cor azul e ficam pendurados no teto até atacarem as presas que se aproximam deles. Eles descem enquanto Arthur caminha perto deles e eles o perseguem voando para frente com um movimento para cima e para baixo.',
      'title': 'MORCEGO',
    },
    {
      'imageUrl': 'img/diabo.jpeg',
      'description': 'Petite Devil é um pequeno demônio que pode ser rápido e ágil. Eles aparecem repentinamente voando de forma linear, mas atacam seus oponentes de forma maliciosa, como se estivessem jogando algum tipo de jogo com seus movimentos irregulares.',
      'title': 'PETITE DEVIL',
    },
    {
      'imageUrl': 'img/satan.jpeg',
      'description': "Satan se move muito rapidamente. Quando suas asas estão fechadas, atirando nele não vai matá-lo. Ele morrerá com 8 tiros, somente quando suas asas estão abertas.",
      'title': 'SATAN',
    },
    {
      'imageUrl': 'img/planta.jpeg',
      'description': "Monstro Verde (Green Monster) é um inimigo de Ghosts 'n Goblins. Essas plantas antropófagas brotam de cadáveres e se alimentam de carne podre. Embora não tenham mobilidade, eles podem atacar cuspindo olhos pela boca.",
      'title': 'MONSTRO VERDE',
    },
    {
      'imageUrl': 'img/esqueleto.jpg',
      'description': "Esqueleto (Skeleton) é um inimigo comum da série. Eles primeiro parecem ser crânios caídos no chão. Quando um inimigo se aproxima, ele puxa todo o corpo do chão e ataca saltando. Eles podem pular enganosamente alto.",
      'title': 'ESQUELETO',
    },
    {
      'imageUrl': 'img/ogre.jpeg',
      'description': "Big Men têm músculos enormes e gostam de lançar manguais em sua cabeça. Eles normalmente vagam de um lado para outro em uma determinada área de patrulha, quando você chega perto deles, começam a atacar você.",
      'title': 'BIG MEN',
    },
    {
      'imageUrl': 'img/cavaleiro.jpg',
      'description': "As almas torturadas dos cavaleiros que morreram em batalha tornaram-se inquietas e agora assombram a floresta que leva aos portões da aldeia Makai.",
      'title': 'CAVALEIROS VOADORES',
    },
    {
      'imageUrl': 'img/magican.jpeg',
      'description': "O Mágico (Magican) abre as asas e envia um feitiço na direção de Arthur. Se Arthur for atingido por este feitiço, ele será transformado em um sapo e ficará indefeso por alguns segundos",
      'title': 'MÁGICO',
    },
    {
      'imageUrl': 'img/cyclop.jpeg',
      'description': "Eles protegem portões no jogo, são esses brutos e gostam de intimidar seus oponentes saltando alto e caindo no chão. Podendo atingir diretamente a cabeça de Arthur para aparecer rapidamente do outro lado.",
      'title': 'CYCLOPE',
    },
    {
      'imageUrl': 'img/dragon.jpeg',
      'description': "Eles cospem fogo, mas sua verdadeira ameaça são seus movimentos flutuantes imprevisíveis no ar. Eles podem mudar de direção muito rapidamente e passar de flutuar suavemente no céu para mergulhar diretamente no chão onde Arthur está.",
      'title': 'DRAGÃO',
    },
    {
      'imageUrl': 'img/lucifer.jpeg',
      'description': "Tirano demoníaco, é o sequestrador da Princesa PrinPrin. O que se sabe é que você terá que derrotá-lo não uma, mas duas vezes para realmente livrá-lo do seu reino.",
      'title': 'LUCIFER',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0B0603),
        title: Text('Bestiário', style: TextStyle(color: Colors.white)),
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
              color: Colors.black.withOpacity(0.5), // Escurece o fundo
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Título dinâmico que muda conforme a imagem atual
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    color: Color(0xFF0B0603), // Fundo preto para o título
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        imgList[_current]['title']!,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.6,
                      initialPage: _current,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                    items: imgList.map((img) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Image.network(
                              img['imageUrl']!,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    color:Color(0xFF0B0603), // Fundo preto para a descrição
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        imgList[_current]['description']!,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
