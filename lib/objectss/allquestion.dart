class Allquestion {
  Allquestion(this.qns, this.ans);
  
  final String qns;
  final List<String> ans;

  List<String> suffeled() {
    final suffledlist=List.of(ans);
    suffledlist.shuffle(); 
    return suffledlist;

  }

}