// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequest _$ProductRequestFromJson(Map<String, dynamic> json) =>
    ProductRequest(
      server_key: json['server_key'] as String,
      user_id: json['user_id'] as String?,
      limit: json['limit'] as String?,
      offset: json['offset'] as String?,
      categoryId: json['categoryId'] as String?,
      keyword: json['keyword'] as String?,
      enabled: json['enabled'] as bool?,
      distance: json['distance'] as String?,
      type: json['type'] as String?,
      product_id: json['product_id'] as String?,
      qty: json['qty'] as String?,
      address_id: json['address_id'] as String?,
    );

Map<String, dynamic> _$ProductRequestToJson(ProductRequest instance) =>
    <String, dynamic>{
      'server_key': instance.server_key,
      'user_id': instance.user_id,
      'limit': instance.limit,
      'categoryId': instance.categoryId,
      'keyword': instance.keyword,
      'distance': instance.distance,
      'offset': instance.offset,
      'type': instance.type,
      'product_id': instance.product_id,
      'qty': instance.qty,
      'address_id': instance.address_id,
      'enabled': instance.enabled,
    };

ProductUpdateRequest _$ProductUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    ProductUpdateRequest(
      server_key: json['server_key'] as String,
      product_id: json['product_id'] as String?,
      product_title: json['product_title'] as String?,
      product_description: json['product_description'] as String?,
      product_location: json['product_location'] as String?,
      product_price: json['product_price'] as String?,
      product_category: json['product_category'] as String?,
      product_type: json['product_type'] as String?,
      currency: json['currency'] as String?,
      deleted_images_ids: json['deleted_images_ids'] as String?,
    );

Map<String, dynamic> _$ProductUpdateRequestToJson(
        ProductUpdateRequest instance) =>
    <String, dynamic>{
      'server_key': instance.server_key,
      'product_id': instance.product_id,
      'product_title': instance.product_title,
      'product_description': instance.product_description,
      'product_location': instance.product_location,
      'product_price': instance.product_price,
      'product_category': instance.product_category,
      'product_type': instance.product_type,
      'currency': instance.currency,
      'deleted_images_ids': instance.deleted_images_ids,
    };
