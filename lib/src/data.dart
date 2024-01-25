import 'package:animations_test/src/book_model.dart';

List<BookModel> appData() {
  List<BookModel> dataList = [];

  final marvels = BookModel(
      title: 'Os Marvels',
      autor: 'Brian Selznick',
      price: 'R\$ 78,95',
      description:
          'O livro “Os Marvels” conta a história de um navio que naufragou em 1766 durante uma peça, e os únicos sobreviventes foram Billy Marvel e seu cão. Depois disso, o jovem passou a trabalhar no teatro mais conhecido de Londres para contar histórias emocionantes. A história é contada em duas partes: a primeira é uma narrativa ilustrada que começa em 1766 e termina em 1900, enquanto a segunda é uma narrativa escrita que começa em 1990 e termina em 2000. As duas histórias falam de ficção e realidade, e como as pessoas lidam com esses conceitos.',
      path: 'assets/glb/Marvels.glb');

  final cabret = BookModel(
      title: 'A Invenção de Hugo Cabret',
      autor: 'Brian Selznick',
      price: 'R\$ 55,00',
      description:
          'A Invenção de Hugo Cabret é um livro de Brian Selznick que conta a história de um menino órfão chamado Hugo Cabret. Ele vive escondido em uma estação de trem em Paris, onde cuida do funcionamento de gigantescos relógios desde o desaparecimento do seu tio. Após o término de seu trabalho, ele procura consertar uma máquina de aparência humana para desvendar uma mensagem oculta. Para atingir seu objetivo, ele utiliza peças de brinquedos roubados. No entanto, seus planos mudam quando ele é descoberto por Georges, o dono da loja de brinquedos, e sua sobrinha Isabelle. A história é contada em uma narrativa dinâmica que mistura texto e imagem. ',
      path: 'assets/glb/HugoCabret.glb');

  final semFolego = BookModel(
      title: 'Sem Fôlego',
      autor: 'Brian Selznick',
      price: 'R\$ 71,00',
      description:
          'Sem Fôlego é um livro de aventura escrito e ilustrado por Brian Selznick. A história se passa em duas épocas diferentes, 1927 e 1977, e segue as aventuras de Rose e Ben, respectivamente. Rose é uma menina surda que foge de casa para encontrar sua mãe famosa, enquanto Ben, após a morte da mãe, encontra uma pista que o leva a fugir dos tios e atravessar o país em busca de respostas sobre seu pai desconhecido. Ambas as aventuras levam os protagonistas para Nova York, onde suas histórias se entrelaçam. O livro é repleto de lugares e acontecimentos reais por onde passam os personagens fictícios. A história é contada em texto e imagens, com a história de Ben sendo contada em texto e a de Rose apenas com imagens. A mudança de linguagem faz alusão às distinções entre o mundo falado e o silencioso de quem não pode ouvir. ',
      path: 'assets/glb/SemFolego.glb');

  dataList.addAll([marvels, cabret, semFolego]);
  dataList.sort((a, b) => a.title.compareTo(b.title));

  return dataList;
}
