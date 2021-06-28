resource "aws_eip" "lb" {
  instance = aws_instance.test.id
  vpc      = true

  depends_on = [aws_instance.test]

}