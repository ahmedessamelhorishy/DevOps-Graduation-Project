resource "aws_ecrpublic_repository" "repo" {
  repository_name = "${var.project_name}-repo"
}