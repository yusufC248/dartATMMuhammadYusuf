class FactorialApp {
  int factorial(int i) {
    if (i <= 1) {
      return 1;
    } else {
      return i * factorial(i - 1);
    }
  }

  void run() {
    var i = 8;
    var is_factorial = factorial(i);
    print("Faktorial dari $i adalah $is_factorial");
  }
}
