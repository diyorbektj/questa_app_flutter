class Endpoints {
  /// Current Api Version
  static const _apiVersion = "/api";

  static const _baseAuth = "$_apiVersion/auth";

  static const register = "$_baseAuth/register";
  static const login = "$_baseAuth/login";
  static const loginWithToken = "$_baseAuth/login-with-token";
  static const logout = "$_baseAuth/logout";

  //category
  static const _category = "$_apiVersion/category";
  static const allCategory = "$_category/";

  //questions

  static const _question = "$_apiVersion/question";
  static const questions = "$_question/category/3";
  static const checkQuestion = "$_question/check";

  /// Note
  static const _baseNote = "$_apiVersion/note";

  static const noteGetSingle = "$_baseNote/";
  static const noteGetMany = _baseNote;
  static const noteCreate = _baseNote;
  static const noteUpdate = "$_baseNote/";
  static const noteDeleteSingle = "$_baseNote/";
}
