import 'dart:io';

main(List<String> arguments) {
  // configure directory path
  Directory dir = Directory.current;

  // create file if not exists + empty its content
  File file = new File(dir.path + '/myfile.txt');
  file.deleteSync();

  //write onto file
  for(int i =0; i < 5; i++) {
    file.writeAsStringSync('Hello World ${i+1}\n', mode: FileMode.append);

    // Console content check
    print('Hello World ${i+1}\n');
  }
}
