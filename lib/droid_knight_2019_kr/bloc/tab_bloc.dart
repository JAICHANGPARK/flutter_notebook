

import 'package:flutter_notebook/droid_knight_2019_kr/bloc/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class TabBloc implements BlocBase{
  final _bottomTab = BehaviorSubject<int>();
  Observable<int> get $bottomTab => _bottomTab.stream;


  TabBloc(){
    _bottomTab.add(0);
  }

  void changeBottomTab(int index){
    print(index);
    _bottomTab.add(index);
  }
  @override
  void dispose() {
  
  }

}