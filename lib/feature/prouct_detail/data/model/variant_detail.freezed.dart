// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VariantDetail _$VariantDetailFromJson(Map<String, dynamic> json) {
  return _VariantDetail.fromJson(json);
}

/// @nodoc
mixin _$VariantDetail {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'strike_price')
  int get strikePrice =>
      throw _privateConstructorUsedError; // Ensure this is a field
  @JsonKey(name: 'min_order')
  int get minOrder =>
      throw _privateConstructorUsedError; // Ensure this is a field
  @JsonKey(name: 'max_order')
  int get maxOrder =>
      throw _privateConstructorUsedError; // Ensure this is a field
  @JsonKey(name: 'status')
  bool get status =>
      throw _privateConstructorUsedError; // Ensure this is a field
  @JsonKey(name: 'stock')
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'initial_stock')
  int get initialStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'variants')
  List<VariantDetialsVariant> get variants =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  List<Image> get image => throw _privateConstructorUsedError;

  /// Serializes this VariantDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VariantDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariantDetailCopyWith<VariantDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantDetailCopyWith<$Res> {
  factory $VariantDetailCopyWith(
          VariantDetail value, $Res Function(VariantDetail) then) =
      _$VariantDetailCopyWithImpl<$Res, VariantDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'strike_price') int strikePrice,
      @JsonKey(name: 'min_order') int minOrder,
      @JsonKey(name: 'max_order') int maxOrder,
      @JsonKey(name: 'status') bool status,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'initial_stock') int initialStock,
      @JsonKey(name: 'variants') List<VariantDetialsVariant> variants,
      @JsonKey(name: 'image') List<Image> image});
}

/// @nodoc
class _$VariantDetailCopyWithImpl<$Res, $Val extends VariantDetail>
    implements $VariantDetailCopyWith<$Res> {
  _$VariantDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VariantDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? strikePrice = null,
    Object? minOrder = null,
    Object? maxOrder = null,
    Object? status = null,
    Object? stock = null,
    Object? initialStock = null,
    Object? variants = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      strikePrice: null == strikePrice
          ? _value.strikePrice
          : strikePrice // ignore: cast_nullable_to_non_nullable
              as int,
      minOrder: null == minOrder
          ? _value.minOrder
          : minOrder // ignore: cast_nullable_to_non_nullable
              as int,
      maxOrder: null == maxOrder
          ? _value.maxOrder
          : maxOrder // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      initialStock: null == initialStock
          ? _value.initialStock
          : initialStock // ignore: cast_nullable_to_non_nullable
              as int,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantDetialsVariant>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantDetailImplCopyWith<$Res>
    implements $VariantDetailCopyWith<$Res> {
  factory _$$VariantDetailImplCopyWith(
          _$VariantDetailImpl value, $Res Function(_$VariantDetailImpl) then) =
      __$$VariantDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'strike_price') int strikePrice,
      @JsonKey(name: 'min_order') int minOrder,
      @JsonKey(name: 'max_order') int maxOrder,
      @JsonKey(name: 'status') bool status,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'initial_stock') int initialStock,
      @JsonKey(name: 'variants') List<VariantDetialsVariant> variants,
      @JsonKey(name: 'image') List<Image> image});
}

