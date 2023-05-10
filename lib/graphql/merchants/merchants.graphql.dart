import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$getMerchantsPaginated {
  factory Variables$Query$getMerchantsPaginated({
    int? page,
    int? size,
  }) =>
      Variables$Query$getMerchantsPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getMerchantsPaginated._(this._$data);

  factory Variables$Query$getMerchantsPaginated.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = (l$size as int?);
    }
    return Variables$Query$getMerchantsPaginated._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get size => (_$data['size'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getMerchantsPaginated<
          Variables$Query$getMerchantsPaginated>
      get copyWith => CopyWith$Variables$Query$getMerchantsPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getMerchantsPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getMerchantsPaginated<TRes> {
  factory CopyWith$Variables$Query$getMerchantsPaginated(
    Variables$Query$getMerchantsPaginated instance,
    TRes Function(Variables$Query$getMerchantsPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getMerchantsPaginated;

  factory CopyWith$Variables$Query$getMerchantsPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getMerchantsPaginated;

  TRes call({
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getMerchantsPaginated<TRes>
    implements CopyWith$Variables$Query$getMerchantsPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getMerchantsPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getMerchantsPaginated _instance;

  final TRes Function(Variables$Query$getMerchantsPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getMerchantsPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getMerchantsPaginated<TRes>
    implements CopyWith$Variables$Query$getMerchantsPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getMerchantsPaginated(this._res);

  TRes _res;

  call({
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getMerchantsPaginated {
  Query$getMerchantsPaginated({
    this.merchantsPaginated,
    this.$__typename = 'ServiceQuery',
  });

  factory Query$getMerchantsPaginated.fromJson(Map<String, dynamic> json) {
    final l$merchantsPaginated = json['merchantsPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantsPaginated(
      merchantsPaginated: (l$merchantsPaginated as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getMerchantsPaginated$merchantsPaginated.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getMerchantsPaginated$merchantsPaginated?>?
      merchantsPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$merchantsPaginated = merchantsPaginated;
    _resultData['merchantsPaginated'] =
        l$merchantsPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$merchantsPaginated = merchantsPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$merchantsPaginated == null
          ? null
          : Object.hashAll(l$merchantsPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMerchantsPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$merchantsPaginated = merchantsPaginated;
    final lOther$merchantsPaginated = other.merchantsPaginated;
    if (l$merchantsPaginated != null && lOther$merchantsPaginated != null) {
      if (l$merchantsPaginated.length != lOther$merchantsPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$merchantsPaginated.length; i++) {
        final l$merchantsPaginated$entry = l$merchantsPaginated[i];
        final lOther$merchantsPaginated$entry = lOther$merchantsPaginated[i];
        if (l$merchantsPaginated$entry != lOther$merchantsPaginated$entry) {
          return false;
        }
      }
    } else if (l$merchantsPaginated != lOther$merchantsPaginated) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantsPaginated
    on Query$getMerchantsPaginated {
  CopyWith$Query$getMerchantsPaginated<Query$getMerchantsPaginated>
      get copyWith => CopyWith$Query$getMerchantsPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantsPaginated<TRes> {
  factory CopyWith$Query$getMerchantsPaginated(
    Query$getMerchantsPaginated instance,
    TRes Function(Query$getMerchantsPaginated) then,
  ) = _CopyWithImpl$Query$getMerchantsPaginated;

  factory CopyWith$Query$getMerchantsPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getMerchantsPaginated;

  TRes call({
    List<Query$getMerchantsPaginated$merchantsPaginated?>? merchantsPaginated,
    String? $__typename,
  });
  TRes merchantsPaginated(
      Iterable<Query$getMerchantsPaginated$merchantsPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getMerchantsPaginated$merchantsPaginated<
                      Query$getMerchantsPaginated$merchantsPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getMerchantsPaginated<TRes>
    implements CopyWith$Query$getMerchantsPaginated<TRes> {
  _CopyWithImpl$Query$getMerchantsPaginated(
    this._instance,
    this._then,
  );

  final Query$getMerchantsPaginated _instance;

  final TRes Function(Query$getMerchantsPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? merchantsPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMerchantsPaginated(
        merchantsPaginated: merchantsPaginated == _undefined
            ? _instance.merchantsPaginated
            : (merchantsPaginated
                as List<Query$getMerchantsPaginated$merchantsPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes merchantsPaginated(
          Iterable<Query$getMerchantsPaginated$merchantsPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getMerchantsPaginated$merchantsPaginated<
                          Query$getMerchantsPaginated$merchantsPaginated>?>?)
              _fn) =>
      call(
          merchantsPaginated:
              _fn(_instance.merchantsPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getMerchantsPaginated$merchantsPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getMerchantsPaginated<TRes>
    implements CopyWith$Query$getMerchantsPaginated<TRes> {
  _CopyWithStubImpl$Query$getMerchantsPaginated(this._res);

  TRes _res;

  call({
    List<Query$getMerchantsPaginated$merchantsPaginated?>? merchantsPaginated,
    String? $__typename,
  }) =>
      _res;
  merchantsPaginated(_fn) => _res;
}

const documentNodeQuerygetMerchantsPaginated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getMerchantsPaginated'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'merchantsPaginated'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'size'),
            value: VariableNode(name: NameNode(value: 'size')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'unique_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'active'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'has_validation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'created_at'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getMerchantsPaginated _parserFn$Query$getMerchantsPaginated(
        Map<String, dynamic> data) =>
    Query$getMerchantsPaginated.fromJson(data);
typedef OnQueryComplete$Query$getMerchantsPaginated = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getMerchantsPaginated?,
);

class Options$Query$getMerchantsPaginated
    extends graphql.QueryOptions<Query$getMerchantsPaginated> {
  Options$Query$getMerchantsPaginated({
    String? operationName,
    Variables$Query$getMerchantsPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMerchantsPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getMerchantsPaginated? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$getMerchantsPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetMerchantsPaginated,
          parserFn: _parserFn$Query$getMerchantsPaginated,
        );

  final OnQueryComplete$Query$getMerchantsPaginated? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getMerchantsPaginated
    extends graphql.WatchQueryOptions<Query$getMerchantsPaginated> {
  WatchOptions$Query$getMerchantsPaginated({
    String? operationName,
    Variables$Query$getMerchantsPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMerchantsPaginated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetMerchantsPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getMerchantsPaginated,
        );
}

class FetchMoreOptions$Query$getMerchantsPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getMerchantsPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getMerchantsPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetMerchantsPaginated,
        );
}

extension ClientExtension$Query$getMerchantsPaginated on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getMerchantsPaginated>>
      query$getMerchantsPaginated(
              [Options$Query$getMerchantsPaginated? options]) async =>
          await this.query(options ?? Options$Query$getMerchantsPaginated());
  graphql.ObservableQuery<
      Query$getMerchantsPaginated> watchQuery$getMerchantsPaginated(
          [WatchOptions$Query$getMerchantsPaginated? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getMerchantsPaginated());
  void writeQuery$getMerchantsPaginated({
    required Query$getMerchantsPaginated data,
    Variables$Query$getMerchantsPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetMerchantsPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getMerchantsPaginated? readQuery$getMerchantsPaginated({
    Variables$Query$getMerchantsPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerygetMerchantsPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getMerchantsPaginated.fromJson(result);
  }
}

class Query$getMerchantsPaginated$merchantsPaginated {
  Query$getMerchantsPaginated$merchantsPaginated({
    required this.name,
    required this.id,
    required this.unique_id,
    this.created_at,
    required this.active,
    required this.has_validation,
    this.category,
    this.$__typename = 'Merchant',
  });

  factory Query$getMerchantsPaginated$merchantsPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$unique_id = json['unique_id'];
    final l$created_at = json['created_at'];
    final l$active = json['active'];
    final l$has_validation = json['has_validation'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantsPaginated$merchantsPaginated(
      name: (l$name as String),
      id: (l$id as int),
      unique_id: (l$unique_id as String),
      created_at: (l$created_at as String?),
      active: (l$active as bool),
      has_validation: (l$has_validation as bool),
      category: l$category == null
          ? null
          : Query$getMerchantsPaginated$merchantsPaginated$category.fromJson(
              (l$category as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int id;

  final String unique_id;

  final String? created_at;

  final bool active;

  final bool has_validation;

  final Query$getMerchantsPaginated$merchantsPaginated$category? category;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$has_validation = has_validation;
    _resultData['has_validation'] = l$has_validation;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$unique_id = unique_id;
    final l$created_at = created_at;
    final l$active = active;
    final l$has_validation = has_validation;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$unique_id,
      l$created_at,
      l$active,
      l$has_validation,
      l$category,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMerchantsPaginated$merchantsPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$unique_id = unique_id;
    final lOther$unique_id = other.unique_id;
    if (l$unique_id != lOther$unique_id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$has_validation = has_validation;
    final lOther$has_validation = other.has_validation;
    if (l$has_validation != lOther$has_validation) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantsPaginated$merchantsPaginated
    on Query$getMerchantsPaginated$merchantsPaginated {
  CopyWith$Query$getMerchantsPaginated$merchantsPaginated<
          Query$getMerchantsPaginated$merchantsPaginated>
      get copyWith => CopyWith$Query$getMerchantsPaginated$merchantsPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantsPaginated$merchantsPaginated<TRes> {
  factory CopyWith$Query$getMerchantsPaginated$merchantsPaginated(
    Query$getMerchantsPaginated$merchantsPaginated instance,
    TRes Function(Query$getMerchantsPaginated$merchantsPaginated) then,
  ) = _CopyWithImpl$Query$getMerchantsPaginated$merchantsPaginated;

  factory CopyWith$Query$getMerchantsPaginated$merchantsPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantsPaginated$merchantsPaginated;

  TRes call({
    String? name,
    int? id,
    String? unique_id,
    String? created_at,
    bool? active,
    bool? has_validation,
    Query$getMerchantsPaginated$merchantsPaginated$category? category,
    String? $__typename,
  });
  CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category<TRes>
      get category;
}

class _CopyWithImpl$Query$getMerchantsPaginated$merchantsPaginated<TRes>
    implements CopyWith$Query$getMerchantsPaginated$merchantsPaginated<TRes> {
  _CopyWithImpl$Query$getMerchantsPaginated$merchantsPaginated(
    this._instance,
    this._then,
  );

  final Query$getMerchantsPaginated$merchantsPaginated _instance;

  final TRes Function(Query$getMerchantsPaginated$merchantsPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? unique_id = _undefined,
    Object? created_at = _undefined,
    Object? active = _undefined,
    Object? has_validation = _undefined,
    Object? category = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMerchantsPaginated$merchantsPaginated(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        has_validation: has_validation == _undefined || has_validation == null
            ? _instance.has_validation
            : (has_validation as bool),
        category: category == _undefined
            ? _instance.category
            : (category
                as Query$getMerchantsPaginated$merchantsPaginated$category?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category<TRes>
      get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category.stub(
            _then(_instance))
        : CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category(
            local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Query$getMerchantsPaginated$merchantsPaginated<TRes>
    implements CopyWith$Query$getMerchantsPaginated$merchantsPaginated<TRes> {
  _CopyWithStubImpl$Query$getMerchantsPaginated$merchantsPaginated(this._res);

  TRes _res;

  call({
    String? name,
    int? id,
    String? unique_id,
    String? created_at,
    bool? active,
    bool? has_validation,
    Query$getMerchantsPaginated$merchantsPaginated$category? category,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category<TRes>
      get category =>
          CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category.stub(
              _res);
}

class Query$getMerchantsPaginated$merchantsPaginated$category {
  Query$getMerchantsPaginated$merchantsPaginated$category({
    required this.name,
    required this.id,
    this.created_at,
    this.$__typename = 'MerchantCategory',
  });

  factory Query$getMerchantsPaginated$merchantsPaginated$category.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantsPaginated$merchantsPaginated$category(
      name: (l$name as String),
      id: (l$id as int),
      created_at: (l$created_at as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int id;

  final String? created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$created_at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMerchantsPaginated$merchantsPaginated$category) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantsPaginated$merchantsPaginated$category
    on Query$getMerchantsPaginated$merchantsPaginated$category {
  CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category<
          Query$getMerchantsPaginated$merchantsPaginated$category>
      get copyWith =>
          CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category<
    TRes> {
  factory CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category(
    Query$getMerchantsPaginated$merchantsPaginated$category instance,
    TRes Function(Query$getMerchantsPaginated$merchantsPaginated$category) then,
  ) = _CopyWithImpl$Query$getMerchantsPaginated$merchantsPaginated$category;

  factory CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantsPaginated$merchantsPaginated$category;

  TRes call({
    String? name,
    int? id,
    String? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMerchantsPaginated$merchantsPaginated$category<
        TRes>
    implements
        CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category<TRes> {
  _CopyWithImpl$Query$getMerchantsPaginated$merchantsPaginated$category(
    this._instance,
    this._then,
  );

  final Query$getMerchantsPaginated$merchantsPaginated$category _instance;

  final TRes Function(Query$getMerchantsPaginated$merchantsPaginated$category)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMerchantsPaginated$merchantsPaginated$category(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMerchantsPaginated$merchantsPaginated$category<
        TRes>
    implements
        CopyWith$Query$getMerchantsPaginated$merchantsPaginated$category<TRes> {
  _CopyWithStubImpl$Query$getMerchantsPaginated$merchantsPaginated$category(
      this._res);

  TRes _res;

  call({
    String? name,
    int? id,
    String? created_at,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getMerchantByCategoryPaginated {
  factory Variables$Query$getMerchantByCategoryPaginated({
    int? page,
    int? size,
    int? categoryId,
  }) =>
      Variables$Query$getMerchantByCategoryPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
        if (categoryId != null) r'categoryId': categoryId,
      });

  Variables$Query$getMerchantByCategoryPaginated._(this._$data);

  factory Variables$Query$getMerchantByCategoryPaginated.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = (l$size as int?);
    }
    if (data.containsKey('categoryId')) {
      final l$categoryId = data['categoryId'];
      result$data['categoryId'] = (l$categoryId as int?);
    }
    return Variables$Query$getMerchantByCategoryPaginated._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get size => (_$data['size'] as int?);
  int? get categoryId => (_$data['categoryId'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size;
    }
    if (_$data.containsKey('categoryId')) {
      final l$categoryId = categoryId;
      result$data['categoryId'] = l$categoryId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getMerchantByCategoryPaginated<
          Variables$Query$getMerchantByCategoryPaginated>
      get copyWith => CopyWith$Variables$Query$getMerchantByCategoryPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getMerchantByCategoryPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (_$data.containsKey('categoryId') !=
        other._$data.containsKey('categoryId')) {
      return false;
    }
    if (l$categoryId != lOther$categoryId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$size = size;
    final l$categoryId = categoryId;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('categoryId') ? l$categoryId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getMerchantByCategoryPaginated<TRes> {
  factory CopyWith$Variables$Query$getMerchantByCategoryPaginated(
    Variables$Query$getMerchantByCategoryPaginated instance,
    TRes Function(Variables$Query$getMerchantByCategoryPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getMerchantByCategoryPaginated;

  factory CopyWith$Variables$Query$getMerchantByCategoryPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$getMerchantByCategoryPaginated;

  TRes call({
    int? page,
    int? size,
    int? categoryId,
  });
}

class _CopyWithImpl$Variables$Query$getMerchantByCategoryPaginated<TRes>
    implements CopyWith$Variables$Query$getMerchantByCategoryPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getMerchantByCategoryPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getMerchantByCategoryPaginated _instance;

  final TRes Function(Variables$Query$getMerchantByCategoryPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? size = _undefined,
    Object? categoryId = _undefined,
  }) =>
      _then(Variables$Query$getMerchantByCategoryPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
        if (categoryId != _undefined) 'categoryId': (categoryId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getMerchantByCategoryPaginated<TRes>
    implements CopyWith$Variables$Query$getMerchantByCategoryPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getMerchantByCategoryPaginated(this._res);

  TRes _res;

  call({
    int? page,
    int? size,
    int? categoryId,
  }) =>
      _res;
}

class Query$getMerchantByCategoryPaginated {
  Query$getMerchantByCategoryPaginated({
    this.merchantsByCategoryPaginated,
    this.$__typename = 'ServiceQuery',
  });

  factory Query$getMerchantByCategoryPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$merchantsByCategoryPaginated = json['merchantsByCategoryPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantByCategoryPaginated(
      merchantsByCategoryPaginated: (l$merchantsByCategoryPaginated
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated?>?
      merchantsByCategoryPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$merchantsByCategoryPaginated = merchantsByCategoryPaginated;
    _resultData['merchantsByCategoryPaginated'] =
        l$merchantsByCategoryPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$merchantsByCategoryPaginated = merchantsByCategoryPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$merchantsByCategoryPaginated == null
          ? null
          : Object.hashAll(l$merchantsByCategoryPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMerchantByCategoryPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$merchantsByCategoryPaginated = merchantsByCategoryPaginated;
    final lOther$merchantsByCategoryPaginated =
        other.merchantsByCategoryPaginated;
    if (l$merchantsByCategoryPaginated != null &&
        lOther$merchantsByCategoryPaginated != null) {
      if (l$merchantsByCategoryPaginated.length !=
          lOther$merchantsByCategoryPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$merchantsByCategoryPaginated.length; i++) {
        final l$merchantsByCategoryPaginated$entry =
            l$merchantsByCategoryPaginated[i];
        final lOther$merchantsByCategoryPaginated$entry =
            lOther$merchantsByCategoryPaginated[i];
        if (l$merchantsByCategoryPaginated$entry !=
            lOther$merchantsByCategoryPaginated$entry) {
          return false;
        }
      }
    } else if (l$merchantsByCategoryPaginated !=
        lOther$merchantsByCategoryPaginated) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantByCategoryPaginated
    on Query$getMerchantByCategoryPaginated {
  CopyWith$Query$getMerchantByCategoryPaginated<
          Query$getMerchantByCategoryPaginated>
      get copyWith => CopyWith$Query$getMerchantByCategoryPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantByCategoryPaginated<TRes> {
  factory CopyWith$Query$getMerchantByCategoryPaginated(
    Query$getMerchantByCategoryPaginated instance,
    TRes Function(Query$getMerchantByCategoryPaginated) then,
  ) = _CopyWithImpl$Query$getMerchantByCategoryPaginated;

  factory CopyWith$Query$getMerchantByCategoryPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getMerchantByCategoryPaginated;

  TRes call({
    List<Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated?>?
        merchantsByCategoryPaginated,
    String? $__typename,
  });
  TRes merchantsByCategoryPaginated(
      Iterable<Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated<
                      Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getMerchantByCategoryPaginated<TRes>
    implements CopyWith$Query$getMerchantByCategoryPaginated<TRes> {
  _CopyWithImpl$Query$getMerchantByCategoryPaginated(
    this._instance,
    this._then,
  );

  final Query$getMerchantByCategoryPaginated _instance;

  final TRes Function(Query$getMerchantByCategoryPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? merchantsByCategoryPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMerchantByCategoryPaginated(
        merchantsByCategoryPaginated: merchantsByCategoryPaginated == _undefined
            ? _instance.merchantsByCategoryPaginated
            : (merchantsByCategoryPaginated as List<
                Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes merchantsByCategoryPaginated(
          Iterable<Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated<
                          Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated>?>?)
              _fn) =>
      call(
          merchantsByCategoryPaginated:
              _fn(_instance.merchantsByCategoryPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getMerchantByCategoryPaginated<TRes>
    implements CopyWith$Query$getMerchantByCategoryPaginated<TRes> {
  _CopyWithStubImpl$Query$getMerchantByCategoryPaginated(this._res);

  TRes _res;

  call({
    List<Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated?>?
        merchantsByCategoryPaginated,
    String? $__typename,
  }) =>
      _res;
  merchantsByCategoryPaginated(_fn) => _res;
}

const documentNodeQuerygetMerchantByCategoryPaginated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getMerchantByCategoryPaginated'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'categoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'merchantsByCategoryPaginated'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'size'),
            value: VariableNode(name: NameNode(value: 'size')),
          ),
          ArgumentNode(
            name: NameNode(value: 'categoryId'),
            value: VariableNode(name: NameNode(value: 'categoryId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'unique_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'has_validation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'active'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'created_at'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getMerchantByCategoryPaginated
    _parserFn$Query$getMerchantByCategoryPaginated(Map<String, dynamic> data) =>
        Query$getMerchantByCategoryPaginated.fromJson(data);
typedef OnQueryComplete$Query$getMerchantByCategoryPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getMerchantByCategoryPaginated?,
);

class Options$Query$getMerchantByCategoryPaginated
    extends graphql.QueryOptions<Query$getMerchantByCategoryPaginated> {
  Options$Query$getMerchantByCategoryPaginated({
    String? operationName,
    Variables$Query$getMerchantByCategoryPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMerchantByCategoryPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getMerchantByCategoryPaginated? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$getMerchantByCategoryPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetMerchantByCategoryPaginated,
          parserFn: _parserFn$Query$getMerchantByCategoryPaginated,
        );

  final OnQueryComplete$Query$getMerchantByCategoryPaginated?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getMerchantByCategoryPaginated
    extends graphql.WatchQueryOptions<Query$getMerchantByCategoryPaginated> {
  WatchOptions$Query$getMerchantByCategoryPaginated({
    String? operationName,
    Variables$Query$getMerchantByCategoryPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMerchantByCategoryPaginated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetMerchantByCategoryPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getMerchantByCategoryPaginated,
        );
}

class FetchMoreOptions$Query$getMerchantByCategoryPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getMerchantByCategoryPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getMerchantByCategoryPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetMerchantByCategoryPaginated,
        );
}

extension ClientExtension$Query$getMerchantByCategoryPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getMerchantByCategoryPaginated>>
      query$getMerchantByCategoryPaginated(
              [Options$Query$getMerchantByCategoryPaginated? options]) async =>
          await this
              .query(options ?? Options$Query$getMerchantByCategoryPaginated());
  graphql.ObservableQuery<Query$getMerchantByCategoryPaginated>
      watchQuery$getMerchantByCategoryPaginated(
              [WatchOptions$Query$getMerchantByCategoryPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getMerchantByCategoryPaginated());
  void writeQuery$getMerchantByCategoryPaginated({
    required Query$getMerchantByCategoryPaginated data,
    Variables$Query$getMerchantByCategoryPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetMerchantByCategoryPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getMerchantByCategoryPaginated?
      readQuery$getMerchantByCategoryPaginated({
    Variables$Query$getMerchantByCategoryPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetMerchantByCategoryPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getMerchantByCategoryPaginated.fromJson(result);
  }
}

class Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated {
  Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated({
    required this.name,
    required this.id,
    required this.unique_id,
    required this.has_validation,
    this.created_at,
    required this.active,
    this.category,
    this.$__typename = 'Merchant',
  });

  factory Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$unique_id = json['unique_id'];
    final l$has_validation = json['has_validation'];
    final l$created_at = json['created_at'];
    final l$active = json['active'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated(
      name: (l$name as String),
      id: (l$id as int),
      unique_id: (l$unique_id as String),
      has_validation: (l$has_validation as bool),
      created_at: (l$created_at as String?),
      active: (l$active as bool),
      category: l$category == null
          ? null
          : Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category
              .fromJson((l$category as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int id;

  final String unique_id;

  final bool has_validation;

  final String? created_at;

  final bool active;

  final Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category?
      category;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$has_validation = has_validation;
    _resultData['has_validation'] = l$has_validation;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$unique_id = unique_id;
    final l$has_validation = has_validation;
    final l$created_at = created_at;
    final l$active = active;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$unique_id,
      l$has_validation,
      l$created_at,
      l$active,
      l$category,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$unique_id = unique_id;
    final lOther$unique_id = other.unique_id;
    if (l$unique_id != lOther$unique_id) {
      return false;
    }
    final l$has_validation = has_validation;
    final lOther$has_validation = other.has_validation;
    if (l$has_validation != lOther$has_validation) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated
    on Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated {
  CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated<
          Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated>
      get copyWith =>
          CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated<
    TRes> {
  factory CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated(
    Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated instance,
    TRes Function(
            Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated)
        then,
  ) = _CopyWithImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated;

  factory CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated;

  TRes call({
    String? name,
    int? id,
    String? unique_id,
    bool? has_validation,
    String? created_at,
    bool? active,
    Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category?
        category,
    String? $__typename,
  });
  CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
      TRes> get category;
}

class _CopyWithImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated<
        TRes>
    implements
        CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated<
            TRes> {
  _CopyWithImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated(
    this._instance,
    this._then,
  );

  final Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated
      _instance;

  final TRes Function(
      Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? unique_id = _undefined,
    Object? has_validation = _undefined,
    Object? created_at = _undefined,
    Object? active = _undefined,
    Object? category = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        has_validation: has_validation == _undefined || has_validation == null
            ? _instance.has_validation
            : (has_validation as bool),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        category: category == _undefined
            ? _instance.category
            : (category
                as Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
      TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category
            .stub(_then(_instance))
        : CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category(
            local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated<
        TRes>
    implements
        CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated(
      this._res);

  TRes _res;

  call({
    String? name,
    int? id,
    String? unique_id,
    bool? has_validation,
    String? created_at,
    bool? active,
    Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category?
        category,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
          TRes>
      get category =>
          CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category
              .stub(_res);
}

class Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category {
  Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category({
    required this.name,
    required this.id,
    this.created_at,
    this.$__typename = 'MerchantCategory',
  });

  factory Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category(
      name: (l$name as String),
      id: (l$id as int),
      created_at: (l$created_at as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int id;

  final String? created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$created_at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category
    on Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category {
  CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
          Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category>
      get copyWith =>
          CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
    TRes> {
  factory CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category(
    Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category
        instance,
    TRes Function(
            Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category)
        then,
  ) = _CopyWithImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category;

  factory CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category;

  TRes call({
    String? name,
    int? id,
    String? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
        TRes>
    implements
        CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
            TRes> {
  _CopyWithImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category(
    this._instance,
    this._then,
  );

  final Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category
      _instance;

  final TRes Function(
          Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
        TRes>
    implements
        CopyWith$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category<
            TRes> {
  _CopyWithStubImpl$Query$getMerchantByCategoryPaginated$merchantsByCategoryPaginated$category(
      this._res);

  TRes _res;

  call({
    String? name,
    int? id,
    String? created_at,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getMerchantCategoriesPaginated {
  factory Variables$Query$getMerchantCategoriesPaginated({
    int? page,
    int? size,
  }) =>
      Variables$Query$getMerchantCategoriesPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getMerchantCategoriesPaginated._(this._$data);

  factory Variables$Query$getMerchantCategoriesPaginated.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = (l$size as int?);
    }
    return Variables$Query$getMerchantCategoriesPaginated._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get size => (_$data['size'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getMerchantCategoriesPaginated<
          Variables$Query$getMerchantCategoriesPaginated>
      get copyWith => CopyWith$Variables$Query$getMerchantCategoriesPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getMerchantCategoriesPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getMerchantCategoriesPaginated<TRes> {
  factory CopyWith$Variables$Query$getMerchantCategoriesPaginated(
    Variables$Query$getMerchantCategoriesPaginated instance,
    TRes Function(Variables$Query$getMerchantCategoriesPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getMerchantCategoriesPaginated;

  factory CopyWith$Variables$Query$getMerchantCategoriesPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$getMerchantCategoriesPaginated;

  TRes call({
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getMerchantCategoriesPaginated<TRes>
    implements CopyWith$Variables$Query$getMerchantCategoriesPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getMerchantCategoriesPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getMerchantCategoriesPaginated _instance;

  final TRes Function(Variables$Query$getMerchantCategoriesPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getMerchantCategoriesPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getMerchantCategoriesPaginated<TRes>
    implements CopyWith$Variables$Query$getMerchantCategoriesPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getMerchantCategoriesPaginated(this._res);

  TRes _res;

  call({
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getMerchantCategoriesPaginated {
  Query$getMerchantCategoriesPaginated({
    this.merchantCategoriesPaginated,
    this.$__typename = 'ServiceQuery',
  });

  factory Query$getMerchantCategoriesPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$merchantCategoriesPaginated = json['merchantCategoriesPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantCategoriesPaginated(
      merchantCategoriesPaginated: (l$merchantCategoriesPaginated
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated?>?
      merchantCategoriesPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$merchantCategoriesPaginated = merchantCategoriesPaginated;
    _resultData['merchantCategoriesPaginated'] =
        l$merchantCategoriesPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$merchantCategoriesPaginated = merchantCategoriesPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$merchantCategoriesPaginated == null
          ? null
          : Object.hashAll(l$merchantCategoriesPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMerchantCategoriesPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$merchantCategoriesPaginated = merchantCategoriesPaginated;
    final lOther$merchantCategoriesPaginated =
        other.merchantCategoriesPaginated;
    if (l$merchantCategoriesPaginated != null &&
        lOther$merchantCategoriesPaginated != null) {
      if (l$merchantCategoriesPaginated.length !=
          lOther$merchantCategoriesPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$merchantCategoriesPaginated.length; i++) {
        final l$merchantCategoriesPaginated$entry =
            l$merchantCategoriesPaginated[i];
        final lOther$merchantCategoriesPaginated$entry =
            lOther$merchantCategoriesPaginated[i];
        if (l$merchantCategoriesPaginated$entry !=
            lOther$merchantCategoriesPaginated$entry) {
          return false;
        }
      }
    } else if (l$merchantCategoriesPaginated !=
        lOther$merchantCategoriesPaginated) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantCategoriesPaginated
    on Query$getMerchantCategoriesPaginated {
  CopyWith$Query$getMerchantCategoriesPaginated<
          Query$getMerchantCategoriesPaginated>
      get copyWith => CopyWith$Query$getMerchantCategoriesPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantCategoriesPaginated<TRes> {
  factory CopyWith$Query$getMerchantCategoriesPaginated(
    Query$getMerchantCategoriesPaginated instance,
    TRes Function(Query$getMerchantCategoriesPaginated) then,
  ) = _CopyWithImpl$Query$getMerchantCategoriesPaginated;

  factory CopyWith$Query$getMerchantCategoriesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getMerchantCategoriesPaginated;

  TRes call({
    List<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated?>?
        merchantCategoriesPaginated,
    String? $__typename,
  });
  TRes merchantCategoriesPaginated(
      Iterable<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated<
                      Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getMerchantCategoriesPaginated<TRes>
    implements CopyWith$Query$getMerchantCategoriesPaginated<TRes> {
  _CopyWithImpl$Query$getMerchantCategoriesPaginated(
    this._instance,
    this._then,
  );

  final Query$getMerchantCategoriesPaginated _instance;

  final TRes Function(Query$getMerchantCategoriesPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? merchantCategoriesPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMerchantCategoriesPaginated(
        merchantCategoriesPaginated: merchantCategoriesPaginated == _undefined
            ? _instance.merchantCategoriesPaginated
            : (merchantCategoriesPaginated as List<
                Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes merchantCategoriesPaginated(
          Iterable<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated<
                          Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated>?>?)
              _fn) =>
      call(
          merchantCategoriesPaginated:
              _fn(_instance.merchantCategoriesPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getMerchantCategoriesPaginated<TRes>
    implements CopyWith$Query$getMerchantCategoriesPaginated<TRes> {
  _CopyWithStubImpl$Query$getMerchantCategoriesPaginated(this._res);

  TRes _res;

  call({
    List<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated?>?
        merchantCategoriesPaginated,
    String? $__typename,
  }) =>
      _res;
  merchantCategoriesPaginated(_fn) => _res;
}

const documentNodeQuerygetMerchantCategoriesPaginated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getMerchantCategoriesPaginated'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'merchantCategoriesPaginated'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'size'),
            value: VariableNode(name: NameNode(value: 'size')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'merchants'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'has_validation'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'unique_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'created_at'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'active'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getMerchantCategoriesPaginated
    _parserFn$Query$getMerchantCategoriesPaginated(Map<String, dynamic> data) =>
        Query$getMerchantCategoriesPaginated.fromJson(data);
typedef OnQueryComplete$Query$getMerchantCategoriesPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getMerchantCategoriesPaginated?,
);

class Options$Query$getMerchantCategoriesPaginated
    extends graphql.QueryOptions<Query$getMerchantCategoriesPaginated> {
  Options$Query$getMerchantCategoriesPaginated({
    String? operationName,
    Variables$Query$getMerchantCategoriesPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMerchantCategoriesPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getMerchantCategoriesPaginated? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$getMerchantCategoriesPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetMerchantCategoriesPaginated,
          parserFn: _parserFn$Query$getMerchantCategoriesPaginated,
        );

  final OnQueryComplete$Query$getMerchantCategoriesPaginated?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getMerchantCategoriesPaginated
    extends graphql.WatchQueryOptions<Query$getMerchantCategoriesPaginated> {
  WatchOptions$Query$getMerchantCategoriesPaginated({
    String? operationName,
    Variables$Query$getMerchantCategoriesPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMerchantCategoriesPaginated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetMerchantCategoriesPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getMerchantCategoriesPaginated,
        );
}

class FetchMoreOptions$Query$getMerchantCategoriesPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getMerchantCategoriesPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getMerchantCategoriesPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetMerchantCategoriesPaginated,
        );
}

extension ClientExtension$Query$getMerchantCategoriesPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getMerchantCategoriesPaginated>>
      query$getMerchantCategoriesPaginated(
              [Options$Query$getMerchantCategoriesPaginated? options]) async =>
          await this
              .query(options ?? Options$Query$getMerchantCategoriesPaginated());
  graphql.ObservableQuery<Query$getMerchantCategoriesPaginated>
      watchQuery$getMerchantCategoriesPaginated(
              [WatchOptions$Query$getMerchantCategoriesPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getMerchantCategoriesPaginated());
  void writeQuery$getMerchantCategoriesPaginated({
    required Query$getMerchantCategoriesPaginated data,
    Variables$Query$getMerchantCategoriesPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetMerchantCategoriesPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getMerchantCategoriesPaginated?
      readQuery$getMerchantCategoriesPaginated({
    Variables$Query$getMerchantCategoriesPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetMerchantCategoriesPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getMerchantCategoriesPaginated.fromJson(result);
  }
}

class Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated {
  Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated({
    required this.name,
    required this.id,
    this.merchants,
    this.$__typename = 'MerchantCategory',
  });

  factory Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$merchants = json['merchants'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated(
      name: (l$name as String),
      id: (l$id as int),
      merchants: (l$merchants as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int id;

  final List<
          Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants?>?
      merchants;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$merchants = merchants;
    _resultData['merchants'] = l$merchants?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$merchants = merchants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$merchants == null ? null : Object.hashAll(l$merchants.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$merchants = merchants;
    final lOther$merchants = other.merchants;
    if (l$merchants != null && lOther$merchants != null) {
      if (l$merchants.length != lOther$merchants.length) {
        return false;
      }
      for (int i = 0; i < l$merchants.length; i++) {
        final l$merchants$entry = l$merchants[i];
        final lOther$merchants$entry = lOther$merchants[i];
        if (l$merchants$entry != lOther$merchants$entry) {
          return false;
        }
      }
    } else if (l$merchants != lOther$merchants) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated
    on Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated {
  CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated<
          Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated>
      get copyWith =>
          CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated<
    TRes> {
  factory CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated(
    Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated instance,
    TRes Function(
            Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated)
        then,
  ) = _CopyWithImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated;

  factory CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated;

  TRes call({
    String? name,
    int? id,
    List<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants?>?
        merchants,
    String? $__typename,
  });
  TRes merchants(
      Iterable<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants?>? Function(
              Iterable<
                  CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants<
                      Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants>?>?)
          _fn);
}

class _CopyWithImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated<
        TRes>
    implements
        CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated<
            TRes> {
  _CopyWithImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated(
    this._instance,
    this._then,
  );

  final Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated
      _instance;

  final TRes Function(
      Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? merchants = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        merchants: merchants == _undefined
            ? _instance.merchants
            : (merchants as List<
                Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes merchants(
          Iterable<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants?>? Function(
                  Iterable<
                      CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants<
                          Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants>?>?)
              _fn) =>
      call(
          merchants: _fn(_instance.merchants?.map((e) => e == null
              ? null
              : CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated<
        TRes>
    implements
        CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated(
      this._res);

  TRes _res;

  call({
    String? name,
    int? id,
    List<Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants?>?
        merchants,
    String? $__typename,
  }) =>
      _res;
  merchants(_fn) => _res;
}

class Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants {
  Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants({
    required this.name,
    required this.has_validation,
    required this.unique_id,
    required this.id,
    this.created_at,
    required this.active,
    this.$__typename = 'Merchant',
  });

  factory Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$has_validation = json['has_validation'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$created_at = json['created_at'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants(
      name: (l$name as String),
      has_validation: (l$has_validation as bool),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      created_at: (l$created_at as String?),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final bool has_validation;

  final String unique_id;

  final int id;

  final String? created_at;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$has_validation = has_validation;
    _resultData['has_validation'] = l$has_validation;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$has_validation = has_validation;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$created_at = created_at;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$has_validation,
      l$unique_id,
      l$id,
      l$created_at,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$has_validation = has_validation;
    final lOther$has_validation = other.has_validation;
    if (l$has_validation != lOther$has_validation) {
      return false;
    }
    final l$unique_id = unique_id;
    final lOther$unique_id = other.unique_id;
    if (l$unique_id != lOther$unique_id) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants
    on Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants {
  CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants<
          Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants>
      get copyWith =>
          CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants<
    TRes> {
  factory CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants(
    Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants
        instance,
    TRes Function(
            Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants)
        then,
  ) = _CopyWithImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants;

  factory CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants;

  TRes call({
    String? name,
    bool? has_validation,
    String? unique_id,
    int? id,
    String? created_at,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants<
        TRes>
    implements
        CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants<
            TRes> {
  _CopyWithImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants(
    this._instance,
    this._then,
  );

  final Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants
      _instance;

  final TRes Function(
          Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? has_validation = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? created_at = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        has_validation: has_validation == _undefined || has_validation == null
            ? _instance.has_validation
            : (has_validation as bool),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants<
        TRes>
    implements
        CopyWith$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants<
            TRes> {
  _CopyWithStubImpl$Query$getMerchantCategoriesPaginated$merchantCategoriesPaginated$merchants(
      this._res);

  TRes _res;

  call({
    String? name,
    bool? has_validation,
    String? unique_id,
    int? id,
    String? created_at,
    bool? active,
    String? $__typename,
  }) =>
      _res;
}
