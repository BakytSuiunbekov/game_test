class Suroo {
  const Suroo({
    required this.text,
    required this.image,
    required this.jooptor,
  });
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  const joop({
    required this.text,
    this.isTrue = false,
  });
  final String text;
  final bool isTrue;
}

List<Suroo> asiaQuestions = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];

const s1 = Suroo(
  text: 'Бишкек',
  image: 'bishkek.jpeg',
  jooptor: [
    joop(text: 'Kyrgyzstan', isTrue: true),
    joop(text: 'Chaina'),
    joop(text: 'Russia'),
    joop(text: 'Kazakstan'),
  ],
);

const s2 = Suroo(
  text: 'Ашхабат',
  image: 'Ashgabat.jpg',
  jooptor: [
    joop(text: 'Карея'),
    joop(text: 'Япщния'),
    joop(text: 'Туркменистан', isTrue: true),
    joop(text: 'Афганистан'),
  ],
);
const s3 = Suroo(
  text: 'Астана',
  image: 'Ashgabat.jpg',
  jooptor: [
    joop(text: 'Афганистан'),
    joop(text: 'Япония'),
    joop(text: 'Туркменистан'),
    joop(text: 'Казакстан', isTrue: true),
  ],
);
const s4 = Suroo(
  text: 'Душанбе',
  image: 'Dushanbe.jpeg',
  jooptor: [
    joop(text: 'Тайланд'),
    joop(text: 'Аравия'),
    joop(text: 'ОАЭ'),
    joop(text: 'Тажикстан', isTrue: true),
  ],
);
const s5 = Suroo(
  text: 'Ню-дели',
  image: 'New-delhi.jpeg',
  jooptor: [
    joop(text: 'Пакистан'),
    joop(text: 'Бангладеш'),
    joop(text: 'Индия', isTrue: true),
    joop(text: 'Малазия'),
  ],
);
const s6 = Suroo(
  text: 'Пекин',
  image: 'Pekin.jpg',
  jooptor: [
    joop(text: 'Кувейт'),
    joop(text: 'Палестина'),
    joop(text: 'Турция'),
    joop(text: 'Китай', isTrue: true),
  ],
);
const s7 = Suroo(
  text: 'Сеул',
  image: 'Seul.jpeg',
  jooptor: [
    joop(text: 'Туштук Карея', isTrue: true),
    joop(text: 'Непал'),
    joop(text: 'Азербайжан'),
    joop(text: 'Китай'),
  ],
);
const s8 = Suroo(
  text: 'Ташкент',
  image: 'Tashkent.jpg',
  jooptor: [
    joop(text: 'Карея'),
    joop(text: 'Озбекстан', isTrue: true),
    joop(text: 'Туркменистан'),
    joop(text: 'Афганистан'),
  ],
);
const s9 = Suroo(
  text: 'Токио',
  image: 'Tokyo.jpeg',
  jooptor: [
    joop(text: 'Карея'),
    joop(text: 'Япония', isTrue: true),
    joop(text: 'Туркменистан'),
    joop(text: 'Ффганистан'),
  ],
);

const s10 = Suroo(
  text: 'Улан батор',
  image: 'Ulaanbaatar.jpeg',
  jooptor: [
    joop(text: 'Турция'),
    joop(text: 'Кыргызстан'),
    joop(text: 'Малазия'),
    joop(text: 'Мoнголия', isTrue: true),
  ],
);
