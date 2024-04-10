import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';
import 'package:museum_inventory_app_flutter/presentation/screens/common/show_card_dialog.dart';

import '../../../../core/themes.dart';
import '../../../core/colors.dart';
import '../../cubits/owners_application/owners_application_cubit.dart';
import '../common/card_heading.dart';
import '../common/dropdowns/owners_dropdown.dart';
import '../common/file_upload_form_field.dart';
import 'owners_application_item_selection_dialog.dart';

//TODO fix listviewOverflow

class OwnersApplicationCard extends StatefulWidget {
  const OwnersApplicationCard({
    super.key,
    this.ownersApplication,
  });

  final OwnersApplication? ownersApplication;

  @override
  State<OwnersApplicationCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<OwnersApplicationCard> {
  final TextEditingController _fileController = TextEditingController();
  final TextEditingController _ownerController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _directoryName = "owners_application";
  int? selectedOwnerId;
  List<Owner> _owners = [];
  List<Item> _items = [];

  @override
  void initState() {
    if (widget.ownersApplication != null) {
      _fileController.text = widget.ownersApplication!.file;
      _ownerController.text = widget.ownersApplication!.owner!.fio;
      selectedOwnerId = widget.ownersApplication!.ownerId;
    }
    _fetchOwners();
    _fetchItems();
    context.read<OwnersApplicationCubit>().clearItemsSet();
    super.initState();
  }

  void _fetchOwners() async {
    final owners = await context.read<OwnersApplicationCubit>().getOwners();
    setState(() {
      _owners = owners;
    });
  }

  void _fetchItems() async {
    final items = await context.read<OwnersApplicationCubit>().getItems();
    setState(() {
      _items = items;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      constraints: BoxConstraints(
        maxWidth: 450,
        maxHeight: MediaQuery.of(context).size.height * 0.7,
      ),
      padding: const EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CardHeading(
              heading: widget.ownersApplication?.id != null
                  ? "Заявление No${widget.ownersApplication!.id}"
                  : "Новое заявление",
              text: "Новое заявление владельца",
            ),
            const SizedBox(height: 32),
            FileUploadFormField(
              title: "Файл заявления",
              directoryName: _directoryName,
              controller: _fileController,
            ),
            const SizedBox(height: 16),
            OwnersDropdownMenu(
              ownerController: _ownerController,
              owners: _owners,
              onSelected: (id) {
                selectedOwnerId = id;
              },
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        showCardDialog(
                          context,
                          OwnersApplicationItemsSelectionDialog(
                            items: _items,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.add_circle_outline,
                        size: 40,
                      ),
                    ),
                  ),
                  BlocBuilder<OwnersApplicationCubit, OwnersApplicationState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          formChanged: (itemIds) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: itemIds.length,
                              itemBuilder: (_, i) {
                                final id = itemIds.elementAt(i);
                                return OwnerApplicationItemListTile(
                                  items: _items,
                                  id: id,
                                );
                              },
                            );
                          },
                          orElse: () => const SizedBox.shrink());
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate() &&
                    selectedOwnerId != null) {
                  context
                      .read<OwnersApplicationCubit>()
                      .saveNewOwnerApplication(
                          "$_directoryName/${_fileController.text}",
                          selectedOwnerId!);
                  Navigator.pop(context);
                }
              },
              style: Themes().writeSmallButtonStyle(context),
              child: const Text("Записать"),
            ),
          ],
        ),
      ),
    );
  }
}

class OwnerApplicationItemListTile extends StatelessWidget {
  const OwnerApplicationItemListTile({
    super.key,
    required List<Item> items,
    required this.id,
  }) : _items = items;

  final List<Item> _items;
  final int id;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: listTileBackground,
      visualDensity: const VisualDensity(vertical: 0),
      leading: const Icon(Icons.satellite_outlined),
      title: Text(_items.firstWhere((element) => element.id == id).name),
      trailing: IconButton(
        onPressed: () {
          context.read<OwnersApplicationCubit>().removeItemFromApplication(id);
        },
        icon: const Icon(Icons.delete_outline),
      ),
    );
  }
}
