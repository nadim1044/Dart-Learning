sealed class Event {}

class ClickEvent extends Event {
  final int buttonId;
  ClickEvent(this.buttonId);
}

class KeyEvent extends Event {
  final int keyCode;
  KeyEvent(this.keyCode);
}