// import 'package:base_project_flutter/features/features_name/data/repositories/auth_repository_impl.dart';
// import 'package:base_project_flutter/features/features_name/presentation/bloc/auth_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../domain/usecases/sign_in_usecase.dart';


// class SignInPage extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   SignInPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Sign In')),
//       body: BlocProvider(
//         create: (_) => AuthBloc(
//           signIn: SignIn(AuthRepositoryImpl(remoteDataSource: RemoteDataSource(), localDataSource: null)),
//         ),
//         child: BlocListener<AuthBloc, AuthState>(
//           listener: (context, state) {
//             if (state is AuthLoaded) {
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Welcome ${state.user.name}')));
//             } else if (state is AuthError) {
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
//             }
//           },
//           child: BlocBuilder<AuthBloc, AuthState>(
//             builder: (context, state) {
//               if (state is AuthLoading) {
//                 return const Center(child: CircularProgressIndicator());
//               }
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     TextField(
//                       controller: emailController,
//                       decoration: const InputDecoration(labelText: 'Email'),
//                     ),
//                     TextField(
//                       controller: passwordController,
//                       decoration: const InputDecoration(labelText: 'Password'),
//                       obscureText: true,
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {
//                         BlocProvider.of<AuthBloc>(context).add(
//                           SignInEvent(
//                             email: emailController.text,
//                             password: passwordController.text,
//                           ),
//                         );
//                       },
//                       child: const Text('Sign In'),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }