import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$getBankCategoriesPaginated {
  factory Variables$Query$getBankCategoriesPaginated({int? page, int? size}) =>
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
      get copyWith =>
          CopyWith$Variables$Query$getBankCategoriesPaginated(this, (i) => i);
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
      _$data.containsKey('size') ? l$size : const {}
    ]);
  }
}

abstract class CopyWith$Variables$Query$getBankCategoriesPaginated<TRes> {
  factory CopyWith$Variables$Query$getBankCategoriesPaginated(
          Variables$Query$getBankCategoriesPaginated instance,
          TRes Function(Variables$Query$getBankCategoriesPaginated) then) =
      _CopyWithImpl$Variables$Query$getBankCategoriesPaginated;

  factory CopyWith$Variables$Query$getBankCategoriesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getBankCategoriesPaginated;

  TRes call({int? page, int? size});
}

class _CopyWithImpl$Variables$Query$getBankCategoriesPaginated<TRes>
    implements CopyWith$Variables$Query$getBankCategoriesPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getBankCategoriesPaginated(
      this._instance, this._then);

  final Variables$Query$getBankCategoriesPaginated _instance;

  final TRes Function(Variables$Query$getBankCategoriesPaginated) _then;

  static const _undefined = {};

  TRes call({Object? page = _undefined, Object? size = _undefined}) =>
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

  call({int? page, int? size}) => _res;
}

class Query$getBankCategoriesPaginated {
  Query$getBankCategoriesPaginated(
      {this.bankCategoriesPaginated, required this.$__typename});

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
        $__typename: (l$$__typename as String));
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
      l$$__typename
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
      get copyWith => CopyWith$Query$getBankCategoriesPaginated(this, (i) => i);
}

abstract class CopyWith$Query$getBankCategoriesPaginated<TRes> {
  factory CopyWith$Query$getBankCategoriesPaginated(
          Query$getBankCategoriesPaginated instance,
          TRes Function(Query$getBankCategoriesPaginated) then) =
      _CopyWithImpl$Query$getBankCategoriesPaginated;

  factory CopyWith$Query$getBankCategoriesPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBankCategoriesPaginated;

