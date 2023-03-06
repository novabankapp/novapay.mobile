import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$getBanksPaginated {
  factory Variables$Query$getBanksPaginated({int? page, int? size}) =>
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
      get copyWith =>
          CopyWith$Variables$Query$getBanksPaginated(this, (i) => i);
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
      _$data.containsKey('size') ? l$size : const {}
    ]);
  }
}

abstract class CopyWith$Variables$Query$getBanksPaginated<TRes> {
  factory CopyWith$Variables$Query$getBanksPaginated(
          Variables$Query$getBanksPaginated instance,
          TRes Function(Variables$Query$getBanksPaginated) then) =
      _CopyWithImpl$Variables$Query$getBanksPaginated;

  factory CopyWith$Variables$Query$getBanksPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getBanksPaginated;

  TRes call({int? page, int? size});
}

class _CopyWithImpl$Variables$Query$getBanksPaginated<TRes>
    implements CopyWith$Variables$Query$getBanksPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getBanksPaginated(this._instance, this._then);

  final Variables$Query$getBanksPaginated _instance;

  final TRes Function(Variables$Query$getBanksPaginated) _then;

  static const _undefined = {};

  TRes call({Object? page = _undefined, Object? size = _undefined}) =>
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

  call({int? page, int? size}) => _res;
}

class Query$getBanksPaginated {
  Query$getBanksPaginated({this.banksPaginated, required this.$__typename});

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
        $__typename: (l$$__typename as String));
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
      l$$__typename
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
      CopyWith$Query$getBanksPaginated(this, (i) => i);
}

abstract class CopyWith$Query$getBanksPaginated<TRes> {
  factory CopyWith$Query$getBanksPaginated(Query$getBanksPaginated instance,
          TRes Function(Query$getBanksPaginated) then) =
      _CopyWithImpl$Query$getBanksPaginated;

  factory CopyWith$Query$getBanksPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBanksPaginated;

