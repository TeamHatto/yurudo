import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:routine_app/core/common/categoryDialog/category_dialog.dart';
import 'package:routine_app/core/common/spanDialog/span_dialog.dart';
import 'package:routine_app/core/common/timeDialog/time_dialog.dart';
import 'package:routine_app/core/design/app_color.dart';
import 'package:routine_app/core/design/app_style.dart';
import 'package:routine_app/core/design/app_text_field.dart';
import 'package:routine_app/core/navigation/router.dart';
import 'package:routine_app/core/services/ad_service.dart';
import 'package:routine_app/core/utils/contextEx.dart';
import 'package:routine_app/core/utils/int_ex.dart';

import 'new_task_page_state.dart';

class NewTaskPage extends ConsumerStatefulWidget {
  const NewTaskPage({super.key});

  @override
  ConsumerState<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends ConsumerState<NewTaskPage> {
  final TextEditingController _spanController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final provider = newTaskPageStateProvider;
  late final AdService ad;
  bool _isInitialized = false;
  late final List<String> titleList;
  late final int titleNum;

  @override
  void initState() {
    super.initState();
    ad = AdService();
    ad.adLoad(
      onFinish: () {
        Navigator.popUntil(
          context,
          (route) => route.settings.name == AppRouter.home,
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _spanController.dispose();
    _timeController.dispose();
    _categoryController.dispose();
    _dateController.dispose();
    // ref.invalidate(selectCategoryProvider);
  }

  @override
  Widget build(BuildContext context) {
    final NewTaskPageState state = ref.watch(provider);

    if (!_isInitialized) {
      titleList = [
        context.l10n.titleExample1,
        context.l10n.titleExample2,
        context.l10n.titleExample3,
        context.l10n.titleExample4,
        context.l10n.titleExample5,
        context.l10n.titleExample6,
        context.l10n.titleExample7,
        context.l10n.titleExample8,
        context.l10n.titleExample9,
        context.l10n.titleExample10,
        context.l10n.titleExample11,
        context.l10n.titleExample12,
        context.l10n.titleExample13,
        context.l10n.titleExample14,
        context.l10n.titleExample15,
        context.l10n.titleExample16,
      ];
      titleNum = Random().nextInt(titleList.length);
      _isInitialized = true;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.secondaryColor,
        foregroundColor: AppColor.fontColor,
        title: Text(
          context.l10n.createNewYurudo,
          style: const TextStyle(fontSize: 14),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ElevatedButton(
          style: AppStyle.primaryButton.copyWith(
            backgroundColor: const WidgetStatePropertyAll(AppColor.primary),
          ),
          onPressed: () async {
            ref.read(provider.notifier).onClickCreate(context);
          },
          child: Text(
            context.l10n.create,
            style: context.textTheme.bodyLarge!.copyWith(color: Colors.white),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SegmentedButton<TaskType>(
                  onSelectionChanged: (type) {
                    ref.read(provider.notifier).onChangeTaskType(type.first);
                  },
                  segments: const [
                    ButtonSegment(
                      value: TaskType.recurring,
                      label: Text("繰り返し"), // TODO l10n
                    ),
                    ButtonSegment(value: TaskType.single, label: Text("単発")), // TODO l10n
                  ],
                  selected: {ref.watch(provider).taskType},
                  expandedInsets: const EdgeInsets.symmetric(vertical: 10),
                ),
                const SizedBox(height: 38),
                if (state.hasError)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      state.errorMessage,
                      style: const TextStyle(color: AppColor.emphasis),
                    ),
                  ),
                AppTextField(
                  label: context.l10n.labelTitle,
                  placeholder: "${context.l10n.example}）${titleList[titleNum]}",
                  isRequired: true,
                  onChanged: (value) {
                    ref.read(provider.notifier).setName(value);
                  },
                  maxLines: null,
                ),
                const SizedBox(height: 38),
                Column(
                  children: [
                    if (state.taskType == TaskType.recurring)
                      AppTextField(
                        label: context.l10n.span,
                        placeholder: context.l10n.select,
                        isRequired: true,
                        controller: _spanController,
                        readonly: true,
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SpanDialog(
                                onConfirm: (number, spanType) {
                                  int span = number * spanType.term;
                                  _spanController.text = span.toSpanString(
                                    context,
                                  );
                                  ref.read(provider.notifier).setSpan(span);
                                },
                              );
                            },
                          );
                        },
                      ),
                    if (state.taskType == TaskType.recurring)
                      const SizedBox(height: 38),
                    CategoryTextField(
                      category: state.category,
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return CategoryDialog(
                              defaultValue: state.category,
                              onConfirm: (value) {
                                ref.read(provider.notifier).setCategory(value);
                              },
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 38),
                    AppTextField(
                      label: context.l10n.requireTime,
                      placeholder: context.l10n.select,
                      controller: _timeController,
                      readonly: true,
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        showDialog(
                          context: context,
                          builder:
                              (context) => TimeDialog(
                                onConfirm: (time) {
                                  _timeController.text = time.toTimeString(
                                    context,
                                  );
                                  ref.read(provider.notifier).setTime(time);
                                },
                              ),
                        );
                      },
                    ),
                    const SizedBox(height: 38),
                    AppTextField(
                      label:
                          state.taskType == TaskType.recurring
                              ? context.l10n.firstExpectedDate
                              : context.l10n.expectedDate,
                      placeholder: context.l10n.select,
                      isRequired: true,
                      controller: _dateController,
                      readonly: true,
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        showDatePicker(
                          context: context,
                          helpText: context.l10n.setExpectedDate,
                          initialDate: state.firstDay ?? DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(
                            const Duration(days: 366),
                          ),
                        ).then((date) {
                          if (date != null) {
                            ref.read(provider.notifier).setDate(date);
                            _dateController.text = DateFormat.yMd(
                              context.locale.languageCode,
                            ).format(date);
                          }
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
