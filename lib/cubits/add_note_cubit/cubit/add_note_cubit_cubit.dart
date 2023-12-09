import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_2/presentation/resources/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) {}
}
