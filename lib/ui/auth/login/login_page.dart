import 'package:auto_route/auto_route.dart';
import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/shared/state/action_state.dart';
import 'package:companyeidc/shared/state/failure.dart';
import 'package:companyeidc/ui/auth/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({
    Key? key,
    this.firstLaunch = false,
  }) : super(key: key);
  final bool firstLaunch;

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late final LoginFormController formController = ref.read(loginFormProvider.notifier);
  @override
  void initState() {
    super.initState();
    formController.form.statusChanged.listen((event) {
      if (formController.state is ActionStateFailure) {
        formController.reset();
      }
    });
    formController.init();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      loginFormProvider,
      (_, ActionState state) {
        state.whenOrNull(
          success: (_) {
            context.popRoute();
          },
        );
      },
    );

    final formState = ref.watch(loginFormProvider);
    String? errorMessage;
    if (formState is ActionStateFailure) {
      if (formState.failure is ResponseFailure) {
        errorMessage = S.of(context).invalidLoginCreds;
      } else {
        errorMessage = S.of(context).somethingWentWrong;
      }
    }

    Map<String, String Function(Object)> validationMapper = {
      ValidationMessage.required: (error) => S.of(context).filedRequired, // Note the typo correction here
      // Assuming you want to use "somethingWentWrong" for email validation errors
      ValidationMessage.email: (error) => S.of(context).somethingWentWrong,
    };




    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).login),
      ),
      body: ReactiveForm(
        formGroup: formController.form,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 24,
                  ),
                  child: Image.asset(
                    Images.logo,
                    width: 160,
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(minHeight: 56),
                  child: (errorMessage != null)
                      ? Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).errorColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          margin: const EdgeInsets.only(
                            bottom: 16,
                          ),
                          child: Center(
                            child: Text(
                              errorMessage,
                              style: TextStyle(
                                color: Theme.of(context).errorColor,
                              ),
                            ),
                          ))
                      : null,
                ),
                ReactiveTextField(
                  formControl: formController.userName,
                  validationMessages: validationMapper,
                  decoration: InputDecoration(
                    hintText: S.of(context).userName,
                  ),
                ),
                const Gap(12),
                ReactiveTextField(
                  formControl: formController.password,
                  obscureText: true,
                  validationMessages: validationMapper,
                  decoration: InputDecoration(
                    hintText: S.of(context).password,
                  ),
                ),
                const Gap(24),
                Builder(builder: (context) {
                  final isValid = ReactiveForm.of(context)!.valid && !formState.isLoading;
                  return ElevatedButton(
                    onPressed: isValid ? formController.submit : null,
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 44),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(S.of(context).login),
                        if (formState.isLoading)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: SizedBox(
                              height: 32,
                              child: LoadingIndicator(
                                indicatorType: Indicator.ballPulseSync,
                                colors: [
                                  Theme.of(context).disabledColor,
                                ],
                                strokeWidth: 3,
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                }),
                const Gap(8),
                if (widget.firstLaunch)
                  OutlinedButton(
                    onPressed: context.popRoute,
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Text(S.of(context).skip),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
