import 'package:apple_store/core/router/app_router.dart';
import 'package:apple_store/data/models/requests/address_request_model.dart';
import 'package:apple_store/data/models/responses/address_response_model.dart';
import 'package:apple_store/data/models/responses/city_response_model.dart';
import 'package:apple_store/data/models/responses/province_response_model.dart';
import 'package:apple_store/data/models/responses/subdistrict_response_model.dart';
import 'package:apple_store/presentation/address/bloc/add_address/add_address_bloc.dart';
import 'package:apple_store/presentation/address/bloc/city/city_bloc.dart';
import 'package:apple_store/presentation/address/bloc/province/province_bloc.dart';
import 'package:apple_store/presentation/address/bloc/subdistrict/subdistrict_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/custom_dropdown.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/components/spaces.dart';

class EditAddressPage extends StatefulWidget {
  final Address data;
  const EditAddressPage({super.key, required this.data});

  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  @override
  Widget build(BuildContext context) {
    final fullNameController = TextEditingController(text: widget.data.name);
    final addressController =
        TextEditingController(text: widget.data.fullAddress);
    final villageController = TextEditingController(text: widget.data.village);
    final zipCodeController =
        TextEditingController(text: widget.data.postalCode);
    final phoneNumberController =
        TextEditingController(text: widget.data.phone);

    Province selectedProvince = Province(
      provinceId: widget.data.provId,
      province: '',
    );

    City selectedCity = City(
      cityId: widget.data.cityId,
    );

    Subdistrict selectedSubDistrict = Subdistrict(
      subdistrictId: widget.data.districtId,
    );

    @override
    void initState() {
      context.read<ProvinceBloc>().add(const ProvinceEvent.getProvinces());
      super.initState();
    }

    @override
    void dispose() {
      fullNameController.dispose();
      addressController.dispose();
      villageController.dispose();
      zipCodeController.dispose();
      phoneNumberController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Adress'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          CustomTextField(
            controller: fullNameController,
            label: 'Nama',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: addressController,
            label: 'Alamat Lengkap',
          ),
          const SpaceHeight(24.0),
          BlocBuilder<ProvinceBloc, ProvinceState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (provinces) {
                  selectedProvince = provinces.first;
                  return CustomDropdown<Province>(
                    value: selectedProvince,
                    items: provinces,
                    label: 'Provinsi',
                    onChanged: (value) {
                      setState(() {
                        selectedProvince = value!;
                        context.read<CityBloc>().add(
                              CityEvent.getCitiesByProvince(
                                selectedProvince.provinceId!,
                              ),
                            );
                      });
                    },
                  );
                },
              );
            },
          ),
          const SpaceHeight(24.0),
          BlocBuilder<CityBloc, CityState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return CustomDropdown(
                    value: '-',
                    items: const ['-'],
                    label: 'Kota/Kabupaten',
                    onChanged: (value) {},
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (cities) {
                  selectedCity = cities.first;
                  return CustomDropdown<City>(
                    value: selectedCity,
                    items: cities,
                    label: 'Kota/Kabupaten',
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value!;
                        context.read<SubdistrictBloc>().add(
                              SubdistrictEvent.getSubdistrictsByCity(
                                selectedCity.cityId!,
                              ),
                            );
                      });
                    },
                  );
                },
              );
            },
          ),
          const SpaceHeight(24.0),
          BlocBuilder<SubdistrictBloc, SubdistrictState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return CustomDropdown(
                    value: '-',
                    items: const ['-'],
                    label: 'Kecamatan',
                    onChanged: (value) {},
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (subdistricts) {
                  selectedSubDistrict = subdistricts.first;
                  return CustomDropdown<Subdistrict>(
                    value: selectedSubDistrict,
                    items: subdistricts,
                    label: 'Kecamatan',
                    onChanged: (value) {
                      setState(() {
                        selectedSubDistrict = value!;
                      });
                    },
                  );
                },
              );
            },
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: villageController,
            label: 'Desa / Kelurahan',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: zipCodeController,
            label: 'Kode Pos',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: phoneNumberController,
            label: 'No Handphone',
          ),
          const SpaceHeight(24.0),
          BlocConsumer<AddAddressBloc, AddAddressState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loaded: () {
                  context.goNamed(
                    RouteConstants.address,
                    pathParameters: PathParameters(
                      rootTab: RootTab.order,
                    ).toMap(),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Button.filled(
                    onPressed: () {
                      context.read<AddAddressBloc>().add(
                            AddAddressEvent.addAddress(
                              addressRequestModel: AddressRequestModel(
                                name: fullNameController.text,
                                fullAddress: addressController.text,
                                provId: selectedProvince.provinceId!,
                                cityId: selectedCity.cityId!,
                                districtId: selectedSubDistrict.subdistrictId!,
                                postalCode: zipCodeController.text,
                                phone: phoneNumberController.text,
                                isDefault: 0,
                              ),
                            ),
                          );
                    },
                    label: 'Tambah Alamat',
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
