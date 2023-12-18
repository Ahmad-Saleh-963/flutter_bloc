import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'itemsbloc_event.dart';
part 'itemsbloc_state.dart';

class ItemsblocBloc extends Bloc<ItemsblocEvent, ItemsblocState> {

  int counter = 0 ;

  ItemsblocBloc() : super(ItemsblocInitial()) {
    on<ItemsblocEvent>((event, emit) async{

      print("Starttttttt");
     // emit(ItemsblocLoading());

      /// Geting api
     await Future.delayed(const Duration(seconds: 5)) ;
      counter++;

      emit(ItemsblocSucces());

    });




  }






}
