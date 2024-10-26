// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) {
  return _ProductDetail.fromJson(json);
}

/// @nodoc
mixin _$ProductDetail {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'strike_price')
  int get strikePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_order')
  int get minOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_order')
  int get maxOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_status')
  bool get variantStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_slug')
  String get categorySlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'variants')
  List<Variant> get variants => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  String? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'initial_stock')
  String? get initialStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'specification')
  List<Specification> get specification => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_details')
  List<VariantDetail> get variantDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  List<Image> get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  int get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favourite')
  bool get isFavourite => throw _privateConstructorUsedError;
  @JsonKey(name: 'commission_status')
  bool get commissionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'commission_type')
  String get commissionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'commission_amount')
  String get commissionAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  int get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_approved')
  bool get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_featured')
  bool get isFeatured => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_published')
  bool get isPublished => throw _privateConstructorUsedError;
  @JsonKey(name: 'unapproved_message')
  String? get unapprovedMessage => throw _privateConstructorUsedError;

  /// Serializes this ProductDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
          ProductDetail value, $Res Function(ProductDetail) then) =
      _$ProductDetailCopyWithImpl<$Res, ProductDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'slug') String slug,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'strike_price') int strikePrice,
      @JsonKey(name: 'min_order') int minOrder,
      @JsonKey(name: 'max_order') int maxOrder,
      @JsonKey(name: 'variant_status') bool variantStatus,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'category_slug') String categorySlug,
      @JsonKey(name: 'status') bool status,
      @JsonKey(name: 'variants') List<Variant> variants,
      @JsonKey(name: 'stock') String? stock,
      @JsonKey(name: 'initial_stock') String? initialStock,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'specification') List<Specification> specification,
      @JsonKey(name: 'variant_details') List<VariantDetail> variantDetails,
      @JsonKey(name: 'image') List<Image> image,
      @JsonKey(name: 'view_count') int viewCount,
      @JsonKey(name: 'is_favourite') bool isFavourite,
      @JsonKey(name: 'commission_status') bool commissionStatus,
      @JsonKey(name: 'commission_type') String commissionType,
      @JsonKey(name: 'commission_amount') String commissionAmount,
      @JsonKey(name: 'average_rating') int averageRating,
      @JsonKey(name: 'is_approved') bool isApproved,
      @JsonKey(name: 'is_featured') bool isFeatured,
      @JsonKey(name: 'is_published') bool isPublished,
      @JsonKey(name: 'unapproved_message') String? unapprovedMessage});
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res, $Val extends ProductDetail>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
    Object? price = null,
    Object? strikePrice = null,
    Object? minOrder = null,
    Object? maxOrder = null,
    Object? variantStatus = null,
    Object? category = null,
    Object? categoryName = null,
    Object? categorySlug = null,
    Object? status = null,
    Object? variants = null,
    Object? stock = freezed,
    Object? initialStock = freezed,
    Object? description = null,
    Object? specification = null,
    Object? variantDetails = null,
    Object? image = null,
    Object? viewCount = null,
    Object? isFavourite = null,
    Object? commissionStatus = null,
    Object? commissionType = null,
    Object? commissionAmount = null,
    Object? averageRating = null,
    Object? isApproved = null,
    Object? isFeatured = null,
    Object? isPublished = null,
    Object? unapprovedMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      variantStatus: null == variantStatus
          ? _value.variantStatus
          : variantStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categorySlug: null == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      initialStock: freezed == initialStock
          ? _value.initialStock
          : initialStock // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      specification: null == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as List<Specification>,
      variantDetails: null == variantDetails
          ? _value.variantDetails
          : variantDetails // ignore: cast_nullable_to_non_nullable
              as List<VariantDetail>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      commissionStatus: null == commissionStatus
          ? _value.commissionStatus
          : commissionStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      commissionType: null == commissionType
          ? _value.commissionType
          : commissionType // ignore: cast_nullable_to_non_nullable
              as String,
      commissionAmount: null == commissionAmount
          ? _value.commissionAmount
          : commissionAmount // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as int,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      unapprovedMessage: freezed == unapprovedMessage
          ? _value.unapprovedMessage
          : unapprovedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailImplCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$$ProductDetailImplCopyWith(
          _$ProductDetailImpl value, $Res Function(_$ProductDetailImpl) then) =
      __$$ProductDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'slug') String slug,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'strike_price') int strikePrice,
      @JsonKey(name: 'min_order') int minOrder,
      @JsonKey(name: 'max_order') int maxOrder,
      @JsonKey(name: 'variant_status') bool variantStatus,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'category_slug') String categorySlug,
      @JsonKey(name: 'status') bool status,
      @JsonKey(name: 'variants') List<Variant> variants,
      @JsonKey(name: 'stock') String? stock,
      @JsonKey(name: 'initial_stock') String? initialStock,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'specification') List<Specification> specification,
      @JsonKey(name: 'variant_details') List<VariantDetail> variantDetails,
      @JsonKey(name: 'image') List<Image> image,
      @JsonKey(name: 'view_count') int viewCount,
      @JsonKey(name: 'is_favourite') bool isFavourite,
      @JsonKey(name: 'commission_status') bool commissionStatus,
      @JsonKey(name: 'commission_type') String commissionType,
      @JsonKey(name: 'commission_amount') String commissionAmount,
      @JsonKey(name: 'average_rating') int averageRating,
      @JsonKey(name: 'is_approved') bool isApproved,
      @JsonKey(name: 'is_featured') bool isFeatured,
      @JsonKey(name: 'is_published') bool isPublished,
      @JsonKey(name: 'unapproved_message') String? unapprovedMessage});
}

