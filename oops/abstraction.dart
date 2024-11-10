abstract class Car {
  void accelerator();

  void speedBreak();

  void displaySpeed(int speed) {
    print('Speed : $speed');
  }
}

class BMW extends Car {
  int speed = 0;

  @override
  void accelerator() {
    speed++;
  }

  @override
  void speedBreak() {
    speed--;
  }
}

void main() {
  BMW bmw = BMW();
  bmw.accelerator();
  bmw.accelerator();
  bmw.accelerator();
  bmw.speedBreak();
  bmw.displaySpeed(bmw.speed);
}
