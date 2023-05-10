import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$getBanksPaginated {
  factory Variables$Query$getBanksPaginated({
    int? page,
    int? size,
  }) =>
      Variables$Query$getBanksPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getBanksPaginated._(this._$data);

  factory Variables$Query$getBanksPaginated.fromJson(
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
    return Variables$Query$getBanksPaginated._(result$data);
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

  CopyWith$Variables$Query$getBanksPaginated<Variables$Query$getBanksPaginated>
      get copyWith => CopyWith$Variables$Query$getBanksPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getBanksPaginated) ||
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

abstract class CopyWith$Variables$Query$getBanksPaginated<TRes> {
  factory CopyWith$Variables$Query$getBanksPaginated(
    Variables$Query$getBanksPaginated instance,
    TRes Function(Variables$Query$getBanksPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getBanksPaginated;

  factory CopyWith$Variables$Query$getBanksPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getBanksPaginated;

  TRes call({
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getBanksPaginated<TRes>
    implements CopyWith$Variables$Query$getBanksPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getBanksPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getBanksPaginated _instance;

  final TRes Function(Variables$Query$getBanksPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getBanksPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getBanksPaginated<TRes>
    implements CopyWith$Variables$Query$getBanksPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getBanksPaginated(this._res);

  TRes _res;

  call({
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getBanksPaginated {
  Query$getBanksPaginated({
    this.banksPaginated,
    this.$__typename = 'BankQuery',
  });

  factory Query$getBanksPaginated.fromJson(Map<String, dynamic> json) {
    final l$banksPaginated = json['banksPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getBanksPaginated(
      banksPaginated: (l$banksPaginated as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getBanksPaginated$banksPaginated.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getBanksPaginated$banksPaginated?>? banksPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$banksPaginated = banksPaginated;
    _resultData['banksPaginated'] =
        l$banksPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$banksPaginated = banksPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$banksPaginated == null
          ? null
          : Object.hashAll(l$banksPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getBanksPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$banksPaginated = banksPaginated;
    final lOther$banksPaginated = other.banksPaginated;
    if (l$banksPaginated != null && lOther$banksPaginated != null) {
      if (l$banksPaginated.length != lOther$banksPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$banksPaginated.length; i++) {
        final l$banksPaginated$entry = l$banksPaginated[i];
        final lOther$banksPaginated$entry = lOther$banksPaginated[i];
        if (l$banksPaginated$entry != lOther$banksPaginated$entry) {
          return false;
        }
      }
    } else if (l$banksPaginated != lOther$banksPaginated) {
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

extension UtilityExtension$Query$getBanksPaginated on Query$getBanksPaginated {
  CopyWith$Query$getBanksPaginated<Query$getBanksPaginated> get copyWith =>
      CopyWith$Query$getBanksPaginated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getBanksPaginated<TRes> {
  factory CopyWith$Query$getBanksPaginated(
    Query$getBanksPaginated instance,
    TRes Function(Query$getBanksPaginated) then,
  ) = _CopyWithImpl$Query$getBanksPaginated;

  factory CopyWith$Query$getBanksPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBanksPaginated;

  TRes call({
    List<Query$getBanksPaginated$banksPaginated?>? banksPaginated,
    String? $__typename,
  });
  TRes banksPaginated(
      Iterable<Query$getBanksPaginated$banksPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getBanksPaginated$banksPaginated<
                      Query$getBanksPaginated$banksPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getBanksPaginated<TRes>
    implements CopyWith$Query$getBanksPaginated<TRes> {
  _CopyWithImpl$Query$getBanksPaginated(
    this._instance,
    this._then,
  );

  final Query$getBanksPaginated _instance;

  final TRes Function(Query$getBanksPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? banksPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBanksPaginated(
        banksPaginated: banksPaginated == _undefined
            ? _instance.banksPaginated
            : (banksPaginated
                as List<Query$getBanksPaginated$banksPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes banksPaginated(
          Iterable<Query$getBanksPaginated$banksPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getBanksPaginated$banksPaginated<
                          Query$getBanksPaginated$banksPaginated>?>?)
              _fn) =>
      call(
          banksPaginated: _fn(_instance.banksPaginated?.map((e) => e == null
              ? null
              : CopyWith$Query$getBanksPaginated$banksPaginated(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getBanksPaginated<TRes>
    implements CopyWith$Query$getBanksPaginated<TRes> {
  _CopyWithStubImpl$Query$getBanksPaginated(this._res);

  TRes _res;

  call({
    List<Query$getBanksPaginated$banksPaginated?>? banksPaginated,
    String? $__typename,
  }) =>
      _res;
  banksPaginated(_fn) => _res;
}

const documentNodeQuerygetBanksPaginated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getBanksPaginated'),
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
        name: NameNode(value: 'banksPaginated'),
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
            name: NameNode(value: 'name'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
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
Query$getBanksPaginated _parserFn$Query$getBanksPaginated(
        Map<String, dynamic> data) =>
    Query$getBanksPaginated.fromJson(data);
typedef OnQueryComplete$Query$getBanksPaginated = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getBanksPaginated?,
);

class Options$Query$getBanksPaginated
    extends graphql.QueryOptions<Query$getBanksPaginated> {
  Options$Query$getBanksPaginated({
    String? operationName,
    Variables$Query$getBanksPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getBanksPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getBanksPaginated? onComplete,
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
                        : _parserFn$Query$getBanksPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetBanksPaginated,
          parserFn: _parserFn$Query$getBanksPaginated,
        );

  final OnQueryComplete$Query$getBanksPaginated? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getBanksPaginated
    extends graphql.WatchQueryOptions<Query$getBanksPaginated> {
  WatchOptions$Query$getBanksPaginated({
    String? operationName,
    Variables$Query$getBanksPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getBanksPaginated? typedOptimisticResult,
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
          document: documentNodeQuerygetBanksPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getBanksPaginated,
        );
}

class FetchMoreOptions$Query$getBanksPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getBanksPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getBanksPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetBanksPaginated,
        );
}

extension ClientExtension$Query$getBanksPaginated on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getBanksPaginated>> query$getBanksPaginated(
          [Options$Query$getBanksPaginated? options]) async =>
      await this.query(options ?? Options$Query$getBanksPaginated());
  graphql.ObservableQuery<Query$getBanksPaginated> watchQuery$getBanksPaginated(
          [WatchOptions$Query$getBanksPaginated? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getBanksPaginated());
  void writeQuery$getBanksPaginated({
    required Query$getBanksPaginated data,
    Variables$Query$getBanksPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetBanksPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getBanksPaginated? readQuery$getBanksPaginated({
    Variables$Query$getBanksPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerygetBanksPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getBanksPaginated.fromJson(result);
  }
}

class Query$getBanksPaginated$banksPaginated {
  Query$getBanksPaginated$banksPaginated({
    required this.id,
    required this.unique_id,
    this.created_at,
    required this.active,
    required this.name,
    this.category,
    this.$__typename = 'FinancialInstitution',
  });

  factory Query$getBanksPaginated$banksPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$unique_id = json['unique_id'];
    final l$created_at = json['created_at'];
    final l$active = json['active'];
    final l$name = json['name'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Query$getBanksPaginated$banksPaginated(
      id: (l$id as int),
      unique_id: (l$unique_id as String),
      created_at: (l$created_at as String?),
      active: (l$active as bool),
      name: (l$name as String),
      category: l$category == null
          ? null
          : Query$getBanksPaginated$banksPaginated$category.fromJson(
              (l$category as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String unique_id;

  final String? created_at;

  final bool active;

  final String name;

  final Query$getBanksPaginated$banksPaginated$category? category;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$unique_id = unique_id;
    final l$created_at = created_at;
    final l$active = active;
    final l$name = name;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$unique_id,
      l$created_at,
      l$active,
      l$name,
      l$category,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getBanksPaginated$banksPaginated) ||
        runtimeType != other.runtimeType) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$getBanksPaginated$banksPaginated
    on Query$getBanksPaginated$banksPaginated {
  CopyWith$Query$getBanksPaginated$banksPaginated<
          Query$getBanksPaginated$banksPaginated>
      get copyWith => CopyWith$Query$getBanksPaginated$banksPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBanksPaginated$banksPaginated<TRes> {
  factory CopyWith$Query$getBanksPaginated$banksPaginated(
    Query$getBanksPaginated$banksPaginated instance,
    TRes Function(Query$getBanksPaginated$banksPaginated) then,
  ) = _CopyWithImpl$Query$getBanksPaginated$banksPaginated;

  factory CopyWith$Query$getBanksPaginated$banksPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated;

  TRes call({
    int? id,
    String? unique_id,
    String? created_at,
    bool? active,
    String? name,
    Query$getBanksPaginated$banksPaginated$category? category,
    String? $__typename,
  });
  CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> get category;
}

class _CopyWithImpl$Query$getBanksPaginated$banksPaginated<TRes>
    implements CopyWith$Query$getBanksPaginated$banksPaginated<TRes> {
  _CopyWithImpl$Query$getBanksPaginated$banksPaginated(
    this._instance,
    this._then,
  );

  final Query$getBanksPaginated$banksPaginated _instance;

  final TRes Function(Query$getBanksPaginated$banksPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? unique_id = _undefined,
    Object? created_at = _undefined,
    Object? active = _undefined,
    Object? name = _undefined,
    Object? category = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBanksPaginated$banksPaginated(
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
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        category: category == _undefined
            ? _instance.category
            : (category as Query$getBanksPaginated$banksPaginated$category?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$getBanksPaginated$banksPaginated$category.stub(
            _then(_instance))
        : CopyWith$Query$getBanksPaginated$banksPaginated$category(
            local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated<TRes>
    implements CopyWith$Query$getBanksPaginated$banksPaginated<TRes> {
  _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated(this._res);

  TRes _res;

  call({
    int? id,
    String? unique_id,
    String? created_at,
    bool? active,
    String? name,
    Query$getBanksPaginated$banksPaginated$category? category,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> get category =>
      CopyWith$Query$getBanksPaginated$banksPaginated$category.stub(_res);
}

class Query$getBanksPaginated$banksPaginated$category {
  Query$getBanksPaginated$banksPaginated$category({
    required this.id,
    required this.name,
    this.$__typename = 'BankCategory',
  });

  factory Query$getBanksPaginated$banksPaginated$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getBanksPaginated$banksPaginated$category(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getBanksPaginated$banksPaginated$category) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$getBanksPaginated$banksPaginated$category
    on Query$getBanksPaginated$banksPaginated$category {
  CopyWith$Query$getBanksPaginated$banksPaginated$category<
          Query$getBanksPaginated$banksPaginated$category>
      get copyWith => CopyWith$Query$getBanksPaginated$banksPaginated$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> {
  factory CopyWith$Query$getBanksPaginated$banksPaginated$category(
    Query$getBanksPaginated$banksPaginated$category instance,
    TRes Function(Query$getBanksPaginated$banksPaginated$category) then,
  ) = _CopyWithImpl$Query$getBanksPaginated$banksPaginated$category;

  factory CopyWith$Query$getBanksPaginated$banksPaginated$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getBanksPaginated$banksPaginated$category<TRes>
    implements CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> {
  _CopyWithImpl$Query$getBanksPaginated$banksPaginated$category(
    this._instance,
    this._then,
  );

  final Query$getBanksPaginated$banksPaginated$category _instance;

  final TRes Function(Query$getBanksPaginated$banksPaginated$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBanksPaginated$banksPaginated$category(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated$category<TRes>
    implements CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> {
  _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated$category(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getBanksByCategoryPaginated {
  factory Variables$Query$getBanksByCategoryPaginated({
    int? page,
    int? size,
    int? categoryId,
  }) =>
      Variables$Query$getBanksByCategoryPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
        if (categoryId != null) r'categoryId': categoryId,
      });

  Variables$Query$getBanksByCategoryPaginated._(this._$data);

  factory Variables$Query$getBanksByCategoryPaginated.fromJson(
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
    return Variables$Query$getBanksByCategoryPaginated._(result$data);
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

  CopyWith$Variables$Query$getBanksByCategoryPaginated<
          Variables$Query$getBanksByCategoryPaginated>
      get copyWith => CopyWith$Variables$Query$getBanksByCategoryPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getBanksByCategoryPaginated) ||
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

abstract class CopyWith$Variables$Query$getBanksByCategoryPaginated<TRes> {
  factory CopyWith$Variables$Query$getBanksByCategoryPaginated(
    Variables$Query$getBanksByCategoryPaginated instance,
    TRes Function(Variables$Query$getBanksByCategoryPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getBanksByCategoryPaginated;

  factory CopyWith$Variables$Query$getBanksByCategoryPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getBanksByCategoryPaginated;

  TRes call({
    int? page,
    int? size,
    int? categoryId,
  });
}

class _CopyWithImpl$Variables$Query$getBanksByCategoryPaginated<TRes>
    implements CopyWith$Variables$Query$getBanksByCategoryPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getBanksByCategoryPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getBanksByCategoryPaginated _instance;

  final TRes Function(Variables$Query$getBanksByCategoryPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? size = _undefined,
    Object? categoryId = _undefined,
  }) =>
      _then(Variables$Query$getBanksByCategoryPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
        if (categoryId != _undefined) 'categoryId': (categoryId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getBanksByCategoryPaginated<TRes>
    implements CopyWith$Variables$Query$getBanksByCategoryPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getBanksByCategoryPaginated(this._res);

  TRes _res;

  call({
    int? page,
    int? size,
    int? categoryId,
  }) =>
      _res;
}

class Query$getBanksByCategoryPaginated {
  Query$getBanksByCategoryPaginated({
    this.banksByCategoryPaginated,
    this.$__typename = 'BankQuery',
  });

  factory Query$getBanksByCategoryPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$banksByCategoryPaginated = json['banksByCategoryPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getBanksByCategoryPaginated(
      banksByCategoryPaginated: (l$banksByCategoryPaginated as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getBanksByCategoryPaginated$banksByCategoryPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>?
      banksByCategoryPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$banksByCategoryPaginated = banksByCategoryPaginated;
    _resultData['banksByCategoryPaginated'] =
        l$banksByCategoryPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$banksByCategoryPaginated = banksByCategoryPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$banksByCategoryPaginated == null
          ? null
          : Object.hashAll(l$banksByCategoryPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getBanksByCategoryPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$banksByCategoryPaginated = banksByCategoryPaginated;
    final lOther$banksByCategoryPaginated = other.banksByCategoryPaginated;
    if (l$banksByCategoryPaginated != null &&
        lOther$banksByCategoryPaginated != null) {
      if (l$banksByCategoryPaginated.length !=
          lOther$banksByCategoryPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$banksByCategoryPaginated.length; i++) {
        final l$banksByCategoryPaginated$entry = l$banksByCategoryPaginated[i];
        final lOther$banksByCategoryPaginated$entry =
            lOther$banksByCategoryPaginated[i];
        if (l$banksByCategoryPaginated$entry !=
            lOther$banksByCategoryPaginated$entry) {
          return false;
        }
      }
    } else if (l$banksByCategoryPaginated != lOther$banksByCategoryPaginated) {
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

extension UtilityExtension$Query$getBanksByCategoryPaginated
    on Query$getBanksByCategoryPaginated {
  CopyWith$Query$getBanksByCategoryPaginated<Query$getBanksByCategoryPaginated>
      get copyWith => CopyWith$Query$getBanksByCategoryPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBanksByCategoryPaginated<TRes> {
  factory CopyWith$Query$getBanksByCategoryPaginated(
    Query$getBanksByCategoryPaginated instance,
    TRes Function(Query$getBanksByCategoryPaginated) then,
  ) = _CopyWithImpl$Query$getBanksByCategoryPaginated;

  factory CopyWith$Query$getBanksByCategoryPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBanksByCategoryPaginated;

  TRes call({
    List<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>?
        banksByCategoryPaginated,
    String? $__typename,
  });
  TRes banksByCategoryPaginated(
      Iterable<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
                      Query$getBanksByCategoryPaginated$banksByCategoryPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getBanksByCategoryPaginated<TRes>
    implements CopyWith$Query$getBanksByCategoryPaginated<TRes> {
  _CopyWithImpl$Query$getBanksByCategoryPaginated(
    this._instance,
    this._then,
  );

  final Query$getBanksByCategoryPaginated _instance;

  final TRes Function(Query$getBanksByCategoryPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? banksByCategoryPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBanksByCategoryPaginated(
        banksByCategoryPaginated: banksByCategoryPaginated == _undefined
            ? _instance.banksByCategoryPaginated
            : (banksByCategoryPaginated as List<
                Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes banksByCategoryPaginated(
          Iterable<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
                          Query$getBanksByCategoryPaginated$banksByCategoryPaginated>?>?)
              _fn) =>
      call(
          banksByCategoryPaginated:
              _fn(_instance.banksByCategoryPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getBanksByCategoryPaginated<TRes>
    implements CopyWith$Query$getBanksByCategoryPaginated<TRes> {
  _CopyWithStubImpl$Query$getBanksByCategoryPaginated(this._res);

  TRes _res;

  call({
    List<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>?
        banksByCategoryPaginated,
    String? $__typename,
  }) =>
      _res;
  banksByCategoryPaginated(_fn) => _res;
}

const documentNodeQuerygetBanksByCategoryPaginated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getBanksByCategoryPaginated'),
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
        name: NameNode(value: 'banksByCategoryPaginated'),
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
            name: NameNode(value: 'name'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
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
Query$getBanksByCategoryPaginated _parserFn$Query$getBanksByCategoryPaginated(
        Map<String, dynamic> data) =>
    Query$getBanksByCategoryPaginated.fromJson(data);
typedef OnQueryComplete$Query$getBanksByCategoryPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getBanksByCategoryPaginated?,
);

class Options$Query$getBanksByCategoryPaginated
    extends graphql.QueryOptions<Query$getBanksByCategoryPaginated> {
  Options$Query$getBanksByCategoryPaginated({
    String? operationName,
    Variables$Query$getBanksByCategoryPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getBanksByCategoryPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getBanksByCategoryPaginated? onComplete,
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
                        : _parserFn$Query$getBanksByCategoryPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetBanksByCategoryPaginated,
          parserFn: _parserFn$Query$getBanksByCategoryPaginated,
        );

  final OnQueryComplete$Query$getBanksByCategoryPaginated? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getBanksByCategoryPaginated
    extends graphql.WatchQueryOptions<Query$getBanksByCategoryPaginated> {
  WatchOptions$Query$getBanksByCategoryPaginated({
    String? operationName,
    Variables$Query$getBanksByCategoryPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getBanksByCategoryPaginated? typedOptimisticResult,
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
          document: documentNodeQuerygetBanksByCategoryPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getBanksByCategoryPaginated,
        );
}

class FetchMoreOptions$Query$getBanksByCategoryPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getBanksByCategoryPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getBanksByCategoryPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetBanksByCategoryPaginated,
        );
}

extension ClientExtension$Query$getBanksByCategoryPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getBanksByCategoryPaginated>>
      query$getBanksByCategoryPaginated(
              [Options$Query$getBanksByCategoryPaginated? options]) async =>
          await this
              .query(options ?? Options$Query$getBanksByCategoryPaginated());
  graphql.ObservableQuery<Query$getBanksByCategoryPaginated>
      watchQuery$getBanksByCategoryPaginated(
              [WatchOptions$Query$getBanksByCategoryPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getBanksByCategoryPaginated());
  void writeQuery$getBanksByCategoryPaginated({
    required Query$getBanksByCategoryPaginated data,
    Variables$Query$getBanksByCategoryPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetBanksByCategoryPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getBanksByCategoryPaginated? readQuery$getBanksByCategoryPaginated({
    Variables$Query$getBanksByCategoryPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetBanksByCategoryPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getBanksByCategoryPaginated.fromJson(result);
  }
}

class Query$getBanksByCategoryPaginated$banksByCategoryPaginated {
  Query$getBanksByCategoryPaginated$banksByCategoryPaginated({
    required this.id,
    required this.unique_id,
    this.created_at,
    required this.active,
    required this.name,
    this.category,
    this.$__typename = 'FinancialInstitution',
  });

  factory Query$getBanksByCategoryPaginated$banksByCategoryPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$unique_id = json['unique_id'];
    final l$created_at = json['created_at'];
    final l$active = json['active'];
    final l$name = json['name'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
      id: (l$id as int),
      unique_id: (l$unique_id as String),
      created_at: (l$created_at as String?),
      active: (l$active as bool),
      name: (l$name as String),
      category: l$category == null
          ? null
          : Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
              .fromJson((l$category as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String unique_id;

  final String? created_at;

  final bool active;

  final String name;

  final Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category?
      category;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$unique_id = unique_id;
    final l$created_at = created_at;
    final l$active = active;
    final l$name = name;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$unique_id,
      l$created_at,
      l$active,
      l$name,
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
            is Query$getBanksByCategoryPaginated$banksByCategoryPaginated) ||
        runtimeType != other.runtimeType) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$getBanksByCategoryPaginated$banksByCategoryPaginated
    on Query$getBanksByCategoryPaginated$banksByCategoryPaginated {
  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
          Query$getBanksByCategoryPaginated$banksByCategoryPaginated>
      get copyWith =>
          CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
    TRes> {
  factory CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
    Query$getBanksByCategoryPaginated$banksByCategoryPaginated instance,
    TRes Function(Query$getBanksByCategoryPaginated$banksByCategoryPaginated)
        then,
  ) = _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated;

  factory CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated;

  TRes call({
    int? id,
    String? unique_id,
    String? created_at,
    bool? active,
    String? name,
    Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category?
        category,
    String? $__typename,
  });
  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
      TRes> get category;
}

class _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
        TRes>
    implements
        CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
            TRes> {
  _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
    this._instance,
    this._then,
  );

  final Query$getBanksByCategoryPaginated$banksByCategoryPaginated _instance;

  final TRes Function(
      Query$getBanksByCategoryPaginated$banksByCategoryPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? unique_id = _undefined,
    Object? created_at = _undefined,
    Object? active = _undefined,
    Object? name = _undefined,
    Object? category = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
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
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        category: category == _undefined
            ? _instance.category
            : (category
                as Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
      TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
            .stub(_then(_instance))
        : CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
            local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
        TRes>
    implements
        CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
      this._res);

  TRes _res;

  call({
    int? id,
    String? unique_id,
    String? created_at,
    bool? active,
    String? name,
    Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category?
        category,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
          TRes>
      get category =>
          CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
              .stub(_res);
}

class Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category {
  Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category({
    required this.id,
    required this.name,
    this.$__typename = 'BankCategory',
  });

  factory Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
    on Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category {
  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
          Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category>
      get copyWith =>
          CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
    TRes> {
  factory CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
    Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
        instance,
    TRes Function(
            Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category)
        then,
  ) = _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category;

  factory CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
        TRes>
    implements
        CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
            TRes> {
  _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
    this._instance,
    this._then,
  );

  final Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
      _instance;

  final TRes Function(
          Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
        TRes>
    implements
        CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
            TRes> {
  _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getBankCategoriesPaginated {
  factory Variables$Query$getBankCategoriesPaginated({
    int? page,
    int? size,
  }) =>
      Variables$Query$getBankCategoriesPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getBankCategoriesPaginated._(this._$data);

  factory Variables$Query$getBankCategoriesPaginated.fromJson(
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
    return Variables$Query$getBankCategoriesPaginated._(result$data);
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

  CopyWith$Variables$Query$getBankCategoriesPaginated<
          Variables$Query$getBankCategoriesPaginated>
      get copyWith => CopyWith$Variables$Query$getBankCategoriesPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getBankCategoriesPaginated) ||
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

abstract class CopyWith$Variables$Query$getBankCategoriesPaginated<TRes> {
  factory CopyWith$Variables$Query$getBankCategoriesPaginated(
    Variables$Query$getBankCategoriesPaginated instance,
    TRes Function(Variables$Query$getBankCategoriesPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getBankCategoriesPaginated;

  factory CopyWith$Variables$Query$getBankCategoriesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getBankCategoriesPaginated;

  TRes call({
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getBankCategoriesPaginated<TRes>
    implements CopyWith$Variables$Query$getBankCategoriesPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getBankCategoriesPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getBankCategoriesPaginated _instance;

  final TRes Function(Variables$Query$getBankCategoriesPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getBankCategoriesPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getBankCategoriesPaginated<TRes>
    implements CopyWith$Variables$Query$getBankCategoriesPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getBankCategoriesPaginated(this._res);

  TRes _res;

  call({
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getBankCategoriesPaginated {
  Query$getBankCategoriesPaginated({
    this.bankCategoriesPaginated,
    this.$__typename = 'BankQuery',
  });

  factory Query$getBankCategoriesPaginated.fromJson(Map<String, dynamic> json) {
    final l$bankCategoriesPaginated = json['bankCategoriesPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getBankCategoriesPaginated(
      bankCategoriesPaginated: (l$bankCategoriesPaginated as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getBankCategoriesPaginated$bankCategoriesPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>?
      bankCategoriesPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankCategoriesPaginated = bankCategoriesPaginated;
    _resultData['bankCategoriesPaginated'] =
        l$bankCategoriesPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankCategoriesPaginated = bankCategoriesPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankCategoriesPaginated == null
          ? null
          : Object.hashAll(l$bankCategoriesPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getBankCategoriesPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankCategoriesPaginated = bankCategoriesPaginated;
    final lOther$bankCategoriesPaginated = other.bankCategoriesPaginated;
    if (l$bankCategoriesPaginated != null &&
        lOther$bankCategoriesPaginated != null) {
      if (l$bankCategoriesPaginated.length !=
          lOther$bankCategoriesPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$bankCategoriesPaginated.length; i++) {
        final l$bankCategoriesPaginated$entry = l$bankCategoriesPaginated[i];
        final lOther$bankCategoriesPaginated$entry =
            lOther$bankCategoriesPaginated[i];
        if (l$bankCategoriesPaginated$entry !=
            lOther$bankCategoriesPaginated$entry) {
          return false;
        }
      }
    } else if (l$bankCategoriesPaginated != lOther$bankCategoriesPaginated) {
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

extension UtilityExtension$Query$getBankCategoriesPaginated
    on Query$getBankCategoriesPaginated {
  CopyWith$Query$getBankCategoriesPaginated<Query$getBankCategoriesPaginated>
      get copyWith => CopyWith$Query$getBankCategoriesPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBankCategoriesPaginated<TRes> {
  factory CopyWith$Query$getBankCategoriesPaginated(
    Query$getBankCategoriesPaginated instance,
    TRes Function(Query$getBankCategoriesPaginated) then,
  ) = _CopyWithImpl$Query$getBankCategoriesPaginated;

  factory CopyWith$Query$getBankCategoriesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBankCategoriesPaginated;

  TRes call({
    List<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>?
        bankCategoriesPaginated,
    String? $__typename,
  });
  TRes bankCategoriesPaginated(
      Iterable<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
                      Query$getBankCategoriesPaginated$bankCategoriesPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getBankCategoriesPaginated<TRes>
    implements CopyWith$Query$getBankCategoriesPaginated<TRes> {
  _CopyWithImpl$Query$getBankCategoriesPaginated(
    this._instance,
    this._then,
  );

  final Query$getBankCategoriesPaginated _instance;

  final TRes Function(Query$getBankCategoriesPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankCategoriesPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBankCategoriesPaginated(
        bankCategoriesPaginated: bankCategoriesPaginated == _undefined
            ? _instance.bankCategoriesPaginated
            : (bankCategoriesPaginated as List<
                Query$getBankCategoriesPaginated$bankCategoriesPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bankCategoriesPaginated(
          Iterable<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
                          Query$getBankCategoriesPaginated$bankCategoriesPaginated>?>?)
              _fn) =>
      call(
          bankCategoriesPaginated:
              _fn(_instance.bankCategoriesPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getBankCategoriesPaginated<TRes>
    implements CopyWith$Query$getBankCategoriesPaginated<TRes> {
  _CopyWithStubImpl$Query$getBankCategoriesPaginated(this._res);

  TRes _res;

  call({
    List<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>?
        bankCategoriesPaginated,
    String? $__typename,
  }) =>
      _res;
  bankCategoriesPaginated(_fn) => _res;
}

const documentNodeQuerygetBankCategoriesPaginated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getBankCategoriesPaginated'),
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
        name: NameNode(value: 'bankCategoriesPaginated'),
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
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'banks'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
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
Query$getBankCategoriesPaginated _parserFn$Query$getBankCategoriesPaginated(
        Map<String, dynamic> data) =>
    Query$getBankCategoriesPaginated.fromJson(data);
typedef OnQueryComplete$Query$getBankCategoriesPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getBankCategoriesPaginated?,
);

class Options$Query$getBankCategoriesPaginated
    extends graphql.QueryOptions<Query$getBankCategoriesPaginated> {
  Options$Query$getBankCategoriesPaginated({
    String? operationName,
    Variables$Query$getBankCategoriesPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getBankCategoriesPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getBankCategoriesPaginated? onComplete,
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
                        : _parserFn$Query$getBankCategoriesPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetBankCategoriesPaginated,
          parserFn: _parserFn$Query$getBankCategoriesPaginated,
        );

  final OnQueryComplete$Query$getBankCategoriesPaginated? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getBankCategoriesPaginated
    extends graphql.WatchQueryOptions<Query$getBankCategoriesPaginated> {
  WatchOptions$Query$getBankCategoriesPaginated({
    String? operationName,
    Variables$Query$getBankCategoriesPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getBankCategoriesPaginated? typedOptimisticResult,
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
          document: documentNodeQuerygetBankCategoriesPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getBankCategoriesPaginated,
        );
}

class FetchMoreOptions$Query$getBankCategoriesPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getBankCategoriesPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getBankCategoriesPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetBankCategoriesPaginated,
        );
}

extension ClientExtension$Query$getBankCategoriesPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getBankCategoriesPaginated>>
      query$getBankCategoriesPaginated(
              [Options$Query$getBankCategoriesPaginated? options]) async =>
          await this
              .query(options ?? Options$Query$getBankCategoriesPaginated());
  graphql.ObservableQuery<Query$getBankCategoriesPaginated>
      watchQuery$getBankCategoriesPaginated(
              [WatchOptions$Query$getBankCategoriesPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getBankCategoriesPaginated());
  void writeQuery$getBankCategoriesPaginated({
    required Query$getBankCategoriesPaginated data,
    Variables$Query$getBankCategoriesPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetBankCategoriesPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getBankCategoriesPaginated? readQuery$getBankCategoriesPaginated({
    Variables$Query$getBankCategoriesPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetBankCategoriesPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getBankCategoriesPaginated.fromJson(result);
  }
}

class Query$getBankCategoriesPaginated$bankCategoriesPaginated {
  Query$getBankCategoriesPaginated$bankCategoriesPaginated({
    required this.id,
    required this.name,
    this.created_at,
    this.banks,
    this.$__typename = 'BankCategory',
  });

  factory Query$getBankCategoriesPaginated$bankCategoriesPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$created_at = json['created_at'];
    final l$banks = json['banks'];
    final l$$__typename = json['__typename'];
    return Query$getBankCategoriesPaginated$bankCategoriesPaginated(
      id: (l$id as int),
      name: (l$name as String),
      created_at: (l$created_at as String?),
      banks: (l$banks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? created_at;

  final List<Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks?>?
      banks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$banks = banks;
    _resultData['banks'] = l$banks?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$created_at = created_at;
    final l$banks = banks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$created_at,
      l$banks == null ? null : Object.hashAll(l$banks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getBankCategoriesPaginated$bankCategoriesPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$banks = banks;
    final lOther$banks = other.banks;
    if (l$banks != null && lOther$banks != null) {
      if (l$banks.length != lOther$banks.length) {
        return false;
      }
      for (int i = 0; i < l$banks.length; i++) {
        final l$banks$entry = l$banks[i];
        final lOther$banks$entry = lOther$banks[i];
        if (l$banks$entry != lOther$banks$entry) {
          return false;
        }
      }
    } else if (l$banks != lOther$banks) {
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

extension UtilityExtension$Query$getBankCategoriesPaginated$bankCategoriesPaginated
    on Query$getBankCategoriesPaginated$bankCategoriesPaginated {
  CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
          Query$getBankCategoriesPaginated$bankCategoriesPaginated>
      get copyWith =>
          CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
    TRes> {
  factory CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated(
    Query$getBankCategoriesPaginated$bankCategoriesPaginated instance,
    TRes Function(Query$getBankCategoriesPaginated$bankCategoriesPaginated)
        then,
  ) = _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated;

  factory CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated;

  TRes call({
    int? id,
    String? name,
    String? created_at,
    List<Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks?>?
        banks,
    String? $__typename,
  });
  TRes banks(
      Iterable<Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks?>? Function(
              Iterable<
                  CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
                      Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks>?>?)
          _fn);
}

class _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
        TRes>
    implements
        CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
            TRes> {
  _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated(
    this._instance,
    this._then,
  );

  final Query$getBankCategoriesPaginated$bankCategoriesPaginated _instance;

  final TRes Function(Query$getBankCategoriesPaginated$bankCategoriesPaginated)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? created_at = _undefined,
    Object? banks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBankCategoriesPaginated$bankCategoriesPaginated(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        banks: banks == _undefined
            ? _instance.banks
            : (banks as List<
                Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes banks(
          Iterable<Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks?>? Function(
                  Iterable<
                      CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
                          Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks>?>?)
              _fn) =>
      call(
          banks: _fn(_instance.banks?.map((e) => e == null
              ? null
              : CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
        TRes>
    implements
        CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? created_at,
    List<Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks?>?
        banks,
    String? $__typename,
  }) =>
      _res;
  banks(_fn) => _res;
}

class Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks {
  Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks({
    required this.id,
    required this.name,
    required this.unique_id,
    this.$__typename = 'FinancialInstitution',
  });

  factory Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$$__typename = json['__typename'];
    return Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
      id: (l$id as int),
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String unique_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$unique_id = unique_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$unique_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$unique_id = unique_id;
    final lOther$unique_id = other.unique_id;
    if (l$unique_id != lOther$unique_id) {
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

extension UtilityExtension$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks
    on Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks {
  CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
          Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks>
      get copyWith =>
          CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
    TRes> {
  factory CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
    Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks instance,
    TRes Function(
            Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks)
        then,
  ) = _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks;

  factory CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks;

  TRes call({
    int? id,
    String? name,
    String? unique_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
        TRes>
    implements
        CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
            TRes> {
  _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
    this._instance,
    this._then,
  );

  final Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks
      _instance;

  final TRes Function(
      Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
        TRes>
    implements
        CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
            TRes> {
  _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? unique_id,
    String? $__typename,
  }) =>
      _res;
}
