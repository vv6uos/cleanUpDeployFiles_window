String converter(String worksheet) {
  String output = "";
  List<String> works = worksheet.split('\n');

  String title = "";

  // commit No을 저장하기 위한 리스트
  Set<String> commits = {};
  //파일 path를 저장하기 위한 리스트
  Set<String> files = {};

  for (String wk in works) {
    if (wk.contains("[[")) {
      files.add(wk);
    } else if (wk.contains("rev")) {
      commits.add(wk);
    } else if (wk.contains("#")) {
      if (title == "") {
        title = wk;
      }
    }
  }
  List<String> fileJs = [];
  List<String> fileCshtml = [];
  List<String> fileDll = [];
  List<String> fileSql = [];
  List<String> fileEtc = [];

  files.forEach((String file) {
    if (file.contains(".js")) {
      fileJs.add(file);
    } else if (file.contains(".cshtml")) {
      fileCshtml.add(file);
    } else if (file.contains(".cs")) {
      fileDll.add(file);
    } else if (file.contains(".sql")) {
      fileSql.add(file);
    } else {
      fileEtc.add(file);
    }
  });

  fileJs.sort();
  fileCshtml.sort();
  fileSql.sort();
  fileEtc.sort();

  output = '$title\n\n';

  for (String commit in commits) {
    output += '$commit / ';
  }
  output += "\n\n";

  for (String path in fileJs) {
    output += '$path\n';
  }
  for (String path in fileCshtml) {
    output += '$path\n';
  }
  for (String path in fileEtc) {
    output += '$path\n';
  }
  for (String path in fileDll) {
    output += '$path\n';
  }

  return output;
}
