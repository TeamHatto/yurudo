import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routine_app/core/utils/contextEx.dart';
import 'package:routine_app/repository/category/category.dart';
import 'package:routine_app/repository/category/category_provider.dart';

import '../../design/app_color.dart';
import '../dialog_common.dart';
import 'category_dialog_state.dart';


class CategoryDialog extends ConsumerStatefulWidget {
  final Category? defaultValue;
  final void Function(Category? value) onConfirm;

  const CategoryDialog({
    required this.defaultValue,
    required this.onConfirm,
    super.key,
  });

  @override
  ConsumerState createState() => _CategoryDialogState();
}

class _CategoryDialogState extends ConsumerState<CategoryDialog> {
  late List<Category> categoryList;
  late List<TextEditingController> nameController;
  late final provider;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    categoryList = ref.watch(categoryProvider);
    final selectCategoryNum = widget.defaultValue != null
        ? categoryList.indexOf(widget.defaultValue!)
        : null;
    provider = categoryDialogStateProvider(selectCategoryNum);
    nameController = List.generate(
      categoryList.length,
      (index) => TextEditingController(text: categoryList[index].name),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(provider);

    return DialogCommon(
      title: context.l10n.selectCategory,
      onPressed: () {
        if (state.selectButtonNum != null) {
          widget.onConfirm(ref.read(categoryProvider)[state.selectButtonNum]);
        } else {
          widget.onConfirm(null);
        }
      },
      content: Column(children: [
        for (var i = 0; i < categoryList.length; i++)
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: categoryList[i].color,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: TextField(
                            controller: nameController[i],
                            decoration: InputDecoration(
                              hintText: context.l10n.giveName,
                              hintStyle: const TextStyle(
                                color: AppColor.disableColor,
                                fontSize: 14,
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: 2.0),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              ref
                                  .read(categoryProvider.notifier)
                                  .setCategoryName(i, value);
                            },
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color(0xFF40402F),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(64, 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: (state.selectButtonNum == null ||
                          state.selectButtonNum != i)
                      ? AppColor.secondaryColor
                      : AppColor.primary,
                ),
                onPressed: () {
                  if (state.selectButtonNum == i) {
                    ref.read(provider.notifier).setSelectButtonNum(null);
                  } else {
                    ref.read(provider.notifier).setSelectButtonNum(i);
                  }
                },
                child: Text(
                  context.l10n.selectLabel,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: (state.selectButtonNum == null ||
                              state.selectButtonNum != i)
                          ? AppColor.primary
                          : AppColor.backgroundColor),
                ),
              ),
            ],
          ),
      ]),
    );
  }
}

class CategoryTextField extends ConsumerWidget {
  const CategoryTextField({
    this.category,
    this.onTap,
    super.key,
  });

  final Category? category;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.category),
        const SizedBox(height: 4),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                if (category != null)
                  Transform.translate(
                    offset: const Offset(0, 1),
                    child: Container(
                      width: 8,
                      height: 14,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: category!.color,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                Expanded(
                  child: Text(
                    category?.name ?? context.l10n.nothing,
                    style: context.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: AppColor.fontColor,
          height: 0.5,
          thickness: 0.5,
        ),
      ],
    );
  }
}
