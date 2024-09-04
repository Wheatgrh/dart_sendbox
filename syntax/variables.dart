void main() {
  var a = 1;
  int b = 1;

  const c = 1;
  const int d = 1;
  final int e = 1;

// final и const не отличаются на примитивах, лучше юзать const

  final List<int> arrFinal = [1, 2, 3];
  const List<int> arrConst = [1, 2, 3]; // одно и тоже что пример ниже
  List<int> arrVar = const [1, 2, 3]; // одно и тоже что пример выше

  // arrFinal = [];  Некорректно, так-как мы не можем менять ссылку из-за модификатора final
  // arrConst = []; Некорректно, так-как мы не можем менять ссылку из-за модификатора const

  arrFinal.add(4);
  // arrConst.add(4); Некорректно, так-как мы не можем пушить в const List
  // arrVar.add(4); Некорректно, так-как мы не можем пушить в const List. На самом деле эта ссылка ведет тоже на const List
  // arrFinal = []; Некорректно, так-как модификатор final блочит возможность замены ссылки
  // arrConst = []; Некорректно, так-как const стоит на самой переменной, соответственно подмена ссылки невозможна
  arrVar = []; // Корректно, так-как на переменной нет ни const ни final
  arrVar.add(
      4); // теперь это корректное действие, так-как на List нет модификаторов const или final
  print(arrFinal); // тут будет 4, так как это уже новый List
  // print(arrConst);
  print(arrVar);
}
