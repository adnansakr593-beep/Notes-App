import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_state.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_buuton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNotesheat extends StatefulWidget {
  const AddNotesheat({super.key});

  @override
  State<AddNotesheat> createState() => _AddNotesheatState();
}

class _AddNotesheatState extends State<AddNotesheat> {
  String? title, subTitle;
  final GlobalKey<FormState> formk = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formk,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 35),

          CustomTextField(
            label: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),

          const SizedBox(height: 25),

          CustomTextField(
            label: 'Content',
            maxlines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),

          const SizedBox(height: 25),

          CustomCirculer(),

          const SizedBox(height: 50),

          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBuuton(
                isloading: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (formk.currentState!.validate()) {
                    formk.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateFormat(
                        'yyyy-MM-dd HH:mm',
                      ).format(DateTime.now()),
                      // ignore: deprecated_member_use
                      color: colors[curentIndex].value,
                    );
                    BlocProvider.of<AddNoteCubit>(
                      context,
                    ).addNote(noteModel, BlocProvider.of<NotesCubit>(context));

                    // BlocProvider.of<AddNoteCubit>(context).addNote(noteModel,);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomCirculer extends StatefulWidget {
  const CustomCirculer({super.key});

  @override
  State<CustomCirculer> createState() => _CustomCirculerState();
}

bool isActive0 = true;
int curentIndex = 0;

List<Color> colors = [
  Color(0xffFFF1E6), 
  Color(0xffEAF4FF), 
  Color(0xffE9F7EF),
  Color(0xffF3ECFF), 
  Color(0xffFFF5F7), 
];


class _CustomCirculerState extends State<CustomCirculer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              

              curentIndex = index;

              setState(() {
                
              });
            },
            child: CustomCircleavatar(
              curentIndex: curentIndex,
              allIndex: index,
            ),
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomCircleavatar extends StatelessWidget {
  CustomCircleavatar({
    super.key,
    required this.curentIndex,
    required this.allIndex,
  });

  int curentIndex;
  int allIndex;

  @override
  Widget build(BuildContext context) {
    bool isSelected = curentIndex == allIndex;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: isSelected ? 48 : 44,
        backgroundColor: isSelected ? Colors.white : Colors.transparent,
        child: CircleAvatar(
          radius: 36,
          backgroundColor: colors[allIndex],
        ),
      ),
    );
  }
}