/// @nodoc
class __$$ProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res, _$ProductDetailImpl>
    implements _$$ProductDetailImplCopyWith<$Res> {
  __$$ProductDetailImplCopyWithImpl(
      _$ProductDetailImpl _value, $Res Function(_$ProductDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
    Object? price = null,
    Object? strikePrice = null,
    Object? minOrder = null,
    Object? maxOrder = null,
    Object? variantStatus = null,
    Object? category = null,
    Object? categoryName = null,
    Object? categorySlug = null,
    Object? status = null,
    Object? variants = null,
    Object? stock = freezed,
    Object? initialStock = freezed,
    Object? description = null,
    Object? specification = null,
    Object? variantDetails = null,
    Object? image = null,
    Object? viewCount = null,
    Object? isFavourite = null,
    Object? commissionStatus = null,
    Object? commissionType = null,
    Object? commissionAmount = null,
    Object? averageRating = null,
    Object? isApproved = null,
    Object? isFeatured = null,
    Object? isPublished = null,
    Object? unapprovedMessage = freezed,
  }) {
    return _then(_$ProductDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      variantStatus: null == variantStatus
          ? _value.variantStatus
          : variantStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categorySlug: null == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      initialStock: freezed == initialStock
          ? _value.initialStock
          : initialStock // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      specification: null == specification
          ? _value._specification
          : specification // ignore: cast_nullable_to_non_nullable
              as List<Specification>,
      variantDetails: null == variantDetails
          ? _value._variantDetails
          : variantDetails // ignore: cast_nullable_to_non_nullable
              as List<VariantDetail>,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      commissionStatus: null == commissionStatus
          ? _value.commissionStatus
          : commissionStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      commissionType: null == commissionType
          ? _value.commissionType
          : commissionType // ignore: cast_nullable_to_non_nullable
              as String,
      commissionAmount: null == commissionAmount
          ? _value.commissionAmount
          : commissionAmount // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as int,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      unapprovedMessage: freezed == unapprovedMessage
          ? _value.unapprovedMessage
          : unapprovedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailImpl implements _ProductDetail {
  const _$ProductDetailImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'slug') required this.slug,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'strike_price') required this.strikePrice,
      @JsonKey(name: 'min_order') required this.minOrder,
      @JsonKey(name: 'max_order') required this.maxOrder,
      @JsonKey(name: 'variant_status') required this.variantStatus,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'category_slug') required this.categorySlug,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'variants') required final List<Variant> variants,
      @JsonKey(name: 'stock') this.stock,
      @JsonKey(name: 'initial_stock') this.initialStock,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'specification')
      required final List<Specification> specification,
      @JsonKey(name: 'variant_details')
      required final List<VariantDetail> variantDetails,
      @JsonKey(name: 'image') required final List<Image> image,
      @JsonKey(name: 'view_count') required this.viewCount,
      @JsonKey(name: 'is_favourite') required this.isFavourite,
      @JsonKey(name: 'commission_status') required this.commissionStatus,
      @JsonKey(name: 'commission_type') required this.commissionType,
      @JsonKey(name: 'commission_amount') required this.commissionAmount,
      @JsonKey(name: 'average_rating') required this.averageRating,
      @JsonKey(name: 'is_approved') required this.isApproved,
      @JsonKey(name: 'is_featured') required this.isFeatured,
      @JsonKey(name: 'is_published') required this.isPublished,
      @JsonKey(name: 'unapproved_message') this.unapprovedMessage})
      : _variants = variants,
        _specification = specification,
        _variantDetails = variantDetails,
        _image = image;

  factory _$ProductDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'slug')
  final String slug;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'price')
  final int price;
  @override
  @JsonKey(name: 'strike_price')
  final int strikePrice;
  @override
  @JsonKey(name: 'min_order')
  final int minOrder;
  @override
  @JsonKey(name: 'max_order')
  final int maxOrder;
  @override
  @JsonKey(name: 'variant_status')
  final bool variantStatus;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  @JsonKey(name: 'category_slug')
  final String categorySlug;
  @override
  @JsonKey(name: 'status')
  final bool status;
  final List<Variant> _variants;
  @override
  @JsonKey(name: 'variants')
  List<Variant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  @JsonKey(name: 'stock')
  final String? stock;
  @override
  @JsonKey(name: 'initial_stock')
  final String? initialStock;
  @override
  @JsonKey(name: 'description')
  final String description;
  final List<Specification> _specification;
  @override
  @JsonKey(name: 'specification')
  List<Specification> get specification {
    if (_specification is EqualUnmodifiableListView) return _specification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specification);
  }

  final List<VariantDetail> _variantDetails;
  @override
  @JsonKey(name: 'variant_details')
  List<VariantDetail> get variantDetails {
    if (_variantDetails is EqualUnmodifiableListView) return _variantDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variantDetails);
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
  @JsonKey(name: 'view_count')
  final int viewCount;
  @override
  @JsonKey(name: 'is_favourite')
  final bool isFavourite;
  @override
  @JsonKey(name: 'commission_status')
  final bool commissionStatus;
  @override
  @JsonKey(name: 'commission_type')
  final String commissionType;
  @override
  @JsonKey(name: 'commission_amount')
  final String commissionAmount;
  @override
  @JsonKey(name: 'average_rating')
  final int averageRating;
  @override
  @JsonKey(name: 'is_approved')
  final bool isApproved;
  @override
  @JsonKey(name: 'is_featured')
  final bool isFeatured;
  @override
  @JsonKey(name: 'is_published')
  final bool isPublished;
  @override
  @JsonKey(name: 'unapproved_message')
  final String? unapprovedMessage;

  @override
  String toString() {
    return 'ProductDetail(id: $id, slug: $slug, name: $name, price: $price, strikePrice: $strikePrice, minOrder: $minOrder, maxOrder: $maxOrder, variantStatus: $variantStatus, category: $category, categoryName: $categoryName, categorySlug: $categorySlug, status: $status, variants: $variants, stock: $stock, initialStock: $initialStock, description: $description, specification: $specification, variantDetails: $variantDetails, image: $image, viewCount: $viewCount, isFavourite: $isFavourite, commissionStatus: $commissionStatus, commissionType: $commissionType, commissionAmount: $commissionAmount, averageRating: $averageRating, isApproved: $isApproved, isFeatured: $isFeatured, isPublished: $isPublished, unapprovedMessage: $unapprovedMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.strikePrice, strikePrice) ||
                other.strikePrice == strikePrice) &&
            (identical(other.minOrder, minOrder) ||
                other.minOrder == minOrder) &&
            (identical(other.maxOrder, maxOrder) ||
                other.maxOrder == maxOrder) &&
            (identical(other.variantStatus, variantStatus) ||
                other.variantStatus == variantStatus) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categorySlug, categorySlug) ||
                other.categorySlug == categorySlug) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.initialStock, initialStock) ||
                other.initialStock == initialStock) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._specification, _specification) &&
            const DeepCollectionEquality()
                .equals(other._variantDetails, _variantDetails) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.commissionStatus, commissionStatus) ||
                other.commissionStatus == commissionStatus) &&
            (identical(other.commissionType, commissionType) ||
                other.commissionType == commissionType) &&
            (identical(other.commissionAmount, commissionAmount) ||
                other.commissionAmount == commissionAmount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.unapprovedMessage, unapprovedMessage) ||
                other.unapprovedMessage == unapprovedMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        slug,
        name,
        price,
        strikePrice,
        minOrder,
        maxOrder,
        variantStatus,
        category,
        categoryName,
        categorySlug,
        status,
        const DeepCollectionEquality().hash(_variants),
        stock,
        initialStock,
        description,
        const DeepCollectionEquality().hash(_specification),
        const DeepCollectionEquality().hash(_variantDetails),
        const DeepCollectionEquality().hash(_image),
        viewCount,
        isFavourite,
        commissionStatus,
        commissionType,
        commissionAmount,
        averageRating,
        isApproved,
        isFeatured,
        isPublished,
        unapprovedMessage
      ]);

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      __$$ProductDetailImplCopyWithImpl<_$ProductDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailImplToJson(
      this,
    );
  }
}

