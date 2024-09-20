class Besta {
  final String nome;
  final String img;
  final String descricao;

  Besta({
    required this.nome,
    required this.img,
    required this.descricao,
  });
}

List<Besta> getBestas() {
  List<Besta> bestas = [];

  bestas.add(Besta(
    nome: 'ZUMBI',
    img: 'img/zumbi.jpg',
    descricao:
        'Zumbis (Zombies) são inimigos que basicamente surgirão do chão e caminharão em direção a Arthur. Estes são cadáveres que foram revividos pela energia do Reino Demoníaco.',
  ));
  bestas.add(Besta(
    nome: 'CORVO',
    img: 'img/corvo.jpeg',
    descricao:
        'Corvos (Crow) podem ser encontrados nos estágios 1 e 2, são destruídos com apenas um golpe. Os corvos azuis se lançam para frente sempre que Arthur se aproxima de um deles.',
  ));
  bestas.add(Besta(
    nome: 'MORCEGO',
    img: 'img/morcego.jpeg',
    descricao:
        'Morcego (Bat) são de cor azul e ficam pendurados no teto até atacarem as presas que se aproximam deles. Eles descem enquanto Arthur caminha perto deles e o perseguem voando.',
  ));
  bestas.add(Besta(
    nome: 'PETITE DEVIL',
    img: 'img/diabo.jpeg',
    descricao:
        'Petite Devil é um pequeno demônio que voa e ataca seus oponentes com movimentos irregulares, aparecendo repentinamente e se movendo rapidamente.',
  ));
  bestas.add(Besta(
    nome: 'SATAN',
    img: 'img/satan.jpeg',
    descricao:
        'Satan se move muito rapidamente. Quando suas asas estão fechadas, atirar nele não o afeta. Ele morrerá com 8 tiros, somente quando suas asas estão abertas.',
  ));
  bestas.add(Besta(
    nome: 'MONSTRO VERDE',
    img: 'img/planta.jpeg',
    descricao:
        "Monstro Verde (Green Monster) é um inimigo que brota de cadáveres e se alimenta de carne podre. Eles podem atacar cuspindo olhos pela boca.",
  ));
  bestas.add(Besta(
    nome: 'ESQUELETO',
    img: 'img/esqueleto.jpg',
    descricao:
        'Esqueleto (Skeleton) aparece como crânios caídos, mas puxa o corpo do chão e ataca saltando quando alguém se aproxima.',
  ));
  bestas.add(Besta(
    nome: 'BIG MEN',
    img: 'img/ogre.jpeg',
    descricao:
        'Big Men são gigantes musculosos que atacam com manguais. Eles patrulham áreas e atacam quando seus oponentes se aproximam.',
  ));
  bestas.add(Besta(
    nome: 'CAVALEIROS VOADORES',
    img: 'img/cavaleiro.jpg',
    descricao:
        'As almas torturadas de cavaleiros mortos em batalha assombram a floresta, atacando qualquer um que se aproxime.',
  ));
  bestas.add(Besta(
    nome: 'MÁGICO',
    img: 'img/magican.jpeg',
    descricao:
        'O Mágico (Magican) lança feitiços em Arthur. Se atingido, Arthur se transformará em um sapo e ficará indefeso por alguns segundos.',
  ));
  bestas.add(Besta(
    nome: 'CYCLOPE',
    img: 'img/cyclop.jpeg',
    descricao:
        'Cyclope é um guardião poderoso que intimida seus oponentes saltando alto e atacando diretamente a cabeça de Arthur.',
  ));
  bestas.add(Besta(
    nome: 'DRAGÃO',
    img: 'img/dragon.jpeg',
    descricao:
        'Os Dragões cospem fogo e têm movimentos flutuantes imprevisíveis. Eles podem mudar de direção rapidamente e atacar Arthur de surpresa.',
  ));
  bestas.add(Besta(
    nome: 'LUCIFER',
    img: 'img/lucifer.jpeg',
    descricao:
        'Lúcifer, o tirano demoníaco, sequestrou a Princesa PrinPrin. Ele deve ser derrotado duas vezes para ser completamente expulso do reino.',
  ));

  return bestas;
}
