output "test_url" {
  value = "${aws_api_gateway_deployment.this.invoke_url}/${local.path_part}?name=minimal&version=0.1.0"
}