abstract class _ProductDetail implements ProductDetail {
  const factory _ProductDetail(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'slug') required final String slug,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'price') required final int price,
      @JsonKey(name: 'strike_price') required final int strikePrice,
      @JsonKey(name: 'min_order') required final int minOrder,
      @JsonKey(name: 'max_order') required final int maxOrder,
      @JsonKey(name: 'variant_status') required final bool variantStatus,
      @JsonKey(name: 'category') required final String category,
      @JsonKey(name: 'category_name') required final String categoryName,
      @JsonKey(name: 'category_slug') required final String categorySlug,
      @JsonKey(name: 'status') required final bool status,
      @JsonKey(name: 'variants') required final List<Variant> variants,
      @JsonKey(name: 'stock') final String? stock,
      @JsonKey(name: 'initial_stock') final String? initialStock,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'specification')
      required final List<Specification> specification,
      @JsonKey(name: 'variant_details')
      required final List<VariantDetail> variantDetails,
      @JsonKey(name: 'image') required final List<Image> image,
      @JsonKey(name: 'view_count') required final int viewCount,
      @JsonKey(name: 'is_favourite') required final bool isFavourite,
      @JsonKey(name: 'commission_status') required final bool commissionStatus,
      @JsonKey(name: 'commission_type') required final String commissionType,
      @JsonKey(name: 'commission_amount')
      required final String commissionAmount,
      @JsonKey(name: 'average_rating') required final int averageRating,
      @JsonKey(name: 'is_approved') required final bool isApproved,
      @JsonKey(name: 'is_featured') required final bool isFeatured,
      @JsonKey(name: 'is_published') required final bool isPublished,
      @JsonKey(name: 'unapproved_message')
      final String? unapprovedMessage}) = _$ProductDetailImpl;

  factory _ProductDetail.fromJson(Map<String, dynamic> json) =
      _$ProductDetailImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'slug')
  String get slug;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(name: 'strike_price')
  int get strikePrice;
  @override
  @JsonKey(name: 'min_order')
  int get minOrder;
  @override
  @JsonKey(name: 'max_order')
  int get maxOrder;
  @override
  @JsonKey(name: 'variant_status')
  bool get variantStatus;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'category_slug')
  String get categorySlug;
  @override
  @JsonKey(name: 'status')
  bool get status;
  @override
  @JsonKey(name: 'variants')
  List<Variant> get variants;
  @override
  @JsonKey(name: 'stock')
  String? get stock;
  @override
  @JsonKey(name: 'initial_stock')
  String? get initialStock;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'specification')
  List<Specification> get specification;
  @override
  @JsonKey(name: 'variant_details')
  List<VariantDetail> get variantDetails;
  @override
  @JsonKey(name: 'image')
  List<Image> get image;
  @override
  @JsonKey(name: 'view_count')
  int get viewCount;
  @override
  @JsonKey(name: 'is_favourite')
  bool get isFavourite;
  @override
  @JsonKey(name: 'commission_status')
  bool get commissionStatus;
  @override
  @JsonKey(name: 'commission_type')
  String get commissionType;
  @override
  @JsonKey(name: 'commission_amount')
  String get commissionAmount;
  @override
  @JsonKey(name: 'average_rating')
  int get averageRating;
  @override
  @JsonKey(name: 'is_approved')
  bool get isApproved;
  @override
  @JsonKey(name: 'is_featured')
  bool get isFeatured;
  @override
  @JsonKey(name: 'is_published')
  bool get isPublished;
  @override
  @JsonKey(name: 'unapproved_message')
  String? get unapprovedMessage;

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
