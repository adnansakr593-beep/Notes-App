import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_state.dart';
import 'package:notes_app/widgets/add_note.dart';

class ShowModelCheat extends StatefulWidget {
  const ShowModelCheat({super.key});

  @override
  State<ShowModelCheat> createState() => _ShowModelCheatState();
}

class _ShowModelCheatState extends State<ShowModelCheat> {
  final GlobalKey<FormState> formk = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFaluier) {
              // ignore: avoid_print
              print({state.errmessage});
            }
            if (state is AddNoteSucss) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: SingleChildScrollView(child: AddNotesheat()),
            );
          },
        ),
      ),
    );
  }
}
