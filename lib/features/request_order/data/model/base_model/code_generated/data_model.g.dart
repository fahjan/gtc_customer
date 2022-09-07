// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      id: json['id'] as int,
      restaurantName: json['restaurant_name'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'id': instance.id,
      'restaurant_name': instance.restaurantName,
      'logo': instance.logo,
    };
