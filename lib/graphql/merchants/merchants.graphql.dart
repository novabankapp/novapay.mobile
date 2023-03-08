import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$getServicesPaginated {
  factory Variables$Query$getServicesPaginated({int? page, int? size}) =>
      Variables$Query$getServicesPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getServicesPaginated._(this._$data);

  factory Variables$Query$getServicesPaginated.fromJson(
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
    return Variables$Query$getServicesPaginated._(result$data);
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

  CopyWith$Variables$Query$getServicesPaginated<
          Variables$Query$getServicesPaginated>
      get copyWith =>
          CopyWith$Variables$Query$getServicesPaginated(this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getServicesPaginated) ||
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

abstract class CopyWith$Variables$Query$getServicesPaginated<TRes> {
  factory CopyWith$Variables$Query$getServicesPaginated(
          Variables$Query$getServicesPaginated instance,
          TRes Function(Variables$Query$getServicesPaginated) then) =
      _CopyWithImpl$Variables$Query$getServicesPaginated;

  factory CopyWith$Variables$Query$getServicesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getServicesPaginated;

  TRes call({int? page, int? size});
}

class _CopyWithImpl$Variables$Query$getServicesPaginated<TRes>
    implements CopyWith$Variables$Query$getServicesPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getServicesPaginated(
      this._instance, this._then);

  final Variables$Query$getServicesPaginated _instance;

  final TRes Function(Variables$Query$getServicesPaginated) _then;

  static const _undefined = {};

  TRes call({Object? page = _undefined, Object? size = _undefined}) =>
      _then(Variables$Query$getServicesPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getServicesPaginated<TRes>
    implements CopyWith$Variables$Query$getServicesPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getServicesPaginated(this._res);

  TRes _res;

  call({int? page, int? size}) => _res;
}

class Query$getServicesPaginated {
  Query$getServicesPaginated(
      {this.servicesPaginated, required this.$__typename});

  factory Query$getServicesPaginated.fromJson(Map<String, dynamic> json) {
    final l$servicesPaginated = json['servicesPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getServicesPaginated(
        servicesPaginated: (l$servicesPaginated as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$getServicesPaginated$servicesPaginated.fromJson(
                    (e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$getServicesPaginated$servicesPaginated?>? servicesPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$servicesPaginated = servicesPaginated;
    _resultData['servicesPaginated'] =
        l$servicesPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$servicesPaginated = servicesPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$servicesPaginated == null
          ? null
          : Object.hashAll(l$servicesPaginated.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getServicesPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$servicesPaginated = servicesPaginated;
    final lOther$servicesPaginated = other.servicesPaginated;
    if (l$servicesPaginated != null && lOther$servicesPaginated != null) {
      if (l$servicesPaginated.length != lOther$servicesPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$servicesPaginated.length; i++) {
        final l$servicesPaginated$entry = l$servicesPaginated[i];
        final lOther$servicesPaginated$entry = lOther$servicesPaginated[i];
        if (l$servicesPaginated$entry != lOther$servicesPaginated$entry) {
          return false;
        }
      }
    } else if (l$servicesPaginated != lOther$servicesPaginated) {
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

extension UtilityExtension$Query$getServicesPaginated
    on Query$getServicesPaginated {
  CopyWith$Query$getServicesPaginated<Query$getServicesPaginated>
      get copyWith => CopyWith$Query$getServicesPaginated(this, (i) => i);
}

abstract class CopyWith$Query$getServicesPaginated<TRes> {
  factory CopyWith$Query$getServicesPaginated(
          Query$getServicesPaginated instance,
          TRes Function(Query$getServicesPaginated) then) =
      _CopyWithImpl$Query$getServicesPaginated;

  factory CopyWith$Query$getServicesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getServicesPaginated;

  TRes call(
      {List<Query$getServicesPaginated$servicesPaginated?>? servicesPaginated,
      String? $__typename});
  TRes servicesPaginated(
      Iterable<Query$getServicesPaginated$servicesPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getServicesPaginated$servicesPaginated<
                      Query$getServicesPaginated$servicesPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getServicesPaginated<TRes>
    implements CopyWith$Query$getServicesPaginated<TRes> {
  _CopyWithImpl$Query$getServicesPaginated(this._instance, this._then);

  final Query$getServicesPaginated _instance;

  final TRes Function(Query$getServicesPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? servicesPaginated = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getServicesPaginated(
          servicesPaginated: servicesPaginated == _undefined
              ? _instance.servicesPaginated
              : (servicesPaginated
                  as List<Query$getServicesPaginated$servicesPaginated?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes servicesPaginated(
          Iterable<Query$getServicesPaginated$servicesPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getServicesPaginated$servicesPaginated<
                          Query$getServicesPaginated$servicesPaginated>?>?)
              _fn) =>
      call(
          servicesPaginated: _fn(_instance.servicesPaginated?.map((e) =>
              e == null
                  ? null
                  : CopyWith$Query$getServicesPaginated$servicesPaginated(
                      e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$getServicesPaginated<TRes>
    implements CopyWith$Query$getServicesPaginated<TRes> {
  _CopyWithStubImpl$Query$getServicesPaginated(this._res);

  TRes _res;

  call(
          {List<Query$getServicesPaginated$servicesPaginated?>?
              servicesPaginated,
          String? $__typename}) =>
      _res;
  servicesPaginated(_fn) => _res;
}

const documentNodeQuerygetServicesPaginated = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getServicesPaginated'),
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
            name: NameNode(value: 'servicesPaginated'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'id'),
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
Query$getServicesPaginated _parserFn$Query$getServicesPaginated(
        Map<String, dynamic> data) =>
    Query$getServicesPaginated.fromJson(data);

class Options$Query$getServicesPaginated
    extends graphql.QueryOptions<Query$getServicesPaginated> {
  Options$Query$getServicesPaginated(
      {String? operationName,
      Variables$Query$getServicesPaginated? variables,
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
            document: documentNodeQuerygetServicesPaginated,
            parserFn: _parserFn$Query$getServicesPaginated);
}

class WatchOptions$Query$getServicesPaginated
    extends graphql.WatchQueryOptions<Query$getServicesPaginated> {
  WatchOptions$Query$getServicesPaginated(
      {String? operationName,
      Variables$Query$getServicesPaginated? variables,
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
            document: documentNodeQuerygetServicesPaginated,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$getServicesPaginated);
}

class FetchMoreOptions$Query$getServicesPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getServicesPaginated(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$getServicesPaginated? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerygetServicesPaginated);
}

extension ClientExtension$Query$getServicesPaginated on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getServicesPaginated>>
      query$getServicesPaginated(
              [Options$Query$getServicesPaginated? options]) async =>
          await this.query(options ?? Options$Query$getServicesPaginated());
  graphql.ObservableQuery<Query$getServicesPaginated>
      watchQuery$getServicesPaginated(
              [WatchOptions$Query$getServicesPaginated? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$getServicesPaginated());
  void writeQuery$getServicesPaginated(
          {required Query$getServicesPaginated data,
          Variables$Query$getServicesPaginated? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerygetServicesPaginated),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$getServicesPaginated? readQuery$getServicesPaginated(
      {Variables$Query$getServicesPaginated? variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerygetServicesPaginated),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$getServicesPaginated.fromJson(result);
  }
}

class Query$getServicesPaginated$servicesPaginated {
  Query$getServicesPaginated$servicesPaginated(
      {required this.name,
      required this.id,
      required this.unique_id,
      this.created_at,
      required this.active,
      this.category,
      required this.$__typename});

  factory Query$getServicesPaginated$servicesPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$unique_id = json['unique_id'];
    final l$created_at = json['created_at'];
    final l$active = json['active'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Query$getServicesPaginated$servicesPaginated(
        name: (l$name as String),
        id: (l$id as int),
        unique_id: (l$unique_id as String),
        created_at: (l$created_at as String?),
        active: (l$active as bool),
        category: l$category == null
            ? null
            : Query$getServicesPaginated$servicesPaginated$category.fromJson(
                (l$category as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final String name;

  final int id;

  final String unique_id;

  final String? created_at;

  final bool active;

  final Query$getServicesPaginated$servicesPaginated$category? category;

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
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$unique_id,
      l$created_at,
      l$active,
      l$category,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getServicesPaginated$servicesPaginated) ||
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

extension UtilityExtension$Query$getServicesPaginated$servicesPaginated
    on Query$getServicesPaginated$servicesPaginated {
  CopyWith$Query$getServicesPaginated$servicesPaginated<
          Query$getServicesPaginated$servicesPaginated>
      get copyWith =>
          CopyWith$Query$getServicesPaginated$servicesPaginated(this, (i) => i);
}

abstract class CopyWith$Query$getServicesPaginated$servicesPaginated<TRes> {
  factory CopyWith$Query$getServicesPaginated$servicesPaginated(
          Query$getServicesPaginated$servicesPaginated instance,
          TRes Function(Query$getServicesPaginated$servicesPaginated) then) =
      _CopyWithImpl$Query$getServicesPaginated$servicesPaginated;

  factory CopyWith$Query$getServicesPaginated$servicesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getServicesPaginated$servicesPaginated;

  TRes call(
      {String? name,
      int? id,
      String? unique_id,
      String? created_at,
      bool? active,
      Query$getServicesPaginated$servicesPaginated$category? category,
      String? $__typename});
  CopyWith$Query$getServicesPaginated$servicesPaginated$category<TRes>
      get category;
}

class _CopyWithImpl$Query$getServicesPaginated$servicesPaginated<TRes>
    implements CopyWith$Query$getServicesPaginated$servicesPaginated<TRes> {
  _CopyWithImpl$Query$getServicesPaginated$servicesPaginated(
      this._instance, this._then);

  final Query$getServicesPaginated$servicesPaginated _instance;

  final TRes Function(Query$getServicesPaginated$servicesPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? id = _undefined,
          Object? unique_id = _undefined,
          Object? created_at = _undefined,
          Object? active = _undefined,
          Object? category = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getServicesPaginated$servicesPaginated(
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
          category: category == _undefined
              ? _instance.category
              : (category
                  as Query$getServicesPaginated$servicesPaginated$category?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$getServicesPaginated$servicesPaginated$category<TRes>
      get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$getServicesPaginated$servicesPaginated$category.stub(
            _then(_instance))
        : CopyWith$Query$getServicesPaginated$servicesPaginated$category(
            local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Query$getServicesPaginated$servicesPaginated<TRes>
    implements CopyWith$Query$getServicesPaginated$servicesPaginated<TRes> {
  _CopyWithStubImpl$Query$getServicesPaginated$servicesPaginated(this._res);

  TRes _res;

  call(
          {String? name,
          int? id,
          String? unique_id,
          String? created_at,
          bool? active,
          Query$getServicesPaginated$servicesPaginated$category? category,
          String? $__typename}) =>
      _res;
  CopyWith$Query$getServicesPaginated$servicesPaginated$category<TRes>
      get category =>
          CopyWith$Query$getServicesPaginated$servicesPaginated$category.stub(
              _res);
}

class Query$getServicesPaginated$servicesPaginated$category {
  Query$getServicesPaginated$servicesPaginated$category(
      {required this.name,
      required this.id,
      this.created_at,
      required this.$__typename});

  factory Query$getServicesPaginated$servicesPaginated$category.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Query$getServicesPaginated$servicesPaginated$category(
        name: (l$name as String),
        id: (l$id as int),
        created_at: (l$created_at as String?),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$name, l$id, l$created_at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getServicesPaginated$servicesPaginated$category) ||
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

extension UtilityExtension$Query$getServicesPaginated$servicesPaginated$category
    on Query$getServicesPaginated$servicesPaginated$category {
  CopyWith$Query$getServicesPaginated$servicesPaginated$category<
          Query$getServicesPaginated$servicesPaginated$category>
      get copyWith =>
          CopyWith$Query$getServicesPaginated$servicesPaginated$category(
              this, (i) => i);
}

abstract class CopyWith$Query$getServicesPaginated$servicesPaginated$category<
    TRes> {
  factory CopyWith$Query$getServicesPaginated$servicesPaginated$category(
          Query$getServicesPaginated$servicesPaginated$category instance,
          TRes Function(Query$getServicesPaginated$servicesPaginated$category)
              then) =
      _CopyWithImpl$Query$getServicesPaginated$servicesPaginated$category;

  factory CopyWith$Query$getServicesPaginated$servicesPaginated$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getServicesPaginated$servicesPaginated$category;

  TRes call({String? name, int? id, String? created_at, String? $__typename});
}

class _CopyWithImpl$Query$getServicesPaginated$servicesPaginated$category<TRes>
    implements
        CopyWith$Query$getServicesPaginated$servicesPaginated$category<TRes> {
  _CopyWithImpl$Query$getServicesPaginated$servicesPaginated$category(
      this._instance, this._then);

  final Query$getServicesPaginated$servicesPaginated$category _instance;

  final TRes Function(Query$getServicesPaginated$servicesPaginated$category)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? id = _undefined,
          Object? created_at = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getServicesPaginated$servicesPaginated$category(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          id: id == _undefined || id == null ? _instance.id : (id as int),
          created_at: created_at == _undefined
              ? _instance.created_at
              : (created_at as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$getServicesPaginated$servicesPaginated$category<
        TRes>
    implements
        CopyWith$Query$getServicesPaginated$servicesPaginated$category<TRes> {
  _CopyWithStubImpl$Query$getServicesPaginated$servicesPaginated$category(
      this._res);

  TRes _res;

  call({String? name, int? id, String? created_at, String? $__typename}) =>
      _res;
}

class Variables$Query$getServicesByCategoryPaginated {
  factory Variables$Query$getServicesByCategoryPaginated(
          {int? page, int? size, int? categoryId}) =>
      Variables$Query$getServicesByCategoryPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
        if (categoryId != null) r'categoryId': categoryId,
      });

  Variables$Query$getServicesByCategoryPaginated._(this._$data);

  factory Variables$Query$getServicesByCategoryPaginated.fromJson(
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
    return Variables$Query$getServicesByCategoryPaginated._(result$data);
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

  CopyWith$Variables$Query$getServicesByCategoryPaginated<
          Variables$Query$getServicesByCategoryPaginated>
      get copyWith => CopyWith$Variables$Query$getServicesByCategoryPaginated(
          this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getServicesByCategoryPaginated) ||
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

abstract class CopyWith$Variables$Query$getServicesByCategoryPaginated<TRes> {
  factory CopyWith$Variables$Query$getServicesByCategoryPaginated(
          Variables$Query$getServicesByCategoryPaginated instance,
          TRes Function(Variables$Query$getServicesByCategoryPaginated) then) =
      _CopyWithImpl$Variables$Query$getServicesByCategoryPaginated;

  factory CopyWith$Variables$Query$getServicesByCategoryPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$getServicesByCategoryPaginated;

  TRes call({int? page, int? size, int? categoryId});
}

class _CopyWithImpl$Variables$Query$getServicesByCategoryPaginated<TRes>
    implements CopyWith$Variables$Query$getServicesByCategoryPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getServicesByCategoryPaginated(
      this._instance, this._then);

  final Variables$Query$getServicesByCategoryPaginated _instance;

  final TRes Function(Variables$Query$getServicesByCategoryPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? page = _undefined,
          Object? size = _undefined,
          Object? categoryId = _undefined}) =>
      _then(Variables$Query$getServicesByCategoryPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
        if (categoryId != _undefined) 'categoryId': (categoryId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getServicesByCategoryPaginated<TRes>
    implements CopyWith$Variables$Query$getServicesByCategoryPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getServicesByCategoryPaginated(this._res);

  TRes _res;

  call({int? page, int? size, int? categoryId}) => _res;
}

class Query$getServicesByCategoryPaginated {
  Query$getServicesByCategoryPaginated(
      {this.servicesByCategoryPaginated, required this.$__typename});

  factory Query$getServicesByCategoryPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$servicesByCategoryPaginated = json['servicesByCategoryPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getServicesByCategoryPaginated(
        servicesByCategoryPaginated: (l$servicesByCategoryPaginated
                as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$getServicesByCategoryPaginated$servicesByCategoryPaginated
                    .fromJson((e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$getServicesByCategoryPaginated$servicesByCategoryPaginated?>?
      servicesByCategoryPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$servicesByCategoryPaginated = servicesByCategoryPaginated;
    _resultData['servicesByCategoryPaginated'] =
        l$servicesByCategoryPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$servicesByCategoryPaginated = servicesByCategoryPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$servicesByCategoryPaginated == null
          ? null
          : Object.hashAll(l$servicesByCategoryPaginated.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getServicesByCategoryPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$servicesByCategoryPaginated = servicesByCategoryPaginated;
    final lOther$servicesByCategoryPaginated =
        other.servicesByCategoryPaginated;
    if (l$servicesByCategoryPaginated != null &&
        lOther$servicesByCategoryPaginated != null) {
      if (l$servicesByCategoryPaginated.length !=
          lOther$servicesByCategoryPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$servicesByCategoryPaginated.length; i++) {
        final l$servicesByCategoryPaginated$entry =
            l$servicesByCategoryPaginated[i];
        final lOther$servicesByCategoryPaginated$entry =
            lOther$servicesByCategoryPaginated[i];
        if (l$servicesByCategoryPaginated$entry !=
            lOther$servicesByCategoryPaginated$entry) {
          return false;
        }
      }
    } else if (l$servicesByCategoryPaginated !=
        lOther$servicesByCategoryPaginated) {
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

extension UtilityExtension$Query$getServicesByCategoryPaginated
    on Query$getServicesByCategoryPaginated {
  CopyWith$Query$getServicesByCategoryPaginated<
          Query$getServicesByCategoryPaginated>
      get copyWith =>
          CopyWith$Query$getServicesByCategoryPaginated(this, (i) => i);
}

abstract class CopyWith$Query$getServicesByCategoryPaginated<TRes> {
  factory CopyWith$Query$getServicesByCategoryPaginated(
          Query$getServicesByCategoryPaginated instance,
          TRes Function(Query$getServicesByCategoryPaginated) then) =
      _CopyWithImpl$Query$getServicesByCategoryPaginated;

  factory CopyWith$Query$getServicesByCategoryPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getServicesByCategoryPaginated;

  TRes call(
      {List<Query$getServicesByCategoryPaginated$servicesByCategoryPaginated?>?
          servicesByCategoryPaginated,
      String? $__typename});
  TRes servicesByCategoryPaginated(
      Iterable<Query$getServicesByCategoryPaginated$servicesByCategoryPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated<
                      Query$getServicesByCategoryPaginated$servicesByCategoryPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getServicesByCategoryPaginated<TRes>
    implements CopyWith$Query$getServicesByCategoryPaginated<TRes> {
  _CopyWithImpl$Query$getServicesByCategoryPaginated(
      this._instance, this._then);

  final Query$getServicesByCategoryPaginated _instance;

  final TRes Function(Query$getServicesByCategoryPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? servicesByCategoryPaginated = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getServicesByCategoryPaginated(
          servicesByCategoryPaginated: servicesByCategoryPaginated == _undefined
              ? _instance.servicesByCategoryPaginated
              : (servicesByCategoryPaginated as List<
                  Query$getServicesByCategoryPaginated$servicesByCategoryPaginated?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes servicesByCategoryPaginated(
          Iterable<Query$getServicesByCategoryPaginated$servicesByCategoryPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated<
                          Query$getServicesByCategoryPaginated$servicesByCategoryPaginated>?>?)
              _fn) =>
      call(
          servicesByCategoryPaginated: _fn(_instance.servicesByCategoryPaginated
              ?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated(
                      e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$getServicesByCategoryPaginated<TRes>
    implements CopyWith$Query$getServicesByCategoryPaginated<TRes> {
  _CopyWithStubImpl$Query$getServicesByCategoryPaginated(this._res);

  TRes _res;

  call(
          {List<Query$getServicesByCategoryPaginated$servicesByCategoryPaginated?>?
              servicesByCategoryPaginated,
          String? $__typename}) =>
      _res;
  servicesByCategoryPaginated(_fn) => _res;
}

const documentNodeQuerygetServicesByCategoryPaginated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getServicesByCategoryPaginated'),
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
            name: NameNode(value: 'servicesByCategoryPaginated'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'id'),
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
Query$getServicesByCategoryPaginated
    _parserFn$Query$getServicesByCategoryPaginated(Map<String, dynamic> data) =>
        Query$getServicesByCategoryPaginated.fromJson(data);

class Options$Query$getServicesByCategoryPaginated
    extends graphql.QueryOptions<Query$getServicesByCategoryPaginated> {
  Options$Query$getServicesByCategoryPaginated(
      {String? operationName,
      Variables$Query$getServicesByCategoryPaginated? variables,
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
            document: documentNodeQuerygetServicesByCategoryPaginated,
            parserFn: _parserFn$Query$getServicesByCategoryPaginated);
}

class WatchOptions$Query$getServicesByCategoryPaginated
    extends graphql.WatchQueryOptions<Query$getServicesByCategoryPaginated> {
  WatchOptions$Query$getServicesByCategoryPaginated(
      {String? operationName,
      Variables$Query$getServicesByCategoryPaginated? variables,
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
            document: documentNodeQuerygetServicesByCategoryPaginated,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$getServicesByCategoryPaginated);
}

class FetchMoreOptions$Query$getServicesByCategoryPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getServicesByCategoryPaginated(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$getServicesByCategoryPaginated? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerygetServicesByCategoryPaginated);
}

extension ClientExtension$Query$getServicesByCategoryPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getServicesByCategoryPaginated>>
      query$getServicesByCategoryPaginated(
              [Options$Query$getServicesByCategoryPaginated? options]) async =>
          await this
              .query(options ?? Options$Query$getServicesByCategoryPaginated());
  graphql.ObservableQuery<Query$getServicesByCategoryPaginated>
      watchQuery$getServicesByCategoryPaginated(
              [WatchOptions$Query$getServicesByCategoryPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getServicesByCategoryPaginated());
  void writeQuery$getServicesByCategoryPaginated(
          {required Query$getServicesByCategoryPaginated data,
          Variables$Query$getServicesByCategoryPaginated? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerygetServicesByCategoryPaginated),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$getServicesByCategoryPaginated?
      readQuery$getServicesByCategoryPaginated(
          {Variables$Query$getServicesByCategoryPaginated? variables,
          bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerygetServicesByCategoryPaginated),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null
        ? null
        : Query$getServicesByCategoryPaginated.fromJson(result);
  }
}

class Query$getServicesByCategoryPaginated$servicesByCategoryPaginated {
  Query$getServicesByCategoryPaginated$servicesByCategoryPaginated(
      {required this.name,
      required this.id,
      required this.unique_id,
      this.created_at,
      required this.active,
      this.category,
      required this.$__typename});

  factory Query$getServicesByCategoryPaginated$servicesByCategoryPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$unique_id = json['unique_id'];
    final l$created_at = json['created_at'];
    final l$active = json['active'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Query$getServicesByCategoryPaginated$servicesByCategoryPaginated(
        name: (l$name as String),
        id: (l$id as int),
        unique_id: (l$unique_id as String),
        created_at: (l$created_at as String?),
        active: (l$active as bool),
        category: l$category == null
            ? null
            : Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category
                .fromJson((l$category as Map<String, dynamic>)),
        $__typename: (l$$__typename as String));
  }

  final String name;

  final int id;

  final String unique_id;

  final String? created_at;

  final bool active;

  final Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category?
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
    final l$created_at = created_at;
    final l$active = active;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$unique_id,
      l$created_at,
      l$active,
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
            is Query$getServicesByCategoryPaginated$servicesByCategoryPaginated) ||
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

extension UtilityExtension$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated
    on Query$getServicesByCategoryPaginated$servicesByCategoryPaginated {
  CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated<
          Query$getServicesByCategoryPaginated$servicesByCategoryPaginated>
      get copyWith =>
          CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated(
              this, (i) => i);
}

abstract class CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated<
    TRes> {
  factory CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated(
          Query$getServicesByCategoryPaginated$servicesByCategoryPaginated instance,
          TRes Function(
                  Query$getServicesByCategoryPaginated$servicesByCategoryPaginated)
              then) =
      _CopyWithImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated;

  factory CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated;

  TRes call(
      {String? name,
      int? id,
      String? unique_id,
      String? created_at,
      bool? active,
      Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category?
          category,
      String? $__typename});
  CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
      TRes> get category;
}

class _CopyWithImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated<
        TRes>
    implements
        CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated<
            TRes> {
  _CopyWithImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated(
      this._instance, this._then);

  final Query$getServicesByCategoryPaginated$servicesByCategoryPaginated
      _instance;

  final TRes Function(
      Query$getServicesByCategoryPaginated$servicesByCategoryPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? id = _undefined,
          Object? unique_id = _undefined,
          Object? created_at = _undefined,
          Object? active = _undefined,
          Object? category = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getServicesByCategoryPaginated$servicesByCategoryPaginated(
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
          category: category == _undefined
              ? _instance.category
              : (category
                  as Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
      TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category
            .stub(_then(_instance))
        : CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category(
            local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated<
        TRes>
    implements
        CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated(
      this._res);

  TRes _res;

  call(
          {String? name,
          int? id,
          String? unique_id,
          String? created_at,
          bool? active,
          Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category?
              category,
          String? $__typename}) =>
      _res;
  CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
          TRes>
      get category =>
          CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category
              .stub(_res);
}

class Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category {
  Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category(
      {required this.name,
      required this.id,
      this.created_at,
      required this.$__typename});

  factory Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category(
        name: (l$name as String),
        id: (l$id as int),
        created_at: (l$created_at as String?),
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$name, l$id, l$created_at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category) ||
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

extension UtilityExtension$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category
    on Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category {
  CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
          Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category>
      get copyWith =>
          CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category(
              this, (i) => i);
}

abstract class CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
    TRes> {
  factory CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category(
          Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category
              instance,
          TRes Function(
                  Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category)
              then) =
      _CopyWithImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category;

  factory CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category;

  TRes call({String? name, int? id, String? created_at, String? $__typename});
}

class _CopyWithImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
        TRes>
    implements
        CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
            TRes> {
  _CopyWithImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category(
      this._instance, this._then);

  final Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category
      _instance;

  final TRes Function(
          Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? id = _undefined,
          Object? created_at = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category(
              name: name == _undefined || name == null
                  ? _instance.name
                  : (name as String),
              id: id == _undefined || id == null ? _instance.id : (id as int),
              created_at: created_at == _undefined
                  ? _instance.created_at
                  : (created_at as String?),
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String)));
}

class _CopyWithStubImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
        TRes>
    implements
        CopyWith$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category<
            TRes> {
  _CopyWithStubImpl$Query$getServicesByCategoryPaginated$servicesByCategoryPaginated$category(
      this._res);

  TRes _res;

  call({String? name, int? id, String? created_at, String? $__typename}) =>
      _res;
}

class Variables$Query$getServiceCategoriesPaginated {
  factory Variables$Query$getServiceCategoriesPaginated(
          {int? page, int? size}) =>
      Variables$Query$getServiceCategoriesPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getServiceCategoriesPaginated._(this._$data);

  factory Variables$Query$getServiceCategoriesPaginated.fromJson(
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
    return Variables$Query$getServiceCategoriesPaginated._(result$data);
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

  CopyWith$Variables$Query$getServiceCategoriesPaginated<
          Variables$Query$getServiceCategoriesPaginated>
      get copyWith => CopyWith$Variables$Query$getServiceCategoriesPaginated(
          this, (i) => i);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getServiceCategoriesPaginated) ||
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

abstract class CopyWith$Variables$Query$getServiceCategoriesPaginated<TRes> {
  factory CopyWith$Variables$Query$getServiceCategoriesPaginated(
          Variables$Query$getServiceCategoriesPaginated instance,
          TRes Function(Variables$Query$getServiceCategoriesPaginated) then) =
      _CopyWithImpl$Variables$Query$getServiceCategoriesPaginated;

  factory CopyWith$Variables$Query$getServiceCategoriesPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$getServiceCategoriesPaginated;

  TRes call({int? page, int? size});
}

class _CopyWithImpl$Variables$Query$getServiceCategoriesPaginated<TRes>
    implements CopyWith$Variables$Query$getServiceCategoriesPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getServiceCategoriesPaginated(
      this._instance, this._then);

  final Variables$Query$getServiceCategoriesPaginated _instance;

  final TRes Function(Variables$Query$getServiceCategoriesPaginated) _then;

  static const _undefined = {};

  TRes call({Object? page = _undefined, Object? size = _undefined}) =>
      _then(Variables$Query$getServiceCategoriesPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getServiceCategoriesPaginated<TRes>
    implements CopyWith$Variables$Query$getServiceCategoriesPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getServiceCategoriesPaginated(this._res);

  TRes _res;

  call({int? page, int? size}) => _res;
}

class Query$getServiceCategoriesPaginated {
  Query$getServiceCategoriesPaginated(
      {this.serviceCategoriesPaginated, required this.$__typename});

  factory Query$getServiceCategoriesPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$serviceCategoriesPaginated = json['serviceCategoriesPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getServiceCategoriesPaginated(
        serviceCategoriesPaginated: (l$serviceCategoriesPaginated
                as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$getServiceCategoriesPaginated$serviceCategoriesPaginated
                    .fromJson((e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final List<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated?>?
      serviceCategoriesPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$serviceCategoriesPaginated = serviceCategoriesPaginated;
    _resultData['serviceCategoriesPaginated'] =
        l$serviceCategoriesPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$serviceCategoriesPaginated = serviceCategoriesPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$serviceCategoriesPaginated == null
          ? null
          : Object.hashAll(l$serviceCategoriesPaginated.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getServiceCategoriesPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceCategoriesPaginated = serviceCategoriesPaginated;
    final lOther$serviceCategoriesPaginated = other.serviceCategoriesPaginated;
    if (l$serviceCategoriesPaginated != null &&
        lOther$serviceCategoriesPaginated != null) {
      if (l$serviceCategoriesPaginated.length !=
          lOther$serviceCategoriesPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$serviceCategoriesPaginated.length; i++) {
        final l$serviceCategoriesPaginated$entry =
            l$serviceCategoriesPaginated[i];
        final lOther$serviceCategoriesPaginated$entry =
            lOther$serviceCategoriesPaginated[i];
        if (l$serviceCategoriesPaginated$entry !=
            lOther$serviceCategoriesPaginated$entry) {
          return false;
        }
      }
    } else if (l$serviceCategoriesPaginated !=
        lOther$serviceCategoriesPaginated) {
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

extension UtilityExtension$Query$getServiceCategoriesPaginated
    on Query$getServiceCategoriesPaginated {
  CopyWith$Query$getServiceCategoriesPaginated<
          Query$getServiceCategoriesPaginated>
      get copyWith =>
          CopyWith$Query$getServiceCategoriesPaginated(this, (i) => i);
}

abstract class CopyWith$Query$getServiceCategoriesPaginated<TRes> {
  factory CopyWith$Query$getServiceCategoriesPaginated(
          Query$getServiceCategoriesPaginated instance,
          TRes Function(Query$getServiceCategoriesPaginated) then) =
      _CopyWithImpl$Query$getServiceCategoriesPaginated;

  factory CopyWith$Query$getServiceCategoriesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getServiceCategoriesPaginated;

  TRes call(
      {List<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated?>?
          serviceCategoriesPaginated,
      String? $__typename});
  TRes serviceCategoriesPaginated(
      Iterable<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated<
                      Query$getServiceCategoriesPaginated$serviceCategoriesPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getServiceCategoriesPaginated<TRes>
    implements CopyWith$Query$getServiceCategoriesPaginated<TRes> {
  _CopyWithImpl$Query$getServiceCategoriesPaginated(this._instance, this._then);

  final Query$getServiceCategoriesPaginated _instance;

  final TRes Function(Query$getServiceCategoriesPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? serviceCategoriesPaginated = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getServiceCategoriesPaginated(
          serviceCategoriesPaginated: serviceCategoriesPaginated == _undefined
              ? _instance.serviceCategoriesPaginated
              : (serviceCategoriesPaginated as List<
                  Query$getServiceCategoriesPaginated$serviceCategoriesPaginated?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes serviceCategoriesPaginated(
          Iterable<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated<
                          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated>?>?)
              _fn) =>
      call(
          serviceCategoriesPaginated: _fn(_instance.serviceCategoriesPaginated
              ?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated(
                      e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$getServiceCategoriesPaginated<TRes>
    implements CopyWith$Query$getServiceCategoriesPaginated<TRes> {
  _CopyWithStubImpl$Query$getServiceCategoriesPaginated(this._res);

  TRes _res;

  call(
          {List<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated?>?
              serviceCategoriesPaginated,
          String? $__typename}) =>
      _res;
  serviceCategoriesPaginated(_fn) => _res;
}

const documentNodeQuerygetServiceCategoriesPaginated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getServiceCategoriesPaginated'),
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
            name: NameNode(value: 'serviceCategoriesPaginated'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'services'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'id'),
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
Query$getServiceCategoriesPaginated
    _parserFn$Query$getServiceCategoriesPaginated(Map<String, dynamic> data) =>
        Query$getServiceCategoriesPaginated.fromJson(data);

class Options$Query$getServiceCategoriesPaginated
    extends graphql.QueryOptions<Query$getServiceCategoriesPaginated> {
  Options$Query$getServiceCategoriesPaginated(
      {String? operationName,
      Variables$Query$getServiceCategoriesPaginated? variables,
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
            document: documentNodeQuerygetServiceCategoriesPaginated,
            parserFn: _parserFn$Query$getServiceCategoriesPaginated);
}

class WatchOptions$Query$getServiceCategoriesPaginated
    extends graphql.WatchQueryOptions<Query$getServiceCategoriesPaginated> {
  WatchOptions$Query$getServiceCategoriesPaginated(
      {String? operationName,
      Variables$Query$getServiceCategoriesPaginated? variables,
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
            document: documentNodeQuerygetServiceCategoriesPaginated,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$getServiceCategoriesPaginated);
}

class FetchMoreOptions$Query$getServiceCategoriesPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getServiceCategoriesPaginated(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$getServiceCategoriesPaginated? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerygetServiceCategoriesPaginated);
}

extension ClientExtension$Query$getServiceCategoriesPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getServiceCategoriesPaginated>>
      query$getServiceCategoriesPaginated(
              [Options$Query$getServiceCategoriesPaginated? options]) async =>
          await this
              .query(options ?? Options$Query$getServiceCategoriesPaginated());
  graphql.ObservableQuery<Query$getServiceCategoriesPaginated>
      watchQuery$getServiceCategoriesPaginated(
              [WatchOptions$Query$getServiceCategoriesPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getServiceCategoriesPaginated());
  void writeQuery$getServiceCategoriesPaginated(
          {required Query$getServiceCategoriesPaginated data,
          Variables$Query$getServiceCategoriesPaginated? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerygetServiceCategoriesPaginated),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$getServiceCategoriesPaginated? readQuery$getServiceCategoriesPaginated(
      {Variables$Query$getServiceCategoriesPaginated? variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerygetServiceCategoriesPaginated),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null
        ? null
        : Query$getServiceCategoriesPaginated.fromJson(result);
  }
}

class Query$getServiceCategoriesPaginated$serviceCategoriesPaginated {
  Query$getServiceCategoriesPaginated$serviceCategoriesPaginated(
      {required this.name,
      required this.id,
      this.services,
      required this.$__typename});

  factory Query$getServiceCategoriesPaginated$serviceCategoriesPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$services = json['services'];
    final l$$__typename = json['__typename'];
    return Query$getServiceCategoriesPaginated$serviceCategoriesPaginated(
        name: (l$name as String),
        id: (l$id as int),
        services: (l$services as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services
                    .fromJson((e as Map<String, dynamic>)))
            .toList(),
        $__typename: (l$$__typename as String));
  }

  final String name;

  final int id;

  final List<
          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services?>?
      services;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$services = services;
    _resultData['services'] = l$services?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$services = services;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$services == null ? null : Object.hashAll(l$services.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getServiceCategoriesPaginated$serviceCategoriesPaginated) ||
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
    final l$services = services;
    final lOther$services = other.services;
    if (l$services != null && lOther$services != null) {
      if (l$services.length != lOther$services.length) {
        return false;
      }
      for (int i = 0; i < l$services.length; i++) {
        final l$services$entry = l$services[i];
        final lOther$services$entry = lOther$services[i];
        if (l$services$entry != lOther$services$entry) {
          return false;
        }
      }
    } else if (l$services != lOther$services) {
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

extension UtilityExtension$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated
    on Query$getServiceCategoriesPaginated$serviceCategoriesPaginated {
  CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated<
          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated>
      get copyWith =>
          CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated(
              this, (i) => i);
}

abstract class CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated<
    TRes> {
  factory CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated(
          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated instance,
          TRes Function(
                  Query$getServiceCategoriesPaginated$serviceCategoriesPaginated)
              then) =
      _CopyWithImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated;

  factory CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated;

  TRes call(
      {String? name,
      int? id,
      List<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services?>?
          services,
      String? $__typename});
  TRes services(
      Iterable<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services?>? Function(
              Iterable<
                  CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services<
                      Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services>?>?)
          _fn);
}

class _CopyWithImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated<
        TRes>
    implements
        CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated<
            TRes> {
  _CopyWithImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated(
      this._instance, this._then);

  final Query$getServiceCategoriesPaginated$serviceCategoriesPaginated
      _instance;

  final TRes Function(
      Query$getServiceCategoriesPaginated$serviceCategoriesPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? id = _undefined,
          Object? services = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getServiceCategoriesPaginated$serviceCategoriesPaginated(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          id: id == _undefined || id == null ? _instance.id : (id as int),
          services: services == _undefined
              ? _instance.services
              : (services as List<
                  Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes services(
          Iterable<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services?>? Function(
                  Iterable<
                      CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services<
                          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services>?>?)
              _fn) =>
      call(
          services: _fn(_instance.services?.map((e) => e == null
              ? null
              : CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services(
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated<
        TRes>
    implements
        CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated(
      this._res);

  TRes _res;

  call(
          {String? name,
          int? id,
          List<Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services?>?
              services,
          String? $__typename}) =>
      _res;
  services(_fn) => _res;
}

class Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services {
  Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services(
      {required this.name,
      required this.unique_id,
      required this.id,
      this.created_at,
      required this.active,
      required this.$__typename});

  factory Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$created_at = json['created_at'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services(
        name: (l$name as String),
        unique_id: (l$unique_id as String),
        id: (l$id as int),
        created_at: (l$created_at as String?),
        active: (l$active as bool),
        $__typename: (l$$__typename as String));
  }

  final String name;

  final String unique_id;

  final int id;

  final String? created_at;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$unique_id = unique_id;
    final l$id = id;
    final l$created_at = created_at;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$name, l$unique_id, l$id, l$created_at, l$active, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services
    on Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services {
  CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services<
          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services>
      get copyWith =>
          CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services(
              this, (i) => i);
}

abstract class CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services<
    TRes> {
  factory CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services(
          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services
              instance,
          TRes Function(
                  Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services)
              then) =
      _CopyWithImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services;

  factory CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services;

  TRes call(
      {String? name,
      String? unique_id,
      int? id,
      String? created_at,
      bool? active,
      String? $__typename});
}

class _CopyWithImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services<
        TRes>
    implements
        CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services<
            TRes> {
  _CopyWithImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services(
      this._instance, this._then);

  final Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services
      _instance;

  final TRes Function(
          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? unique_id = _undefined,
          Object? id = _undefined,
          Object? created_at = _undefined,
          Object? active = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services(
              name: name == _undefined || name == null
                  ? _instance.name
                  : (name as String),
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
                  : ($__typename as String)));
}

class _CopyWithStubImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services<
        TRes>
    implements
        CopyWith$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services<
            TRes> {
  _CopyWithStubImpl$Query$getServiceCategoriesPaginated$serviceCategoriesPaginated$services(
      this._res);

  TRes _res;

  call(
          {String? name,
          String? unique_id,
          int? id,
          String? created_at,
          bool? active,
          String? $__typename}) =>
      _res;
}
