void main() {
  
  Map<int, int> factorials = {};
  for (int i = 1; i <= 5; i++) {
    factorials[i] = factorial(i);
  }

  int jumlah_genap = 0;
  int jumlah_ganjil = 0;

  for (int i = 2; i <= 5; i += 2) {
    jumlah_genap += factorials[i] ?? 0;
  }

  for (int i = 1; i <= 5; i += 2) {
    jumlah_ganjil += factorials[i] ?? 0;
  }

  
  int selisih = jumlah_genap - jumlah_ganjil;

  // Menampilkan hasil
  print("Faktorial Genap (2, 4):");
  for (int i = 2; i <= 5; i += 2) {
    print("Faktorial $i: ${factorials[i]}");
  }
  print("Jumlah faktorial genap: $jumlah_genap");

  print("Faktorial Ganjil (1, 3, 5):");
  for (int i = 1; i <= 5; i += 2) {
    print("Faktorial $i: ${factorials[i]}");
  }
  print("Jumlah faktorial ganjil: $jumlah_ganjil");

  print("Selisih (genap - ganjil): $selisih");
}

int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}
