import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:untitled1/screens/home_screen.dart';

import '../bloc/post/post_bloc.dart';
import '../models/requests/create_post_request.dart';
import '../widgets/app_text_field.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  static const routeName = "/addpost";

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  late PostBloc _addPostBloc;
  @override
  Widget build(BuildContext context) {
    _addPostBloc = context.read<PostBloc>();
    final formGroup = _addPostBloc.formgroup;
    return BlocConsumer<PostBloc, PostState>(
      listener: (__, _) {},
      builder: (context, state) {

        return Scaffold(
          appBar: AppBar(
            title: const Text("Add Post"),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  icon: const Icon(Icons.home)
              )
            ],
          ),
          body: Column(
            children: [
            ReactiveForm(
            formGroup: formGroup,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  AppTextField(
                    controlName: 'title',
                    label: "Title",
                    isRequired: true,
                    formGroup: formGroup,
                    nextFocusControlName: "content",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const AppTextField(
                    controlName: 'description',
                    label: "description",
                    maxLines: 5,
                    isRequired: true,
                    hintText: "Write your content here...",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
              ElevatedButton(
                  onPressed: () {
                    final value = formGroup.value;

                    final request = CreatePostRequest.fromFromGroup(value);
                    _addPostBloc.add(Create(request));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddPostScreen()),
                    );
                  },
                  child: const Text("Submit")
                  ),
                ]),
            )
            )
            ],
          ),
        );
      },
    );
  }
}
