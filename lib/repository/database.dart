
class Database {

  bool created = true;

  Future<bool> createDatabase() async {
    await Future.delayed( Duration(milliseconds: 1000));
    this.created = true;
    return created;
  }

}
