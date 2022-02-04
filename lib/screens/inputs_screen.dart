import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Roger',
      'last_name': 'Espinoza',
      'email': 'roger_espinoza@mail.com',
      'password': '1234',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Nombre',
                helperText: 'Nombre del usuario',
                formValues: formValues,
                formProperty: 'first_name',
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: 'Apellido',
                helperText: 'Apellido del usuario',
                formValues: formValues,
                formProperty: 'last_name',
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: 'Correo',
                helperText: 'Correo del usuario',
                keyboardType: TextInputType.emailAddress,
                formValues: formValues,
                formProperty: 'email',
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: 'Contrasena',
                helperText: 'Contrasena del usuario',
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                formValues: formValues,
                formProperty: 'password',
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField<String>(
                value: 'Admin',
                items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(
                      value: 'Superuser', child: Text('Superuser')),
                  DropdownMenuItem(
                      value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem(
                      value: 'Jr. Developer', child: Text('Jr. Developer')),
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text('Guardar'),
                  ),
                ),
                onPressed: () {
                  // dismiss keyboard tiene error despues no hay como usar dropdawn
                  // FocusScope.of(context).requestFocus(FocusNode());
                  final FormState? state1 = myFormKey.currentState;
                  if (state1 != null) {
                    // bool? validation = state1.validate();
                    if (!state1.validate()) {
                      print('wrong formulate');
                      return;
                    }
                  }

                  print(formValues);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomInputField extends StatelessWidget {
//   const CustomInputField({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//         autofocus: true,
//         // initialValue: 'Roger Espinoza',
//         textCapitalization: TextCapitalization.words,
//         validator: (value) {
//           if (value == null) {
//             return 'Este campo es requerido';
//           } else {
//             return value.length < 3 ? 'Minimo de 3 letras' : null;
//           }
//         },
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         decoration: const InputDecoration(
//           hintText: 'Nombre del usuario',
//           labelText: 'Nombre',
//           helperText: 'Solo letras',
//           // prefixIcon: Icon(Icons.verified_user_outlined),
//           suffixIcon: Icon(Icons.group_outlined),
//           icon: Icon(Icons.assignment_ind_outlined),
//           // focusedBorder: OutlineInputBorder(
//           //     borderSide: BorderSide(color: Colors.green)),
//           // border: OutlineInputBorder(
//           //     borderRadius: BorderRadius.only(
//           //         bottomLeft: Radius.circular(10),
//           //         topRight: Radius.circular(10)))
//         ));
//   }
// }
