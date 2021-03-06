resource "aws_ecr_repository" "morse-socket" {
  name = "morse-socket"
}

resource "aws_ecr_lifecycle_policy" "default" {
  repository = "${aws_ecr_repository.morse-socket.name}"
  policy     = "${file("templates/default-lifecycle-policy.json.tpl")}"
}
