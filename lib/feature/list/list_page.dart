import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routine_app/core/design/app_assets.dart';
import 'package:routine_app/core/design/app_color.dart';
import 'package:routine_app/core/utils/contextEx.dart';

import '../../core/navigation/router.dart';
import '../../core/utils/int_ex.dart';
import '../../repository/category/category_provider.dart';
import '../../repository/todo/todo.dart';
import '../../repository/todo/todo_provider.dart';
import '../home/widget/my_drawer.dart';
import '../taskDetail/task_detail_page_state.dart';
import 'list_page_state.dart';

class ListPage extends ConsumerStatefulWidget {
  const ListPage({
    super.key,
  });

  @override
  ConsumerState createState() => _ListPageState();
}

class _ListPageState extends ConsumerState<ListPage> {
  @override
  Widget build(BuildContext context) {
    List<Todo> todos = ref.watch(todoProvider);

    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: AppColor.buttonSecondary,
      foregroundColor: AppColor.fontColor,
      textStyle: context.textTheme.bodyMedium,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      minimumSize: const Size(0, 36),
    );
    final state = ref.watch(listPageStateProvider);
    switch (state.sortType) {
      case SortType.addDayAsc:
        todos.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
        break;
      case SortType.addDayDesc:
        todos.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
        break;
      case SortType.spanAsc:
        todos.sort((a, b) {
          if (a.span == null) return 1;
          if (b.span == null) return -1;
          return a.span!.compareTo(b.span!);
        });
        break;
      case SortType.spanDesc:
        todos.sort((a, b) {
          if (a.span == null) return -1;
          if (b.span == null) return 1;
          return b.span!.compareTo(a.span!);
        });
        break;
      case SortType.timeAsc:
        todos.sort((a, b) => a.time.compareToEx(b.time));
        break;
      case SortType.timeDesc:
        todos.sort((a, b) => b.time.compareToEx(a.time));
        break;
    }
    if (state.filterType.isNotEmpty) {
      todos = todos
          .where((todo) => state.filterType.contains(todo.categoryId))
          .toList();
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColor.fontColor),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Stack(
                      children: [
                        Positioned(
                          top: 30,
                          child: AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                for (var sort in SortType.values)
                                  _sortItem(sort),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                children: [
                  SvgPicture.asset(AppAssets.sort),
                  const SizedBox(width: 8),
                  Text(context.l10n.sort),
                ],
              ),
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              style: (state.filterType.isEmpty)
                  ? buttonStyle
                  : buttonStyle.copyWith(
                      backgroundColor:
                          const WidgetStatePropertyAll(AppColor.fontColor2),
                      foregroundColor:
                          const WidgetStatePropertyAll(Colors.white),
                    ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Stack(
                      children: [
                        Positioned(
                          top: 30,
                          right: 0,
                          child: _FilterItem(),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.filter,
                    color: state.filterType.isEmpty
                        ? AppColor.fontColor
                        : Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Text(context.l10n.filter),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primary,
          ),
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.newTask);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppAssets.plus,
              ),
              const SizedBox(width: 16),
              Text(
                context.l10n.createNewYurudo,
                style: context.textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    if (state.filterType.isNotEmpty)
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          spacing: 24,
                          children: [
                            for (final cat in state.filterType)
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 6,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      color: ref
                                          .watch(categoryProvider.notifier)
                                          .getColor(cat),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    ref
                                        .watch(categoryProvider.notifier)
                                        .getName(cat),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    const SizedBox(height: 24),
                    Column(
                      children: [
                        for (final todo in todos) _todoItem(todo),
                      ],
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),
          IgnorePointer(
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _todoItem(Todo todo) {
    final categoryColor =
        ref.watch(categoryProvider.notifier).getColor(todo.categoryId);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: IntrinsicHeight(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(
                minHeight: 60,
              ),
              padding: const EdgeInsets.fromLTRB(25, 8, 10, 25),
              child: Text(
                todo.name,
              ),
            ),
            Positioned(
                bottom: 7,
                right: 10,
                child: Text(
                  '${todo.span.toSpanString(context)} / ${todo.time.toTimeString(context)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColor.fontColor3,
                  ),
                )),
            Container(
              width: 12,
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
            ),
            Ink(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRouter.detail,
                    arguments:
                        TaskDetailPageArgs(todo: todo, isCompleted: false),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sortItem(SortType sortType) {
    return RadioListTile<SortType>(
      value: sortType,
      groupValue: ref.watch(listPageStateProvider).sortType,
      title: Text(
        context.l10n.sortType(sortType.value),
        style: TextStyle(
          fontWeight: ref.watch(listPageStateProvider).sortType == sortType
              ? FontWeight.w500
              : FontWeight.w400,
        ),
      ),
      onChanged: (value) {
        ref.read(listPageStateProvider.notifier).setSortType(value!);
        Navigator.pop(context);
      },
    );
  }
}

class _FilterItem extends ConsumerWidget {
  const _FilterItem();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryProvider);
    final state = ref.watch(listPageStateProvider);

    return AlertDialog(
      content: Container(
        constraints: const BoxConstraints(
          maxWidth: 300,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var category in categories)
              CheckboxListTile(
                value: state.filterType.contains(category.id),
                title: Row(
                  children: [
                    Container(
                      width: 6,
                      height: 14,
                      decoration: BoxDecoration(
                        color: category.color,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        category.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: state.filterType.contains(category.id)
                              ? FontWeight.w500
                              : FontWeight.w400,
                          color: AppColor.fontColor,
                        ),
                      ),
                    ),
                  ],
                ),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  if (value!) {
                    ref
                        .read(listPageStateProvider.notifier)
                        .addFilter(category);
                  } else {
                    ref
                        .read(listPageStateProvider.notifier)
                        .removeFilter(category);
                  }
                },
              ),
          ],
        ),
      ),
    );
  }
}