  TRes call(
      {List<Query$getBanksPaginated$banksPaginated?>? banksPaginated,
      String? $__typename});
  TRes banksPaginated(
      Iterable<Query$getBanksPaginated$banksPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getBanksPaginated$banksPaginated<
                      Query$getBanksPaginated$banksPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getBanksPaginated<TRes>
    implements CopyWith$Query$getBanksPaginated<TRes> {
  _CopyWithImpl$Query$getBanksPaginated(this._instance, this._then);

  final Query$getBanksPaginated _instance;

  final TRes Function(Query$getBanksPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? banksPaginated = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getBanksPaginated(
          banksPaginated: banksPaginated == _undefined
              ? _instance.banksPaginated
              : (banksPaginated
                  as List<Query$getBanksPaginated$banksPaginated?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
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
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$getBanksPaginated<TRes>
    implements CopyWith$Query$getBanksPaginated<TRes> {
  _CopyWithStubImpl$Query$getBanksPaginated(this._res);

  TRes _res;

  call(
          {List<Query$getBanksPaginated$banksPaginated?>? banksPaginated,
          String? $__typename}) =>
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
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'size')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'banksPaginated'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: VariableNode(name: NameNode(value: 'page'))),
              ArgumentNode(
                  name: NameNode(value: 'size'),
                  value: VariableNode(name: NameNode(value: 'size')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'unique_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'created_at'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$getBanksPaginated _parserFn$Query$getBanksPaginated(
        Map<String, dynamic> data) =>
    Query$getBanksPaginated.fromJson(data);

class Options$Query$getBanksPaginated
    extends graphql.QueryOptions<Query$getBanksPaginated> {
  Options$Query$getBanksPaginated(
      {String? operationName,
      Variables$Query$getBanksPaginated? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQuerygetBanksPaginated,
            parserFn: _parserFn$Query$getBanksPaginated);
}

class WatchOptions$Query$getBanksPaginated
    extends graphql.WatchQueryOptions<Query$getBanksPaginated> {
  WatchOptions$Query$getBanksPaginated(
      {String? operationName,
      Variables$Query$getBanksPaginated? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQuerygetBanksPaginated,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$getBanksPaginated);
}

class FetchMoreOptions$Query$getBanksPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getBanksPaginated(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$getBanksPaginated? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerygetBanksPaginated);
}

extension ClientExtension$Query$getBanksPaginated on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getBanksPaginated>> query$getBanksPaginated(
          [Options$Query$getBanksPaginated? options]) async =>
      await this.query(options ?? Options$Query$getBanksPaginated());
  graphql.ObservableQuery<Query$getBanksPaginated> watchQuery$getBanksPaginated(
          [WatchOptions$Query$getBanksPaginated? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getBanksPaginated());
  void writeQuery$getBanksPaginated(
          {required Query$getBanksPaginated data,
          Variables$Query$getBanksPaginated? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerygetBanksPaginated),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$getBanksPaginated? readQuery$getBanksPaginated(
      {Variables$Query$getBanksPaginated? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerygetBanksPaginated),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$getBanksPaginated.fromJson(result);
  }
}

class Query$getBanksPaginated$banksPaginated {
  Query$getBanksPaginated$banksPaginated(
      {required this.id,
      required this.unique_id,
      this.created_at,
      required this.active,
      required this.name,
      this.category,
      required this.$__typename});

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
        $__typename: (l$$__typename as String));
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
      l$$__typename
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
      get copyWith =>
          CopyWith$Query$getBanksPaginated$banksPaginated(this, (i) => i);
}

abstract class CopyWith$Query$getBanksPaginated$banksPaginated<TRes> {
  factory CopyWith$Query$getBanksPaginated$banksPaginated(
          Query$getBanksPaginated$banksPaginated instance,
          TRes Function(Query$getBanksPaginated$banksPaginated) then) =
      _CopyWithImpl$Query$getBanksPaginated$banksPaginated;

  factory CopyWith$Query$getBanksPaginated$banksPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated;

  TRes call(
      {int? id,
      String? unique_id,
      String? created_at,
      bool? active,
      String? name,
      Query$getBanksPaginated$banksPaginated$category? category,
      String? $__typename});
  CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> get category;
}

class _CopyWithImpl$Query$getBanksPaginated$banksPaginated<TRes>
    implements CopyWith$Query$getBanksPaginated$banksPaginated<TRes> {
  _CopyWithImpl$Query$getBanksPaginated$banksPaginated(
      this._instance, this._then);

  final Query$getBanksPaginated$banksPaginated _instance;

  final TRes Function(Query$getBanksPaginated$banksPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? unique_id = _undefined,
          Object? created_at = _undefined,
          Object? active = _undefined,
          Object? name = _undefined,
          Object? category = _undefined,
          Object? $__typename = _undefined}) =>
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
              : ($__typename as String)));
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

  call(
          {int? id,
          String? unique_id,
          String? created_at,
          bool? active,
          String? name,
          Query$getBanksPaginated$banksPaginated$category? category,
          String? $__typename}) =>
      _res;
  CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> get category =>
      CopyWith$Query$getBanksPaginated$banksPaginated$category.stub(_res);
}

class Query$getBanksPaginated$banksPaginated$category {
  Query$getBanksPaginated$banksPaginated$category(
      {required this.id, required this.name, required this.$__typename});

  factory Query$getBanksPaginated$banksPaginated$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getBanksPaginated$banksPaginated$category(
        id: (l$id as int),
        name: (l$name as String),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
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
          this, (i) => i);
}

abstract class CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> {
  factory CopyWith$Query$getBanksPaginated$banksPaginated$category(
          Query$getBanksPaginated$banksPaginated$category instance,
          TRes Function(Query$getBanksPaginated$banksPaginated$category) then) =
      _CopyWithImpl$Query$getBanksPaginated$banksPaginated$category;

  factory CopyWith$Query$getBanksPaginated$banksPaginated$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated$category;

  TRes call({int? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$getBanksPaginated$banksPaginated$category<TRes>
    implements CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> {
  _CopyWithImpl$Query$getBanksPaginated$banksPaginated$category(
      this._instance, this._then);

  final Query$getBanksPaginated$banksPaginated$category _instance;

  final TRes Function(Query$getBanksPaginated$banksPaginated$category) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getBanksPaginated$banksPaginated$category(
          id: id == _undefined || id == null ? _instance.id : (id as int),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated$category<TRes>
    implements CopyWith$Query$getBanksPaginated$banksPaginated$category<TRes> {
  _CopyWithStubImpl$Query$getBanksPaginated$banksPaginated$category(this._res);

  TRes _res;

  call({int? id, String? name, String? $__typename}) => _res;
}

class Variables$Query$getBanksByCategoryPaginated {
  factory Variables$Query$getBanksByCategoryPaginated(
          {int? page, int? size, int? categoryId}) =>
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
      get copyWith =>
          CopyWith$Variables$Query$getBanksByCategoryPaginated(this, (i) => i);
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
      _$data.containsKey('categoryId') ? l$categoryId : const {}
    ]);
  }
}

abstract class CopyWith$Variables$Query$getBanksByCategoryPaginated<TRes> {
  factory CopyWith$Variables$Query$getBanksByCategoryPaginated(
          Variables$Query$getBanksByCategoryPaginated instance,
          TRes Function(Variables$Query$getBanksByCategoryPaginated) then) =
      _CopyWithImpl$Variables$Query$getBanksByCategoryPaginated;

  factory CopyWith$Variables$Query$getBanksByCategoryPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getBanksByCategoryPaginated;

  TRes call({int? page, int? size, int? categoryId});
}

class _CopyWithImpl$Variables$Query$getBanksByCategoryPaginated<TRes>
    implements CopyWith$Variables$Query$getBanksByCategoryPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getBanksByCategoryPaginated(
      this._instance, this._then);

  final Variables$Query$getBanksByCategoryPaginated _instance;

  final TRes Function(Variables$Query$getBanksByCategoryPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? page = _undefined,
          Object? size = _undefined,
          Object? categoryId = _undefined}) =>
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

  call({int? page, int? size, int? categoryId}) => _res;
}

class Query$getBanksByCategoryPaginated {
  Query$getBanksByCategoryPaginated(
      {this.banksByCategoryPaginated, required this.$__typename});

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
        $__typename: (l$$__typename as String));
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
      l$$__typename
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
      get copyWith =>
          CopyWith$Query$getBanksByCategoryPaginated(this, (i) => i);
}

abstract class CopyWith$Query$getBanksByCategoryPaginated<TRes> {
  factory CopyWith$Query$getBanksByCategoryPaginated(
          Query$getBanksByCategoryPaginated instance,
          TRes Function(Query$getBanksByCategoryPaginated) then) =
      _CopyWithImpl$Query$getBanksByCategoryPaginated;

  factory CopyWith$Query$getBanksByCategoryPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBanksByCategoryPaginated;

  TRes call(
      {List<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>?
          banksByCategoryPaginated,
      String? $__typename});
  TRes banksByCategoryPaginated(
      Iterable<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
                      Query$getBanksByCategoryPaginated$banksByCategoryPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getBanksByCategoryPaginated<TRes>
    implements CopyWith$Query$getBanksByCategoryPaginated<TRes> {
  _CopyWithImpl$Query$getBanksByCategoryPaginated(this._instance, this._then);

  final Query$getBanksByCategoryPaginated _instance;

  final TRes Function(Query$getBanksByCategoryPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? banksByCategoryPaginated = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getBanksByCategoryPaginated(
          banksByCategoryPaginated: banksByCategoryPaginated == _undefined
              ? _instance.banksByCategoryPaginated
              : (banksByCategoryPaginated as List<
                  Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes banksByCategoryPaginated(
          Iterable<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
                          Query$getBanksByCategoryPaginated$banksByCategoryPaginated>?>?)
              _fn) =>
      call(
          banksByCategoryPaginated: _fn(_instance.banksByCategoryPaginated?.map(
              (e) => e == null
                  ? null
                  : CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
                      e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$getBanksByCategoryPaginated<TRes>
    implements CopyWith$Query$getBanksByCategoryPaginated<TRes> {
  _CopyWithStubImpl$Query$getBanksByCategoryPaginated(this._res);

  TRes _res;

  call(
          {List<Query$getBanksByCategoryPaginated$banksByCategoryPaginated?>?
              banksByCategoryPaginated,
          String? $__typename}) =>
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
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'size')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'categoryId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'banksByCategoryPaginated'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'page'),
                  value: VariableNode(name: NameNode(value: 'page'))),
              ArgumentNode(
                  name: NameNode(value: 'size'),
                  value: VariableNode(name: NameNode(value: 'size'))),
              ArgumentNode(
                  name: NameNode(value: 'categoryId'),
                  value: VariableNode(name: NameNode(value: 'categoryId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'unique_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'created_at'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$getBanksByCategoryPaginated _parserFn$Query$getBanksByCategoryPaginated(
        Map<String, dynamic> data) =>
    Query$getBanksByCategoryPaginated.fromJson(data);

class Options$Query$getBanksByCategoryPaginated
    extends graphql.QueryOptions<Query$getBanksByCategoryPaginated> {
  Options$Query$getBanksByCategoryPaginated(
      {String? operationName,
      Variables$Query$getBanksByCategoryPaginated? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQuerygetBanksByCategoryPaginated,
            parserFn: _parserFn$Query$getBanksByCategoryPaginated);
}

class WatchOptions$Query$getBanksByCategoryPaginated
    extends graphql.WatchQueryOptions<Query$getBanksByCategoryPaginated> {
  WatchOptions$Query$getBanksByCategoryPaginated(
      {String? operationName,
      Variables$Query$getBanksByCategoryPaginated? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQuerygetBanksByCategoryPaginated,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$getBanksByCategoryPaginated);
}

class FetchMoreOptions$Query$getBanksByCategoryPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getBanksByCategoryPaginated(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$getBanksByCategoryPaginated? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerygetBanksByCategoryPaginated);
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
  void writeQuery$getBanksByCategoryPaginated(
          {required Query$getBanksByCategoryPaginated data,
          Variables$Query$getBanksByCategoryPaginated? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerygetBanksByCategoryPaginated),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$getBanksByCategoryPaginated? readQuery$getBanksByCategoryPaginated(
      {Variables$Query$getBanksByCategoryPaginated? variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerygetBanksByCategoryPaginated),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null
        ? null
        : Query$getBanksByCategoryPaginated.fromJson(result);
  }
}

class Query$getBanksByCategoryPaginated$banksByCategoryPaginated {
  Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
      {required this.id,
      required this.unique_id,
      this.created_at,
      required this.active,
      required this.name,
      this.category,
      required this.$__typename});

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
        $__typename: (l$$__typename as String));
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
      l$$__typename
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
              this, (i) => i);
}

abstract class CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
    TRes> {
  factory CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
          Query$getBanksByCategoryPaginated$banksByCategoryPaginated instance,
          TRes Function(
                  Query$getBanksByCategoryPaginated$banksByCategoryPaginated)
              then) =
      _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated;

  factory CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated;

  TRes call(
      {int? id,
      String? unique_id,
      String? created_at,
      bool? active,
      String? name,
      Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category?
          category,
      String? $__typename});
  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
      TRes> get category;
}

class _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
        TRes>
    implements
        CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated<
            TRes> {
  _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated(
      this._instance, this._then);

  final Query$getBanksByCategoryPaginated$banksByCategoryPaginated _instance;

  final TRes Function(
      Query$getBanksByCategoryPaginated$banksByCategoryPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? unique_id = _undefined,
          Object? created_at = _undefined,
          Object? active = _undefined,
          Object? name = _undefined,
          Object? category = _undefined,
          Object? $__typename = _undefined}) =>
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
              : ($__typename as String)));
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

  call(
          {int? id,
          String? unique_id,
          String? created_at,
          bool? active,
          String? name,
          Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category?
              category,
          String? $__typename}) =>
      _res;
  CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
          TRes>
      get category =>
          CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
              .stub(_res);
}

class Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category {
  Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
      {required this.id, required this.name, required this.$__typename});

  factory Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
        id: (l$id as int),
        name: (l$name as String),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
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
              this, (i) => i);
}

abstract class CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
    TRes> {
  factory CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
          Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
              instance,
          TRes Function(
                  Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category)
              then) =
      _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category;

  factory CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category;

  TRes call({int? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
        TRes>
    implements
        CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
            TRes> {
  _CopyWithImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
      this._instance, this._then);

  final Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category
      _instance;

  final TRes Function(
          Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
          id: id == _undefined || id == null ? _instance.id : (id as int),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
        TRes>
    implements
        CopyWith$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category<
            TRes> {
  _CopyWithStubImpl$Query$getBanksByCategoryPaginated$banksByCategoryPaginated$category(
      this._res);

  TRes _res;

  call({int? id, String? name, String? $__typename}) => _res;
}
