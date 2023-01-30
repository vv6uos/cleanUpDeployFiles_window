import 'dart:io';

void cleaner() async {
  //String files , String folderPath
  // Get the system temp directory.
  final myDir = Directory('C:/DE/testdelete/delete');
  var isThere = await myDir.exists();
  print(isThere ? 'exists' : 'non-existent');
  //final file = File('C:\DE\testdelete\delete');

  // 부모폴더(folderPath_)에 접속
  // 부모폴더가 존재하는지 확인하기
  // 부모폴더 내 파일 및 폴더를 리스트화
  var file2 = myDir.listSync();

  bool isEqual = file2[2].uri.path == '/C:/DE/testdelete/delete/one.cshtml.txt';
  // files 의 file 경로를 참고해서 파일 삭제

  //cs파일이 있으면 bin폴더 살리기 
  //그외는 이중 으로 폴더 체크해서 폴더를 삭제하거나 
}
