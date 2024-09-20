import 'package:app_ghost/besta.dart';
import 'package:flutter/material.dart';

class BestaScreen extends StatefulWidget {
  @override
  _BestaScreenState createState() => _BestaScreenState();
}

class _BestaScreenState extends State<BestaScreen> {
  int _current = 0;
  final List<Besta> imgList = getBestas();
  final PageController _pageController = PageController();

  // Função para ir para a próxima página
  void _nextPage() {
    if (_current < imgList.length - 1) {
      setState(() {
        _current++;
      });
      _pageController.animateToPage(
        _current,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (_current > 0) {
      setState(() {
        _current--;
      });
      _pageController.animateToPage(
        _current,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

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
                image: AssetImage(
                  'img/fundo.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5), 
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    color: Color(0xFF0B0603), 
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        imgList[_current].nome,
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
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: imgList.length,
                    onPageChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  imgList[index].img,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    color: Color(0xFF0B0603), 
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        imgList[_current].descricao,
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: _previousPage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0B0603), 
                          shadowColor:
                              Colors.grey.withOpacity(0.8),
                          elevation: 5, 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 60.0,
                              vertical: 18.0),
                        ),
                        child: Text(
                          'Anterior',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2, 
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _nextPage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xFF0B0603), 
                          shadowColor:
                              Colors.grey.withOpacity(0.8), 
                          elevation: 5, // Altura da sombra
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0), 
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 60.0,
                              vertical: 18.0), 
                        ),
                        child: Text(
                          'Próximo',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2, 
                          ),
                        ),
                      ),
                    ],
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
