import 'dart:io';

void main() {
  // OpenAPI Generator CLI 실행 명령어
  String command =
      'openapi-generator-cli generate -i http://localhost:8080/api-docs-json -g dart -o ./lib/generated-code/';

  // 명령어 실행
  Process.run('sh', ['-c', command]).then((result) {
    if (result.stdout != null) {
      print('표준 출력:\n${result.stdout}');
    }

    if (result.stderr != null && result.stderr.toString().isNotEmpty) {
      print('표준 오류 출력:\n${result.stderr}');
    }
  }).catchError((error) {
    print('오류 발생: $error');
  });
}
