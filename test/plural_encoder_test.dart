import 'package:unittest/unittest.dart';

import 'package:inflection/src/plural_encoder.dart';

void main() {
  group("Cardinality plural inflections:", () {
    test("convert", () {
      expect(PLURAL.convert(""), equals(""));

      expect(PLURAL.convert("House"), equals("Houses"));
      expect(PLURAL.convert("house"), equals("houses"));
      expect(PLURAL.convert("dog"), equals("dogs"));

      expect(PLURAL.convert("axis"), equals("axes"));
      expect(PLURAL.convert("testis"), equals("testes"));

      expect(PLURAL.convert("octopus"), equals("octopi"));
      expect(PLURAL.convert("virus"), equals("viri"));
      expect(PLURAL.convert("octopi"), equals("octopi"));
      expect(PLURAL.convert("viri"), equals("viri"));

      expect(PLURAL.convert("alias"), equals("aliases"));
      expect(PLURAL.convert("status"), equals("statuses"));

      expect(PLURAL.convert("bus"), equals("buses"));

      expect(PLURAL.convert("buffalo"), equals("buffaloes"));
      expect(PLURAL.convert("tomato"), equals("tomatoes"));

      expect(PLURAL.convert("ultimatum"), equals("ultimata"));
      expect(PLURAL.convert("pentium"), equals("pentia"));
      expect(PLURAL.convert("ultimata"), equals("ultimata"));
      expect(PLURAL.convert("pentia"), equals("pentia"));

      expect(PLURAL.convert("nemesis"), equals("nemeses"));

      expect(PLURAL.convert("hive"), equals("hives"));

      expect(PLURAL.convert("fly"), equals("flies"));

      expect(PLURAL.convert("fish"), equals("fishes"));
      expect(PLURAL.convert("bench"), equals("benches"));

      expect(PLURAL.convert("matrix"), equals("matrices"));
      expect(PLURAL.convert("vertex"), equals("vertices"));
      expect(PLURAL.convert("index"), equals("indices"));

      expect(PLURAL.convert("mouse"), equals("mice"));
      expect(PLURAL.convert("louse"), equals("lice"));
      expect(PLURAL.convert("mice"), equals("mice"));
      expect(PLURAL.convert("lice"), equals("lice"));

      expect(PLURAL.convert("ox"), equals("oxen"));

      expect(PLURAL.convert("ox"), equals("oxen"));
      expect(PLURAL.convert("oxen"), equals("oxen"));

      expect(PLURAL.convert("quiz"), equals("quizzes"));
    });
  });
}