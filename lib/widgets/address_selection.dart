import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/screens/add_address_screen.dart';
import 'package:open_fashion/widgets/address_data_flow.dart';
import 'package:open_fashion/widgets/custom_text.dart';
import 'package:open_fashion/widgets/select_container.dart';
import 'package:open_fashion/widgets/address_storge.dart';

class AddressSelection extends StatefulWidget {
  const AddressSelection({super.key});

  @override
  State<AddressSelection> createState() => _AddressSelectionState();
}

class _AddressSelectionState extends State<AddressSelection> {
  dynamic savedAddress;

  @override
  void initState() {
    super.initState();
    _loadSavedAddress();
  }

  Future<void> _loadSavedAddress() async {
    final address = await AddressStorage.getAddress();
    if (address != null) {
      setState(() {
        savedAddress = address;
      });
    }
  }

  void openAddress(context) async {
    final addressData = await Navigator.pushNamed(
      context,
      AddAddressScreen.id,
    );

    if (addressData != null) {
      await AddressStorage.saveAddress(
        addressData as Map<String, dynamic>,
      ); // Add this line
      setState(() {
        savedAddress = addressData;
      });
    }
  }

  void editData() async {
    final addressData = await Navigator.pushNamed(
      context,
      AddAddressScreen.id,
      arguments: savedAddress,
    );

    if (addressData != null) {
      await AddressStorage.saveAddress(
        addressData as Map<String, dynamic>,
      ); // Add this line
      setState(() {
        savedAddress = addressData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Shipping address'.toUpperCase(),
            color: Color(0xff888888),
            size: 14,
          ),
          Gap(15),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: savedAddress != null
                ? GestureDetector(
                    onTap: editData,
                    child: AddressDataFlow(
                      savedAddress: savedAddress,
                    ),
                  )
                : SizedBox.shrink(),
          ),
          const Gap(20),
          savedAddress == null
              ? GestureDetector(
                  onTap: () {
                    openAddress(context);
                  },
                  child: SelectContainer(
                    text: 'Add shipping address',
                    icon: Icons.add,
                    withDefaultSelection: false,
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
