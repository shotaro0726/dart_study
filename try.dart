main() {
  void errorFunc() {
    try {
      throw Exception('例外です');
    } on Exception catch (e) {
      print(e);
      rethrow;
    } finally {
      print('finaly');
    }
  }

  try {
    errorFunc();
  } catch (e, s) {
    print(s);
  }
}