  TRes call(
      {List<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>?
          bankCategoriesPaginated,
      String? $__typename});
  TRes bankCategoriesPaginated(
      Iterable<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
                      Query$getBankCategoriesPaginated$bankCategoriesPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getBankCategoriesPaginated<TRes>
    implements CopyWith$Query$getBankCategoriesPaginated<TRes> {
  _CopyWithImpl$Query$getBankCategoriesPaginated(this._instance, this._then);

  final Query$getBankCategoriesPaginated _instance;

  final TRes Function(Query$getBankCategoriesPaginated) _then;

  static const _undefined = {};

  TRes call(
          {Object? bankCategoriesPaginated = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$getBankCategoriesPaginated(
          bankCategoriesPaginated: bankCategoriesPaginated == _undefined
              ? _instance.bankCategoriesPaginated
              : (bankCategoriesPaginated as List<
                  Query$getBankCategoriesPaginated$bankCategoriesPaginated?>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes bankCategoriesPaginated(
          Iterable<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
                          Query$getBankCategoriesPaginated$bankCategoriesPaginated>?>?)
              _fn) =>
      call(
          bankCategoriesPaginated: _fn(_instance.bankCategoriesPaginated?.map(
              (e) => e == null
                  ? null
                  : CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated(
                      e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$getBankCategoriesPaginated<TRes>
    implements CopyWith$Query$getBankCategoriesPaginated<TRes> {
  _CopyWithStubImpl$Query$getBankCategoriesPaginated(this._res);

  TRes _res;

  call(
          {List<Query$getBankCategoriesPaginated$bankCategoriesPaginated?>?
              bankCategoriesPaginated,
          String? $__typename}) =>
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
            name: NameNode(value: 'bankCategoriesPaginated'),
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
                  name: NameNode(value: 'name'),
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
                        selectionSet: null),
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
Query$getBankCategoriesPaginated _parserFn$Query$getBankCategoriesPaginated(
        Map<String, dynamic> data) =>
    Query$getBankCategoriesPaginated.fromJson(data);

class Options$Query$getBankCategoriesPaginated
    extends graphql.QueryOptions<Query$getBankCategoriesPaginated> {
  Options$Query$getBankCategoriesPaginated(
      {String? operationName,
      Variables$Query$getBankCategoriesPaginated? variables,
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
            document: documentNodeQuerygetBankCategoriesPaginated,
            parserFn: _parserFn$Query$getBankCategoriesPaginated);
}

class WatchOptions$Query$getBankCategoriesPaginated
    extends graphql.WatchQueryOptions<Query$getBankCategoriesPaginated> {
  WatchOptions$Query$getBankCategoriesPaginated(
      {String? operationName,
      Variables$Query$getBankCategoriesPaginated? variables,
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
            document: documentNodeQuerygetBankCategoriesPaginated,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$getBankCategoriesPaginated);
}

class FetchMoreOptions$Query$getBankCategoriesPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getBankCategoriesPaginated(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$getBankCategoriesPaginated? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerygetBankCategoriesPaginated);
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
  void writeQuery$getBankCategoriesPaginated(
          {required Query$getBankCategoriesPaginated data,
          Variables$Query$getBankCategoriesPaginated? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerygetBankCategoriesPaginated),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$getBankCategoriesPaginated? readQuery$getBankCategoriesPaginated(
      {Variables$Query$getBankCategoriesPaginated? variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerygetBankCategoriesPaginated),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null
        ? null
        : Query$getBankCategoriesPaginated.fromJson(result);
  }
}

class Query$getBankCategoriesPaginated$bankCategoriesPaginated {
  Query$getBankCategoriesPaginated$bankCategoriesPaginated(
      {required this.id,
      required this.name,
      this.created_at,
      this.banks,
      required this.$__typename});

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
        $__typename: (l$$__typename as String));
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
      l$$__typename
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
              this, (i) => i);
}

abstract class CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
    TRes> {
  factory CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated(
          Query$getBankCategoriesPaginated$bankCategoriesPaginated instance,
          TRes Function(
                  Query$getBankCategoriesPaginated$bankCategoriesPaginated)
              then) =
      _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated;

  factory CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated;

  TRes call(
      {int? id,
      String? name,
      String? created_at,
      List<Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks?>?
          banks,
      String? $__typename});
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
      this._instance, this._then);

  final Query$getBankCategoriesPaginated$bankCategoriesPaginated _instance;

  final TRes Function(Query$getBankCategoriesPaginated$bankCategoriesPaginated)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? created_at = _undefined,
          Object? banks = _undefined,
          Object? $__typename = _undefined}) =>
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
              : ($__typename as String)));
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
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
        TRes>
    implements
        CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated(
      this._res);

  TRes _res;

  call(
          {int? id,
          String? name,
          String? created_at,
          List<Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks?>?
              banks,
          String? $__typename}) =>
      _res;
  banks(_fn) => _res;
}

class Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks {
  Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
      {required this.id,
      required this.name,
      required this.unique_id,
      required this.$__typename});

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
        $__typename: (l$$__typename as String));
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
    return Object.hashAll([l$id, l$name, l$unique_id, l$$__typename]);
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
              this, (i) => i);
}

abstract class CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
    TRes> {
  factory CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
          Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks instance,
          TRes Function(
                  Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks)
              then) =
      _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks;

  factory CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks;

  TRes call({int? id, String? name, String? unique_id, String? $__typename});
}

class _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
        TRes>
    implements
        CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
            TRes> {
  _CopyWithImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
      this._instance, this._then);

  final Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks
      _instance;

  final TRes Function(
      Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? unique_id = _undefined,
          Object? $__typename = _undefined}) =>
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
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
        TRes>
    implements
        CopyWith$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks<
            TRes> {
  _CopyWithStubImpl$Query$getBankCategoriesPaginated$bankCategoriesPaginated$banks(
      this._res);

  TRes _res;

  call({int? id, String? name, String? unique_id, String? $__typename}) => _res;
}
