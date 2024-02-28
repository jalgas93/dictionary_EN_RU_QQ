
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalgasssss/modules/dashboard/bloc/local_event.dart';
import 'package:jalgasssss/modules/dashboard/bloc/local_state.dart';

class LocalBloc extends Bloc<LocalEvent,LocalState>{

  LocalBloc():super(InitialLocal());

  @override
  Stream<LocalState> mapEventToState(LocalEvent event)async*{

    if(event is LocalLanguage){
      yield LoadingLocal();
      try{
           yield SuccessLocal(locale: event.local_lang);
      }catch(e){
        yield ErrorLocal(exception: e);
      }
    }

  }
}