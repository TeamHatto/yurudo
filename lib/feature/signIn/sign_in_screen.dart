import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routine_app/core/design/app_color.dart';
import 'package:routine_app/core/utils/contextEx.dart';
import 'package:routine_app/feature/signIn/vo/sign_in_state.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../core/common/alert_dialog_common.dart';
import '../../repository/todo/todo_provider.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var notifier = ref.watch(signInProvider.notifier);
    var state = ref.watch(signInProvider);

    Widget body() {
      if (state.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state.user == null) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                context.l10n.loginForBackup,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SignInButton(
              Buttons.google,
              onPressed: () async {
                try {
                  await notifier.onTapSignIn();
                } on Exception catch (ex) {
                  context.showSnackBar(
                    SnackBar(
                      content: Text(ex.toString()),
                    ),
                  );
                }
              },
            )
          ],
        );
      } else {
        return ListView(
          children: [
            ListTile(
              title: Text(context.l10n.backupData),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialogCommon(
                    title: context.l10n.backup_confirm,
                    content: Text(context.l10n.backup_message),
                    onPositiveButton: () {
                      notifier.onTapBackup().then(
                            (isSuccess) => isSuccess
                                ? context.showSnackBar(
                                    SnackBar(
                                      content: Text(context.l10n.backupSuccess),
                                    ),
                                  )
                                : context.showSnackBar(
                                    SnackBar(
                                      content: Text(context.l10n.backupFailed),
                                    ),
                                  ),
                          );
                    },
                    onNegativeButton: () {},
                  ),
                );
              },
            ),
            ListTile(
              title: Text(context.l10n.restoreData),
              subtitle: Text(context.l10n.restoreInfo),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialogCommon(
                    title: context.l10n.backup_confirm,
                    content: Text(context.l10n.restore_message),
                    onPositiveButton: () {
                      notifier
                          .onTapRestore(
                            refresh: () =>
                                ref.watch(todoProvider.notifier).getAll(),
                          )
                          .then(
                            (isSuccess) => isSuccess
                                ? context.showSnackBar(
                                    SnackBar(
                                      content:
                                          Text(context.l10n.restoreSuccess),
                                    ),
                                  )
                                : context.showSnackBar(
                                    SnackBar(
                                      content: Text(context.l10n.restoreFailed),
                                    ),
                                  ),
                          );
                    },
                    onNegativeButton: () {},
                  ),
                );
              },
            ),
            ListTile(
              title: Text(context.l10n.logout),
              onTap: () {
                notifier.onTapSignOut().then(
                      (value) => context.showSnackBar(
                        SnackBar(
                          content: Text(context.l10n.logoutSuccess),
                        ),
                      ),
                    );
              },
            ),
          ],
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.backup,
          style: context.textTheme.titleMedium,
        ),
        backgroundColor: AppColor.secondaryColor,
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: body(),
    );
  }
}
