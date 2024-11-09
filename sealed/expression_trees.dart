sealed class Expr {}

class Const extends Expr {
  final int value;
  Const(this.value);
}

class Add extends Expr {
  final Expr left;
  final Expr right;
  Add(this.left, this.right);
}

class Multiply extends Expr {
  final Expr left;
  final Expr right;
  Multiply(this.left, this.right);
}