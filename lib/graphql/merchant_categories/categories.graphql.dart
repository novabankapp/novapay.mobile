import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

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
