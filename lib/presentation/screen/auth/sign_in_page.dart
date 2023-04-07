// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsell/business/bloc/auth_bloc/signin_cubit.dart';
import 'package:testsell/business/bloc_state.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/core/route/app_route.gr.dart';
import 'package:testsell/core/util/snackbar_util.dart';
import 'package:testsell/domain/form_params/auth/sign_in.dart';
import 'package:testsell/domain/model/user_info.dart';
import 'package:testsell/presentation/shared/custom_button.dart';

import '../../../core/dependencies/dependencies.dart';
import '../../../core/util/constants.dart';
import '../../../core/util/width_constraints.dart';

class SignInPage extends StatefulWidget implements AutoRouteWrapper {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
  
 @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormCubit>(),
      child: this,
    );
  }
}

class _SignInPageState extends State<SignInPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  void initState() {
    _passwordController = TextEditingController();
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _onUserSignInCallBack() {
    if (!_formKey.currentState!.validate()) return;

    final _signInForm = SignInFormParam(
        email: _emailController.text, password: _passwordController.text);
    context.read<SignInFormCubit>().signin(signInFormParam: _signInForm);
  }

  Widget _buildTopSection() {
    return Column(
      children: [
        Image.asset(
          'assets/logo/foodin.png',
          width: Sizing.kSizingMultiple * 20,
        ),
        SizedBox(height: (Sizing.kSizingMultiple).h),
        const Text('Sign into your account'),
      ],
    );
  }

  Widget _buildFormSection() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            _buildPhoneNumberField(),
            const SizedBox(height: Sizing.kSizingMultiple * 1.5),
            _buildPasswordField()
          ],
        ));
  }

  Widget _buildPhoneNumberField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(hintText: 'Email Address'),
      validator: (value) {
        return _emailController.text.isEmpty ? 'email requried' : null;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: _obscurePassword,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
              icon: Icon(_obscurePassword
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded))),
      validator: (value) {
        return _passwordController.text.isEmpty ? 'Password Requried' : null;
      },
    );
  }

  Widget _buildButton() {
    return BlocConsumer<SignInFormCubit,
            BlocState<Failure<ExceptionMessage>, UserInfoModel>>(
        listener: (context, state) {
      state.maybeMap(
          orElse: () => null,
          success: (state) {
            if (state.data.SIGN_IN_SUCCESSFUL) {
              _formKey.currentState!.reset();
              context.router.replaceAll([const TabScreenRoute()]);
            } else {
              SnackBarUtil.snackbarError(context,
                  code: ExceptionCode.UNDEFINED, message: state.data.message);
            }
          },
          error: (state) {
            SnackBarUtil.snackbarError<String>(context,
                code: state.failure.exception.code,
                message: state.failure.exception.message.toString());
          });
    }, builder: (context, state) {
      final _isLoading=state is Loading<Failure<ExceptionMessage>,UserInfoModel>;

      return CustomButton(
          type: ButtonType.regularButton(
              onTap: () =>_onUserSignInCallBack(),
              label: 'Sign in'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: WidthConstraint(context).withHorizontalSymmetricalPadding(
                child: Column(
          children: [
            _buildTopSection(),
            SizedBox(
              height: (Sizing.kSizingMultiple).h,
            ),
            _buildFormSection(),
            SizedBox(height: (Sizing.kSizingMultiple * 5).h),
            _buildButton()
          ],
        ))),
      ),
    );
  }
}