/// @nodoc
class __$$VariantDetailImplCopyWithImpl<$Res>
    extends _$VariantDetailCopyWithImpl<$Res, _$VariantDetailImpl>
    implements _$$VariantDetailImplCopyWith<$Res> {
  __$$VariantDetailImplCopyWithImpl(
      _$VariantDetailImpl _value, $Res Function(_$VariantDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariantDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? strikePrice = null,
    Object? minOrder = null,
    Object? maxOrder = null,
    Object? status = null,
    Object? stock = null,
    Object? initialStock = null,
    Object? variants = null,
    Object? image = null,
  }) {
    return _then(_$VariantDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      strikePrice: null == strikePrice
          ? _value.strikePrice
          : strikePrice // ignore: cast_nullable_to_non_nullable
              as int,
      minOrder: null == minOrder
          ? _value.minOrder
          : minOrder // ignore: cast_nullable_to_non_nullable
              as int,
      maxOrder: null == maxOrder
          ? _value.maxOrder
          : maxOrder // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      initialStock: null == initialStock
          ? _value.initialStock
          : initialStock // ignore: cast_nullable_to_non_nullable
              as int,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantDetialsVariant>,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantDetailImpl implements _VariantDetail {
  const _$VariantDetailImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'strike_price') required this.strikePrice,
      @JsonKey(name: 'min_order') required this.minOrder,
      @JsonKey(name: 'max_order') required this.maxOrder,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'stock') required this.stock,
      @JsonKey(name: 'initial_stock') required this.initialStock,
      @JsonKey(name: 'variants')
      required final List<VariantDetialsVariant> variants,
      @JsonKey(name: 'image') required final List<Image> image})
      : _variants = variants,
        _image = image;

  factory _$VariantDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantDetailImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'price')
  final int price;
  @override
  @JsonKey(name: 'strike_price')
  final int strikePrice;
// Ensure this is a field
  @override
  @JsonKey(name: 'min_order')
  final int minOrder;
// Ensure this is a field
  @override
  @JsonKey(name: 'max_order')
  final int maxOrder;
// Ensure this is a field
  @override
  @JsonKey(name: 'status')
  final bool status;
// Ensure this is a field
  @override
  @JsonKey(name: 'stock')
  final int stock;
  @override
  @JsonKey(name: 'initial_stock')
  final int initialStock;
  final List<VariantDetialsVariant> _variants;
  @override
  @JsonKey(name: 'variants')
  List<VariantDetialsVariant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  final List<Image> _image;
  @override
  @JsonKey(name: 'image')
  List<Image> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString() {
    return 'VariantDetail(id: $id, price: $price, strikePrice: $strikePrice, minOrder: $minOrder, maxOrder: $maxOrder, status: $status, stock: $stock, initialStock: $initialStock, variants: $variants, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.strikePrice, strikePrice) ||
                other.strikePrice == strikePrice) &&
            (identical(other.minOrder, minOrder) ||
                other.minOrder == minOrder) &&
            (identical(other.maxOrder, maxOrder) ||
                other.maxOrder == maxOrder) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.initialStock, initialStock) ||
                other.initialStock == initialStock) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      price,
      strikePrice,
      minOrder,
      maxOrder,
      status,
      stock,
      initialStock,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_image));

  /// Create a copy of VariantDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantDetailImplCopyWith<_$VariantDetailImpl> get copyWith =>
      __$$VariantDetailImplCopyWithImpl<_$VariantDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantDetailImplToJson(
      this,
    );
  }
}

abstract class _VariantDetail implements VariantDetail {
  const factory _VariantDetail(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'price') required final int price,
          @JsonKey(name: 'strike_price') required final int strikePrice,
          @JsonKey(name: 'min_order') required final int minOrder,
          @JsonKey(name: 'max_order') required final int maxOrder,
          @JsonKey(name: 'status') required final bool status,
          @JsonKey(name: 'stock') required final int stock,
          @JsonKey(name: 'initial_stock') required final int initialStock,
          @JsonKey(name: 'variants')
          required final List<VariantDetialsVariant> variants,
          @JsonKey(name: 'image') required final List<Image> image}) =
      _$VariantDetailImpl;

  factory _VariantDetail.fromJson(Map<String, dynamic> json) =
      _$VariantDetailImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(name: 'strike_price')
  int get strikePrice; // Ensure this is a field
  @override
  @JsonKey(name: 'min_order')
  int get minOrder; // Ensure this is a field
  @override
  @JsonKey(name: 'max_order')
  int get maxOrder; // Ensure this is a field
  @override
  @JsonKey(name: 'status')
  bool get status; // Ensure this is a field
  @override
  @JsonKey(name: 'stock')
  int get stock;
  @override
  @JsonKey(name: 'initial_stock')
  int get initialStock;
  @override
  @JsonKey(name: 'variants')
  List<VariantDetialsVariant> get variants;
  @override
  @JsonKey(name: 'image')
  List<Image> get image;

  /// Create a copy of VariantDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariantDetailImplCopyWith<_$VariantDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
