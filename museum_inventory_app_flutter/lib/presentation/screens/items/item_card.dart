import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../core/themes.dart';
import '../../cubits/items_list/items_list_cubit.dart';
import '../common/card_heading.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.item,
  });

  final Item? item;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _integrityController = TextEditingController();
  final TextEditingController _appearanceController = TextEditingController();
  final TextEditingController _originController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    if (widget.item != null) {
      _titleController.text = widget.item!.name;
      _integrityController.text = widget.item!.integrity ?? "";
      _appearanceController.text = widget.item!.appearance ?? "";
      _originController.text = widget.item!.origin ?? "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      width: 745,
      height: 520,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardHeading(
            heading: widget.item?.name,
            text: "Новый предмет",
          ),
          const SizedBox(
            height: 32,
          ),
          Form(
              key: _formKey,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 96 - 24),
                width: 360,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _titleController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration:
                          Themes().normalTextInputDecoration("Наименование"),
                      validator: (value) {
                        return _titleController.text.isEmpty
                            ? "Заполните поле"
                            : null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _integrityController,
                      decoration:
                          Themes().normalTextInputDecoration("Сохранность"),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _appearanceController,
                      decoration:
                          Themes().normalTextInputDecoration("Внешний вид"),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _originController,
                      decoration:
                          Themes().normalTextInputDecoration("Происхождение"),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              )),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 96 - 24),
              child: ElevatedButton(
                onPressed: () {
                  final newItem = Item(
                    id: widget.item?.id,
                    name: _titleController.text,
                    integrity: _integrityController.text,
                    appearance: _appearanceController.text,
                    origin: _originController.text,
                  );
                  context.read<ItemsListCubit>().addOrUpdateItem(newItem);
                  Navigator.pop(context);
                },
                style: Themes().writeButtonStyle(context),
                child: const Text("Записать"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
