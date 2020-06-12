import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_item.freezed.dart';

@freezed
abstract class IndexItem with _$IndexItem {
  const factory IndexItem(
      {@required String title,
      @required String description,
      String beforeTitle}) = _IndexItem;

  factory IndexItem.getNewIndexItemFromS(String Function(String) fun) {
    return IndexItem(
        title: fun('title'),
        description: fun('description'),
        beforeTitle: fun('other'));
  }
}
