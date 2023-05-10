import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$getBankTransactionPaginated {
  factory Variables$Query$getBankTransactionPaginated({
    String? bankRef,
    int? page,
    int? size,
  }) =>
      Variables$Query$getBankTransactionPaginated._({
        if (bankRef != null) r'bankRef': bankRef,
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getBankTransactionPaginated._(this._$data);

  factory Variables$Query$getBankTransactionPaginated.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bankRef')) {
      final l$bankRef = data['bankRef'];
      result$data['bankRef'] = (l$bankRef as String?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = (l$size as int?);
    }
    return Variables$Query$getBankTransactionPaginated._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bankRef => (_$data['bankRef'] as String?);
  int? get page => (_$data['page'] as int?);
  int? get size => (_$data['size'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bankRef')) {
      final l$bankRef = bankRef;
      result$data['bankRef'] = l$bankRef;
    }
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

  CopyWith$Variables$Query$getBankTransactionPaginated<
          Variables$Query$getBankTransactionPaginated>
      get copyWith => CopyWith$Variables$Query$getBankTransactionPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getBankTransactionPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankRef = bankRef;
    final lOther$bankRef = other.bankRef;
    if (_$data.containsKey('bankRef') != other._$data.containsKey('bankRef')) {
      return false;
    }
    if (l$bankRef != lOther$bankRef) {
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
    final l$bankRef = bankRef;
    final l$page = page;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('bankRef') ? l$bankRef : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getBankTransactionPaginated<TRes> {
  factory CopyWith$Variables$Query$getBankTransactionPaginated(
    Variables$Query$getBankTransactionPaginated instance,
    TRes Function(Variables$Query$getBankTransactionPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getBankTransactionPaginated;

  factory CopyWith$Variables$Query$getBankTransactionPaginated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getBankTransactionPaginated;

  TRes call({
    String? bankRef,
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getBankTransactionPaginated<TRes>
    implements CopyWith$Variables$Query$getBankTransactionPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getBankTransactionPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getBankTransactionPaginated _instance;

  final TRes Function(Variables$Query$getBankTransactionPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankRef = _undefined,
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getBankTransactionPaginated._({
        ..._instance._$data,
        if (bankRef != _undefined) 'bankRef': (bankRef as String?),
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getBankTransactionPaginated<TRes>
    implements CopyWith$Variables$Query$getBankTransactionPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getBankTransactionPaginated(this._res);

  TRes _res;

  call({
    String? bankRef,
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getBankTransactionPaginated {
  Query$getBankTransactionPaginated({
    this.bankTransactionRefPaginated,
    this.$__typename = 'TransactionReferenceQuery',
  });

  factory Query$getBankTransactionPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$bankTransactionRefPaginated = json['bankTransactionRefPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getBankTransactionPaginated(
      bankTransactionRefPaginated: (l$bankTransactionRefPaginated
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getBankTransactionPaginated$bankTransactionRefPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getBankTransactionPaginated$bankTransactionRefPaginated?>?
      bankTransactionRefPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankTransactionRefPaginated = bankTransactionRefPaginated;
    _resultData['bankTransactionRefPaginated'] =
        l$bankTransactionRefPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankTransactionRefPaginated = bankTransactionRefPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankTransactionRefPaginated == null
          ? null
          : Object.hashAll(l$bankTransactionRefPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getBankTransactionPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankTransactionRefPaginated = bankTransactionRefPaginated;
    final lOther$bankTransactionRefPaginated =
        other.bankTransactionRefPaginated;
    if (l$bankTransactionRefPaginated != null &&
        lOther$bankTransactionRefPaginated != null) {
      if (l$bankTransactionRefPaginated.length !=
          lOther$bankTransactionRefPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$bankTransactionRefPaginated.length; i++) {
        final l$bankTransactionRefPaginated$entry =
            l$bankTransactionRefPaginated[i];
        final lOther$bankTransactionRefPaginated$entry =
            lOther$bankTransactionRefPaginated[i];
        if (l$bankTransactionRefPaginated$entry !=
            lOther$bankTransactionRefPaginated$entry) {
          return false;
        }
      }
    } else if (l$bankTransactionRefPaginated !=
        lOther$bankTransactionRefPaginated) {
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

extension UtilityExtension$Query$getBankTransactionPaginated
    on Query$getBankTransactionPaginated {
  CopyWith$Query$getBankTransactionPaginated<Query$getBankTransactionPaginated>
      get copyWith => CopyWith$Query$getBankTransactionPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBankTransactionPaginated<TRes> {
  factory CopyWith$Query$getBankTransactionPaginated(
    Query$getBankTransactionPaginated instance,
    TRes Function(Query$getBankTransactionPaginated) then,
  ) = _CopyWithImpl$Query$getBankTransactionPaginated;

  factory CopyWith$Query$getBankTransactionPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getBankTransactionPaginated;

  TRes call({
    List<Query$getBankTransactionPaginated$bankTransactionRefPaginated?>?
        bankTransactionRefPaginated,
    String? $__typename,
  });
  TRes bankTransactionRefPaginated(
      Iterable<Query$getBankTransactionPaginated$bankTransactionRefPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated<
                      Query$getBankTransactionPaginated$bankTransactionRefPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getBankTransactionPaginated<TRes>
    implements CopyWith$Query$getBankTransactionPaginated<TRes> {
  _CopyWithImpl$Query$getBankTransactionPaginated(
    this._instance,
    this._then,
  );

  final Query$getBankTransactionPaginated _instance;

  final TRes Function(Query$getBankTransactionPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankTransactionRefPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBankTransactionPaginated(
        bankTransactionRefPaginated: bankTransactionRefPaginated == _undefined
            ? _instance.bankTransactionRefPaginated
            : (bankTransactionRefPaginated as List<
                Query$getBankTransactionPaginated$bankTransactionRefPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bankTransactionRefPaginated(
          Iterable<Query$getBankTransactionPaginated$bankTransactionRefPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated<
                          Query$getBankTransactionPaginated$bankTransactionRefPaginated>?>?)
              _fn) =>
      call(
          bankTransactionRefPaginated:
              _fn(_instance.bankTransactionRefPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getBankTransactionPaginated<TRes>
    implements CopyWith$Query$getBankTransactionPaginated<TRes> {
  _CopyWithStubImpl$Query$getBankTransactionPaginated(this._res);

  TRes _res;

  call({
    List<Query$getBankTransactionPaginated$bankTransactionRefPaginated?>?
        bankTransactionRefPaginated,
    String? $__typename,
  }) =>
      _res;
  bankTransactionRefPaginated(_fn) => _res;
}

const documentNodeQuerygetBankTransactionPaginated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getBankTransactionPaginated'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bankRef')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        name: NameNode(value: 'bankTransactionRefPaginated'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'bankRef'),
            value: VariableNode(name: NameNode(value: 'bankRef')),
          ),
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
            name: NameNode(value: 'trn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_ref'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'used'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'merchant'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bank'),
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
Query$getBankTransactionPaginated _parserFn$Query$getBankTransactionPaginated(
        Map<String, dynamic> data) =>
    Query$getBankTransactionPaginated.fromJson(data);
typedef OnQueryComplete$Query$getBankTransactionPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getBankTransactionPaginated?,
);

class Options$Query$getBankTransactionPaginated
    extends graphql.QueryOptions<Query$getBankTransactionPaginated> {
  Options$Query$getBankTransactionPaginated({
    String? operationName,
    Variables$Query$getBankTransactionPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getBankTransactionPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getBankTransactionPaginated? onComplete,
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
                        : _parserFn$Query$getBankTransactionPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetBankTransactionPaginated,
          parserFn: _parserFn$Query$getBankTransactionPaginated,
        );

  final OnQueryComplete$Query$getBankTransactionPaginated? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getBankTransactionPaginated
    extends graphql.WatchQueryOptions<Query$getBankTransactionPaginated> {
  WatchOptions$Query$getBankTransactionPaginated({
    String? operationName,
    Variables$Query$getBankTransactionPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getBankTransactionPaginated? typedOptimisticResult,
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
          document: documentNodeQuerygetBankTransactionPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getBankTransactionPaginated,
        );
}

class FetchMoreOptions$Query$getBankTransactionPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getBankTransactionPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getBankTransactionPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetBankTransactionPaginated,
        );
}

extension ClientExtension$Query$getBankTransactionPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getBankTransactionPaginated>>
      query$getBankTransactionPaginated(
              [Options$Query$getBankTransactionPaginated? options]) async =>
          await this
              .query(options ?? Options$Query$getBankTransactionPaginated());
  graphql.ObservableQuery<Query$getBankTransactionPaginated>
      watchQuery$getBankTransactionPaginated(
              [WatchOptions$Query$getBankTransactionPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getBankTransactionPaginated());
  void writeQuery$getBankTransactionPaginated({
    required Query$getBankTransactionPaginated data,
    Variables$Query$getBankTransactionPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetBankTransactionPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getBankTransactionPaginated? readQuery$getBankTransactionPaginated({
    Variables$Query$getBankTransactionPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetBankTransactionPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getBankTransactionPaginated.fromJson(result);
  }
}

class Query$getBankTransactionPaginated$bankTransactionRefPaginated {
  Query$getBankTransactionPaginated$bankTransactionRefPaginated({
    required this.trn,
    required this.customer_ref,
    required this.used,
    this.amount,
    required this.service_id,
    required this.bank_id,
    this.created_at,
    this.merchant,
    this.bank,
    this.$__typename = 'TransactionReferenceNumber',
  });

  factory Query$getBankTransactionPaginated$bankTransactionRefPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$trn = json['trn'];
    final l$customer_ref = json['customer_ref'];
    final l$used = json['used'];
    final l$amount = json['amount'];
    final l$service_id = json['service_id'];
    final l$bank_id = json['bank_id'];
    final l$created_at = json['created_at'];
    final l$merchant = json['merchant'];
    final l$bank = json['bank'];
    final l$$__typename = json['__typename'];
    return Query$getBankTransactionPaginated$bankTransactionRefPaginated(
      trn: (l$trn as String),
      customer_ref: (l$customer_ref as String),
      used: (l$used as bool),
      amount: (l$amount as String?),
      service_id: (l$service_id as String),
      bank_id: (l$bank_id as String),
      created_at: (l$created_at as String?),
      merchant: l$merchant == null
          ? null
          : Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant
              .fromJson((l$merchant as Map<String, dynamic>)),
      bank: l$bank == null
          ? null
          : Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank
              .fromJson((l$bank as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String trn;

  final String customer_ref;

  final bool used;

  final String? amount;

  final String service_id;

  final String bank_id;

  final String? created_at;

  final Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant?
      merchant;

  final Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank?
      bank;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trn = trn;
    _resultData['trn'] = l$trn;
    final l$customer_ref = customer_ref;
    _resultData['customer_ref'] = l$customer_ref;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$service_id = service_id;
    _resultData['service_id'] = l$service_id;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$merchant = merchant;
    _resultData['merchant'] = l$merchant?.toJson();
    final l$bank = bank;
    _resultData['bank'] = l$bank?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trn = trn;
    final l$customer_ref = customer_ref;
    final l$used = used;
    final l$amount = amount;
    final l$service_id = service_id;
    final l$bank_id = bank_id;
    final l$created_at = created_at;
    final l$merchant = merchant;
    final l$bank = bank;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trn,
      l$customer_ref,
      l$used,
      l$amount,
      l$service_id,
      l$bank_id,
      l$created_at,
      l$merchant,
      l$bank,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getBankTransactionPaginated$bankTransactionRefPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$trn = trn;
    final lOther$trn = other.trn;
    if (l$trn != lOther$trn) {
      return false;
    }
    final l$customer_ref = customer_ref;
    final lOther$customer_ref = other.customer_ref;
    if (l$customer_ref != lOther$customer_ref) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$service_id = service_id;
    final lOther$service_id = other.service_id;
    if (l$service_id != lOther$service_id) {
      return false;
    }
    final l$bank_id = bank_id;
    final lOther$bank_id = other.bank_id;
    if (l$bank_id != lOther$bank_id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$merchant = merchant;
    final lOther$merchant = other.merchant;
    if (l$merchant != lOther$merchant) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
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

extension UtilityExtension$Query$getBankTransactionPaginated$bankTransactionRefPaginated
    on Query$getBankTransactionPaginated$bankTransactionRefPaginated {
  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated<
          Query$getBankTransactionPaginated$bankTransactionRefPaginated>
      get copyWith =>
          CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated<
    TRes> {
  factory CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated(
    Query$getBankTransactionPaginated$bankTransactionRefPaginated instance,
    TRes Function(Query$getBankTransactionPaginated$bankTransactionRefPaginated)
        then,
  ) = _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated;

  factory CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated;

  TRes call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant?
        merchant,
    Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank? bank,
    String? $__typename,
  });
  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
      TRes> get merchant;
  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
      TRes> get bank;
}

class _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated<
            TRes> {
  _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Query$getBankTransactionPaginated$bankTransactionRefPaginated _instance;

  final TRes Function(
      Query$getBankTransactionPaginated$bankTransactionRefPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trn = _undefined,
    Object? customer_ref = _undefined,
    Object? used = _undefined,
    Object? amount = _undefined,
    Object? service_id = _undefined,
    Object? bank_id = _undefined,
    Object? created_at = _undefined,
    Object? merchant = _undefined,
    Object? bank = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBankTransactionPaginated$bankTransactionRefPaginated(
        trn: trn == _undefined || trn == null ? _instance.trn : (trn as String),
        customer_ref: customer_ref == _undefined || customer_ref == null
            ? _instance.customer_ref
            : (customer_ref as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        amount: amount == _undefined ? _instance.amount : (amount as String?),
        service_id: service_id == _undefined || service_id == null
            ? _instance.service_id
            : (service_id as String),
        bank_id: bank_id == _undefined || bank_id == null
            ? _instance.bank_id
            : (bank_id as String),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        merchant: merchant == _undefined
            ? _instance.merchant
            : (merchant
                as Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant?),
        bank: bank == _undefined
            ? _instance.bank
            : (bank
                as Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
      TRes> get merchant {
    final local$merchant = _instance.merchant;
    return local$merchant == null
        ? CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant
            .stub(_then(_instance))
        : CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant(
            local$merchant, (e) => call(merchant: e));
  }

  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
      TRes> get bank {
    final local$bank = _instance.bank;
    return local$bank == null
        ? CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank
            .stub(_then(_instance))
        : CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank(
            local$bank, (e) => call(bank: e));
  }
}

class _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated(
      this._res);

  TRes _res;

  call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant?
        merchant,
    Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank? bank,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
          TRes>
      get merchant =>
          CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant
              .stub(_res);
  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
          TRes>
      get bank =>
          CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank
              .stub(_res);
}

class Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant {
  Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'Merchant',
  });

  factory Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant
    on Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant {
  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
          Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant>
      get copyWith =>
          CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
    TRes> {
  factory CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant(
    Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant
        instance,
    TRes Function(
            Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant)
        then,
  ) = _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant;

  factory CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant(
    this._instance,
    this._then,
  );

  final Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant
      _instance;

  final TRes Function(
          Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$merchant(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank {
  Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'FinancialInstitution',
  });

  factory Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank
    on Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank {
  CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
          Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank>
      get copyWith =>
          CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
    TRes> {
  factory CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank(
    Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank instance,
    TRes Function(
            Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank)
        then,
  ) = _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank;

  factory CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
            TRes> {
  _CopyWithImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank(
    this._instance,
    this._then,
  );

  final Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank
      _instance;

  final TRes Function(
      Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank<
            TRes> {
  _CopyWithStubImpl$Query$getBankTransactionPaginated$bankTransactionRefPaginated$bank(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getCustomerTransactionPaginated {
  factory Variables$Query$getCustomerTransactionPaginated({
    String? customerRef,
    int? page,
    int? size,
  }) =>
      Variables$Query$getCustomerTransactionPaginated._({
        if (customerRef != null) r'customerRef': customerRef,
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getCustomerTransactionPaginated._(this._$data);

  factory Variables$Query$getCustomerTransactionPaginated.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('customerRef')) {
      final l$customerRef = data['customerRef'];
      result$data['customerRef'] = (l$customerRef as String?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = (l$size as int?);
    }
    return Variables$Query$getCustomerTransactionPaginated._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get customerRef => (_$data['customerRef'] as String?);
  int? get page => (_$data['page'] as int?);
  int? get size => (_$data['size'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('customerRef')) {
      final l$customerRef = customerRef;
      result$data['customerRef'] = l$customerRef;
    }
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

  CopyWith$Variables$Query$getCustomerTransactionPaginated<
          Variables$Query$getCustomerTransactionPaginated>
      get copyWith => CopyWith$Variables$Query$getCustomerTransactionPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getCustomerTransactionPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerRef = customerRef;
    final lOther$customerRef = other.customerRef;
    if (_$data.containsKey('customerRef') !=
        other._$data.containsKey('customerRef')) {
      return false;
    }
    if (l$customerRef != lOther$customerRef) {
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
    final l$customerRef = customerRef;
    final l$page = page;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('customerRef') ? l$customerRef : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getCustomerTransactionPaginated<TRes> {
  factory CopyWith$Variables$Query$getCustomerTransactionPaginated(
    Variables$Query$getCustomerTransactionPaginated instance,
    TRes Function(Variables$Query$getCustomerTransactionPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getCustomerTransactionPaginated;

  factory CopyWith$Variables$Query$getCustomerTransactionPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$getCustomerTransactionPaginated;

  TRes call({
    String? customerRef,
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getCustomerTransactionPaginated<TRes>
    implements CopyWith$Variables$Query$getCustomerTransactionPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getCustomerTransactionPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getCustomerTransactionPaginated _instance;

  final TRes Function(Variables$Query$getCustomerTransactionPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customerRef = _undefined,
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getCustomerTransactionPaginated._({
        ..._instance._$data,
        if (customerRef != _undefined) 'customerRef': (customerRef as String?),
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getCustomerTransactionPaginated<TRes>
    implements CopyWith$Variables$Query$getCustomerTransactionPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getCustomerTransactionPaginated(this._res);

  TRes _res;

  call({
    String? customerRef,
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getCustomerTransactionPaginated {
  Query$getCustomerTransactionPaginated({
    this.customerTransactionRefPaginated,
    this.$__typename = 'TransactionReferenceQuery',
  });

  factory Query$getCustomerTransactionPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$customerTransactionRefPaginated =
        json['customerTransactionRefPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getCustomerTransactionPaginated(
      customerTransactionRefPaginated: (l$customerTransactionRefPaginated
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getCustomerTransactionPaginated$customerTransactionRefPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated?>?
      customerTransactionRefPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customerTransactionRefPaginated = customerTransactionRefPaginated;
    _resultData['customerTransactionRefPaginated'] =
        l$customerTransactionRefPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customerTransactionRefPaginated = customerTransactionRefPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customerTransactionRefPaginated == null
          ? null
          : Object.hashAll(l$customerTransactionRefPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getCustomerTransactionPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerTransactionRefPaginated = customerTransactionRefPaginated;
    final lOther$customerTransactionRefPaginated =
        other.customerTransactionRefPaginated;
    if (l$customerTransactionRefPaginated != null &&
        lOther$customerTransactionRefPaginated != null) {
      if (l$customerTransactionRefPaginated.length !=
          lOther$customerTransactionRefPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$customerTransactionRefPaginated.length; i++) {
        final l$customerTransactionRefPaginated$entry =
            l$customerTransactionRefPaginated[i];
        final lOther$customerTransactionRefPaginated$entry =
            lOther$customerTransactionRefPaginated[i];
        if (l$customerTransactionRefPaginated$entry !=
            lOther$customerTransactionRefPaginated$entry) {
          return false;
        }
      }
    } else if (l$customerTransactionRefPaginated !=
        lOther$customerTransactionRefPaginated) {
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

extension UtilityExtension$Query$getCustomerTransactionPaginated
    on Query$getCustomerTransactionPaginated {
  CopyWith$Query$getCustomerTransactionPaginated<
          Query$getCustomerTransactionPaginated>
      get copyWith => CopyWith$Query$getCustomerTransactionPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCustomerTransactionPaginated<TRes> {
  factory CopyWith$Query$getCustomerTransactionPaginated(
    Query$getCustomerTransactionPaginated instance,
    TRes Function(Query$getCustomerTransactionPaginated) then,
  ) = _CopyWithImpl$Query$getCustomerTransactionPaginated;

  factory CopyWith$Query$getCustomerTransactionPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getCustomerTransactionPaginated;

  TRes call({
    List<Query$getCustomerTransactionPaginated$customerTransactionRefPaginated?>?
        customerTransactionRefPaginated,
    String? $__typename,
  });
  TRes customerTransactionRefPaginated(
      Iterable<Query$getCustomerTransactionPaginated$customerTransactionRefPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated<
                      Query$getCustomerTransactionPaginated$customerTransactionRefPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getCustomerTransactionPaginated<TRes>
    implements CopyWith$Query$getCustomerTransactionPaginated<TRes> {
  _CopyWithImpl$Query$getCustomerTransactionPaginated(
    this._instance,
    this._then,
  );

  final Query$getCustomerTransactionPaginated _instance;

  final TRes Function(Query$getCustomerTransactionPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customerTransactionRefPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCustomerTransactionPaginated(
        customerTransactionRefPaginated: customerTransactionRefPaginated ==
                _undefined
            ? _instance.customerTransactionRefPaginated
            : (customerTransactionRefPaginated as List<
                Query$getCustomerTransactionPaginated$customerTransactionRefPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes customerTransactionRefPaginated(
          Iterable<Query$getCustomerTransactionPaginated$customerTransactionRefPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated<
                          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated>?>?)
              _fn) =>
      call(
          customerTransactionRefPaginated: _fn(
              _instance.customerTransactionRefPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getCustomerTransactionPaginated<TRes>
    implements CopyWith$Query$getCustomerTransactionPaginated<TRes> {
  _CopyWithStubImpl$Query$getCustomerTransactionPaginated(this._res);

  TRes _res;

  call({
    List<Query$getCustomerTransactionPaginated$customerTransactionRefPaginated?>?
        customerTransactionRefPaginated,
    String? $__typename,
  }) =>
      _res;
  customerTransactionRefPaginated(_fn) => _res;
}

const documentNodeQuerygetCustomerTransactionPaginated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getCustomerTransactionPaginated'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customerRef')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        name: NameNode(value: 'customerTransactionRefPaginated'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'customerRef'),
            value: VariableNode(name: NameNode(value: 'customerRef')),
          ),
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
            name: NameNode(value: 'trn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_ref'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'used'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'merchant'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bank'),
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
Query$getCustomerTransactionPaginated
    _parserFn$Query$getCustomerTransactionPaginated(
            Map<String, dynamic> data) =>
        Query$getCustomerTransactionPaginated.fromJson(data);
typedef OnQueryComplete$Query$getCustomerTransactionPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getCustomerTransactionPaginated?,
);

class Options$Query$getCustomerTransactionPaginated
    extends graphql.QueryOptions<Query$getCustomerTransactionPaginated> {
  Options$Query$getCustomerTransactionPaginated({
    String? operationName,
    Variables$Query$getCustomerTransactionPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCustomerTransactionPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getCustomerTransactionPaginated? onComplete,
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
                        : _parserFn$Query$getCustomerTransactionPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetCustomerTransactionPaginated,
          parserFn: _parserFn$Query$getCustomerTransactionPaginated,
        );

  final OnQueryComplete$Query$getCustomerTransactionPaginated?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getCustomerTransactionPaginated
    extends graphql.WatchQueryOptions<Query$getCustomerTransactionPaginated> {
  WatchOptions$Query$getCustomerTransactionPaginated({
    String? operationName,
    Variables$Query$getCustomerTransactionPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCustomerTransactionPaginated? typedOptimisticResult,
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
          document: documentNodeQuerygetCustomerTransactionPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getCustomerTransactionPaginated,
        );
}

class FetchMoreOptions$Query$getCustomerTransactionPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getCustomerTransactionPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getCustomerTransactionPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetCustomerTransactionPaginated,
        );
}

extension ClientExtension$Query$getCustomerTransactionPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getCustomerTransactionPaginated>>
      query$getCustomerTransactionPaginated(
              [Options$Query$getCustomerTransactionPaginated? options]) async =>
          await this.query(
              options ?? Options$Query$getCustomerTransactionPaginated());
  graphql.ObservableQuery<Query$getCustomerTransactionPaginated>
      watchQuery$getCustomerTransactionPaginated(
              [WatchOptions$Query$getCustomerTransactionPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getCustomerTransactionPaginated());
  void writeQuery$getCustomerTransactionPaginated({
    required Query$getCustomerTransactionPaginated data,
    Variables$Query$getCustomerTransactionPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetCustomerTransactionPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getCustomerTransactionPaginated?
      readQuery$getCustomerTransactionPaginated({
    Variables$Query$getCustomerTransactionPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetCustomerTransactionPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getCustomerTransactionPaginated.fromJson(result);
  }
}

class Query$getCustomerTransactionPaginated$customerTransactionRefPaginated {
  Query$getCustomerTransactionPaginated$customerTransactionRefPaginated({
    required this.trn,
    required this.customer_ref,
    required this.used,
    this.amount,
    required this.service_id,
    required this.bank_id,
    this.created_at,
    this.merchant,
    this.bank,
    this.$__typename = 'TransactionReferenceNumber',
  });

  factory Query$getCustomerTransactionPaginated$customerTransactionRefPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$trn = json['trn'];
    final l$customer_ref = json['customer_ref'];
    final l$used = json['used'];
    final l$amount = json['amount'];
    final l$service_id = json['service_id'];
    final l$bank_id = json['bank_id'];
    final l$created_at = json['created_at'];
    final l$merchant = json['merchant'];
    final l$bank = json['bank'];
    final l$$__typename = json['__typename'];
    return Query$getCustomerTransactionPaginated$customerTransactionRefPaginated(
      trn: (l$trn as String),
      customer_ref: (l$customer_ref as String),
      used: (l$used as bool),
      amount: (l$amount as String?),
      service_id: (l$service_id as String),
      bank_id: (l$bank_id as String),
      created_at: (l$created_at as String?),
      merchant: l$merchant == null
          ? null
          : Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant
              .fromJson((l$merchant as Map<String, dynamic>)),
      bank: l$bank == null
          ? null
          : Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank
              .fromJson((l$bank as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String trn;

  final String customer_ref;

  final bool used;

  final String? amount;

  final String service_id;

  final String bank_id;

  final String? created_at;

  final Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant?
      merchant;

  final Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank?
      bank;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trn = trn;
    _resultData['trn'] = l$trn;
    final l$customer_ref = customer_ref;
    _resultData['customer_ref'] = l$customer_ref;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$service_id = service_id;
    _resultData['service_id'] = l$service_id;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$merchant = merchant;
    _resultData['merchant'] = l$merchant?.toJson();
    final l$bank = bank;
    _resultData['bank'] = l$bank?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trn = trn;
    final l$customer_ref = customer_ref;
    final l$used = used;
    final l$amount = amount;
    final l$service_id = service_id;
    final l$bank_id = bank_id;
    final l$created_at = created_at;
    final l$merchant = merchant;
    final l$bank = bank;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trn,
      l$customer_ref,
      l$used,
      l$amount,
      l$service_id,
      l$bank_id,
      l$created_at,
      l$merchant,
      l$bank,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getCustomerTransactionPaginated$customerTransactionRefPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$trn = trn;
    final lOther$trn = other.trn;
    if (l$trn != lOther$trn) {
      return false;
    }
    final l$customer_ref = customer_ref;
    final lOther$customer_ref = other.customer_ref;
    if (l$customer_ref != lOther$customer_ref) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$service_id = service_id;
    final lOther$service_id = other.service_id;
    if (l$service_id != lOther$service_id) {
      return false;
    }
    final l$bank_id = bank_id;
    final lOther$bank_id = other.bank_id;
    if (l$bank_id != lOther$bank_id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$merchant = merchant;
    final lOther$merchant = other.merchant;
    if (l$merchant != lOther$merchant) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
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

extension UtilityExtension$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated
    on Query$getCustomerTransactionPaginated$customerTransactionRefPaginated {
  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated<
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated>
      get copyWith =>
          CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated<
    TRes> {
  factory CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated(
    Query$getCustomerTransactionPaginated$customerTransactionRefPaginated
        instance,
    TRes Function(
            Query$getCustomerTransactionPaginated$customerTransactionRefPaginated)
        then,
  ) = _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated;

  factory CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated;

  TRes call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant?
        merchant,
    Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank?
        bank,
    String? $__typename,
  });
  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
      TRes> get merchant;
  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
      TRes> get bank;
}

class _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated<
            TRes> {
  _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Query$getCustomerTransactionPaginated$customerTransactionRefPaginated
      _instance;

  final TRes Function(
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trn = _undefined,
    Object? customer_ref = _undefined,
    Object? used = _undefined,
    Object? amount = _undefined,
    Object? service_id = _undefined,
    Object? bank_id = _undefined,
    Object? created_at = _undefined,
    Object? merchant = _undefined,
    Object? bank = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated(
        trn: trn == _undefined || trn == null ? _instance.trn : (trn as String),
        customer_ref: customer_ref == _undefined || customer_ref == null
            ? _instance.customer_ref
            : (customer_ref as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        amount: amount == _undefined ? _instance.amount : (amount as String?),
        service_id: service_id == _undefined || service_id == null
            ? _instance.service_id
            : (service_id as String),
        bank_id: bank_id == _undefined || bank_id == null
            ? _instance.bank_id
            : (bank_id as String),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        merchant: merchant == _undefined
            ? _instance.merchant
            : (merchant
                as Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant?),
        bank: bank == _undefined
            ? _instance.bank
            : (bank
                as Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
      TRes> get merchant {
    final local$merchant = _instance.merchant;
    return local$merchant == null
        ? CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant
            .stub(_then(_instance))
        : CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant(
            local$merchant, (e) => call(merchant: e));
  }

  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
      TRes> get bank {
    final local$bank = _instance.bank;
    return local$bank == null
        ? CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank
            .stub(_then(_instance))
        : CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank(
            local$bank, (e) => call(bank: e));
  }
}

class _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated(
      this._res);

  TRes _res;

  call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant?
        merchant,
    Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank?
        bank,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
          TRes>
      get merchant =>
          CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant
              .stub(_res);
  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
          TRes>
      get bank =>
          CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank
              .stub(_res);
}

class Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant {
  Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'Merchant',
  });

  factory Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant
    on Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant {
  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant>
      get copyWith =>
          CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
    TRes> {
  factory CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant(
    Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant
        instance,
    TRes Function(
            Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant)
        then,
  ) = _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant;

  factory CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant(
    this._instance,
    this._then,
  );

  final Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant
      _instance;

  final TRes Function(
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$merchant(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank {
  Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'FinancialInstitution',
  });

  factory Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank
    on Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank {
  CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank>
      get copyWith =>
          CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
    TRes> {
  factory CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank(
    Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank
        instance,
    TRes Function(
            Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank)
        then,
  ) = _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank;

  factory CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
            TRes> {
  _CopyWithImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank(
    this._instance,
    this._then,
  );

  final Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank
      _instance;

  final TRes Function(
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank<
            TRes> {
  _CopyWithStubImpl$Query$getCustomerTransactionPaginated$customerTransactionRefPaginated$bank(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getMerchantTransactionPaginated {
  factory Variables$Query$getMerchantTransactionPaginated({
    String? merchantRef,
    int? page,
    int? size,
  }) =>
      Variables$Query$getMerchantTransactionPaginated._({
        if (merchantRef != null) r'merchantRef': merchantRef,
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getMerchantTransactionPaginated._(this._$data);

  factory Variables$Query$getMerchantTransactionPaginated.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('merchantRef')) {
      final l$merchantRef = data['merchantRef'];
      result$data['merchantRef'] = (l$merchantRef as String?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = (l$size as int?);
    }
    return Variables$Query$getMerchantTransactionPaginated._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get merchantRef => (_$data['merchantRef'] as String?);
  int? get page => (_$data['page'] as int?);
  int? get size => (_$data['size'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('merchantRef')) {
      final l$merchantRef = merchantRef;
      result$data['merchantRef'] = l$merchantRef;
    }
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

  CopyWith$Variables$Query$getMerchantTransactionPaginated<
          Variables$Query$getMerchantTransactionPaginated>
      get copyWith => CopyWith$Variables$Query$getMerchantTransactionPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getMerchantTransactionPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$merchantRef = merchantRef;
    final lOther$merchantRef = other.merchantRef;
    if (_$data.containsKey('merchantRef') !=
        other._$data.containsKey('merchantRef')) {
      return false;
    }
    if (l$merchantRef != lOther$merchantRef) {
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
    final l$merchantRef = merchantRef;
    final l$page = page;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('merchantRef') ? l$merchantRef : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getMerchantTransactionPaginated<TRes> {
  factory CopyWith$Variables$Query$getMerchantTransactionPaginated(
    Variables$Query$getMerchantTransactionPaginated instance,
    TRes Function(Variables$Query$getMerchantTransactionPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getMerchantTransactionPaginated;

  factory CopyWith$Variables$Query$getMerchantTransactionPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$getMerchantTransactionPaginated;

  TRes call({
    String? merchantRef,
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getMerchantTransactionPaginated<TRes>
    implements CopyWith$Variables$Query$getMerchantTransactionPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getMerchantTransactionPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getMerchantTransactionPaginated _instance;

  final TRes Function(Variables$Query$getMerchantTransactionPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? merchantRef = _undefined,
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getMerchantTransactionPaginated._({
        ..._instance._$data,
        if (merchantRef != _undefined) 'merchantRef': (merchantRef as String?),
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getMerchantTransactionPaginated<TRes>
    implements CopyWith$Variables$Query$getMerchantTransactionPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getMerchantTransactionPaginated(this._res);

  TRes _res;

  call({
    String? merchantRef,
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getMerchantTransactionPaginated {
  Query$getMerchantTransactionPaginated({
    this.merchantTransactionRefPaginated,
    this.$__typename = 'TransactionReferenceQuery',
  });

  factory Query$getMerchantTransactionPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$merchantTransactionRefPaginated =
        json['merchantTransactionRefPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantTransactionPaginated(
      merchantTransactionRefPaginated: (l$merchantTransactionRefPaginated
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated?>?
      merchantTransactionRefPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$merchantTransactionRefPaginated = merchantTransactionRefPaginated;
    _resultData['merchantTransactionRefPaginated'] =
        l$merchantTransactionRefPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$merchantTransactionRefPaginated = merchantTransactionRefPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$merchantTransactionRefPaginated == null
          ? null
          : Object.hashAll(l$merchantTransactionRefPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMerchantTransactionPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$merchantTransactionRefPaginated = merchantTransactionRefPaginated;
    final lOther$merchantTransactionRefPaginated =
        other.merchantTransactionRefPaginated;
    if (l$merchantTransactionRefPaginated != null &&
        lOther$merchantTransactionRefPaginated != null) {
      if (l$merchantTransactionRefPaginated.length !=
          lOther$merchantTransactionRefPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$merchantTransactionRefPaginated.length; i++) {
        final l$merchantTransactionRefPaginated$entry =
            l$merchantTransactionRefPaginated[i];
        final lOther$merchantTransactionRefPaginated$entry =
            lOther$merchantTransactionRefPaginated[i];
        if (l$merchantTransactionRefPaginated$entry !=
            lOther$merchantTransactionRefPaginated$entry) {
          return false;
        }
      }
    } else if (l$merchantTransactionRefPaginated !=
        lOther$merchantTransactionRefPaginated) {
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

extension UtilityExtension$Query$getMerchantTransactionPaginated
    on Query$getMerchantTransactionPaginated {
  CopyWith$Query$getMerchantTransactionPaginated<
          Query$getMerchantTransactionPaginated>
      get copyWith => CopyWith$Query$getMerchantTransactionPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantTransactionPaginated<TRes> {
  factory CopyWith$Query$getMerchantTransactionPaginated(
    Query$getMerchantTransactionPaginated instance,
    TRes Function(Query$getMerchantTransactionPaginated) then,
  ) = _CopyWithImpl$Query$getMerchantTransactionPaginated;

  factory CopyWith$Query$getMerchantTransactionPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getMerchantTransactionPaginated;

  TRes call({
    List<Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated?>?
        merchantTransactionRefPaginated,
    String? $__typename,
  });
  TRes merchantTransactionRefPaginated(
      Iterable<Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated<
                      Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getMerchantTransactionPaginated<TRes>
    implements CopyWith$Query$getMerchantTransactionPaginated<TRes> {
  _CopyWithImpl$Query$getMerchantTransactionPaginated(
    this._instance,
    this._then,
  );

  final Query$getMerchantTransactionPaginated _instance;

  final TRes Function(Query$getMerchantTransactionPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? merchantTransactionRefPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMerchantTransactionPaginated(
        merchantTransactionRefPaginated: merchantTransactionRefPaginated ==
                _undefined
            ? _instance.merchantTransactionRefPaginated
            : (merchantTransactionRefPaginated as List<
                Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes merchantTransactionRefPaginated(
          Iterable<Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated<
                          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated>?>?)
              _fn) =>
      call(
          merchantTransactionRefPaginated: _fn(
              _instance.merchantTransactionRefPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getMerchantTransactionPaginated<TRes>
    implements CopyWith$Query$getMerchantTransactionPaginated<TRes> {
  _CopyWithStubImpl$Query$getMerchantTransactionPaginated(this._res);

  TRes _res;

  call({
    List<Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated?>?
        merchantTransactionRefPaginated,
    String? $__typename,
  }) =>
      _res;
  merchantTransactionRefPaginated(_fn) => _res;
}

const documentNodeQuerygetMerchantTransactionPaginated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getMerchantTransactionPaginated'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'merchantRef')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        name: NameNode(value: 'merchantTransactionRefPaginated'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'merchantRef'),
            value: VariableNode(name: NameNode(value: 'merchantRef')),
          ),
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
            name: NameNode(value: 'trn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_ref'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'used'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'merchant'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bank'),
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
Query$getMerchantTransactionPaginated
    _parserFn$Query$getMerchantTransactionPaginated(
            Map<String, dynamic> data) =>
        Query$getMerchantTransactionPaginated.fromJson(data);
typedef OnQueryComplete$Query$getMerchantTransactionPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getMerchantTransactionPaginated?,
);

class Options$Query$getMerchantTransactionPaginated
    extends graphql.QueryOptions<Query$getMerchantTransactionPaginated> {
  Options$Query$getMerchantTransactionPaginated({
    String? operationName,
    Variables$Query$getMerchantTransactionPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMerchantTransactionPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getMerchantTransactionPaginated? onComplete,
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
                        : _parserFn$Query$getMerchantTransactionPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetMerchantTransactionPaginated,
          parserFn: _parserFn$Query$getMerchantTransactionPaginated,
        );

  final OnQueryComplete$Query$getMerchantTransactionPaginated?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getMerchantTransactionPaginated
    extends graphql.WatchQueryOptions<Query$getMerchantTransactionPaginated> {
  WatchOptions$Query$getMerchantTransactionPaginated({
    String? operationName,
    Variables$Query$getMerchantTransactionPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMerchantTransactionPaginated? typedOptimisticResult,
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
          document: documentNodeQuerygetMerchantTransactionPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getMerchantTransactionPaginated,
        );
}

class FetchMoreOptions$Query$getMerchantTransactionPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getMerchantTransactionPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getMerchantTransactionPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetMerchantTransactionPaginated,
        );
}

extension ClientExtension$Query$getMerchantTransactionPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getMerchantTransactionPaginated>>
      query$getMerchantTransactionPaginated(
              [Options$Query$getMerchantTransactionPaginated? options]) async =>
          await this.query(
              options ?? Options$Query$getMerchantTransactionPaginated());
  graphql.ObservableQuery<Query$getMerchantTransactionPaginated>
      watchQuery$getMerchantTransactionPaginated(
              [WatchOptions$Query$getMerchantTransactionPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getMerchantTransactionPaginated());
  void writeQuery$getMerchantTransactionPaginated({
    required Query$getMerchantTransactionPaginated data,
    Variables$Query$getMerchantTransactionPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetMerchantTransactionPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getMerchantTransactionPaginated?
      readQuery$getMerchantTransactionPaginated({
    Variables$Query$getMerchantTransactionPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetMerchantTransactionPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getMerchantTransactionPaginated.fromJson(result);
  }
}

class Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated {
  Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated({
    required this.trn,
    required this.customer_ref,
    required this.used,
    this.amount,
    required this.service_id,
    required this.bank_id,
    this.created_at,
    this.merchant,
    this.bank,
    this.$__typename = 'TransactionReferenceNumber',
  });

  factory Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$trn = json['trn'];
    final l$customer_ref = json['customer_ref'];
    final l$used = json['used'];
    final l$amount = json['amount'];
    final l$service_id = json['service_id'];
    final l$bank_id = json['bank_id'];
    final l$created_at = json['created_at'];
    final l$merchant = json['merchant'];
    final l$bank = json['bank'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated(
      trn: (l$trn as String),
      customer_ref: (l$customer_ref as String),
      used: (l$used as bool),
      amount: (l$amount as String?),
      service_id: (l$service_id as String),
      bank_id: (l$bank_id as String),
      created_at: (l$created_at as String?),
      merchant: l$merchant == null
          ? null
          : Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant
              .fromJson((l$merchant as Map<String, dynamic>)),
      bank: l$bank == null
          ? null
          : Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank
              .fromJson((l$bank as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String trn;

  final String customer_ref;

  final bool used;

  final String? amount;

  final String service_id;

  final String bank_id;

  final String? created_at;

  final Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant?
      merchant;

  final Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank?
      bank;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trn = trn;
    _resultData['trn'] = l$trn;
    final l$customer_ref = customer_ref;
    _resultData['customer_ref'] = l$customer_ref;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$service_id = service_id;
    _resultData['service_id'] = l$service_id;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$merchant = merchant;
    _resultData['merchant'] = l$merchant?.toJson();
    final l$bank = bank;
    _resultData['bank'] = l$bank?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trn = trn;
    final l$customer_ref = customer_ref;
    final l$used = used;
    final l$amount = amount;
    final l$service_id = service_id;
    final l$bank_id = bank_id;
    final l$created_at = created_at;
    final l$merchant = merchant;
    final l$bank = bank;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trn,
      l$customer_ref,
      l$used,
      l$amount,
      l$service_id,
      l$bank_id,
      l$created_at,
      l$merchant,
      l$bank,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$trn = trn;
    final lOther$trn = other.trn;
    if (l$trn != lOther$trn) {
      return false;
    }
    final l$customer_ref = customer_ref;
    final lOther$customer_ref = other.customer_ref;
    if (l$customer_ref != lOther$customer_ref) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$service_id = service_id;
    final lOther$service_id = other.service_id;
    if (l$service_id != lOther$service_id) {
      return false;
    }
    final l$bank_id = bank_id;
    final lOther$bank_id = other.bank_id;
    if (l$bank_id != lOther$bank_id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$merchant = merchant;
    final lOther$merchant = other.merchant;
    if (l$merchant != lOther$merchant) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
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

extension UtilityExtension$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated
    on Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated {
  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated<
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated>
      get copyWith =>
          CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated<
    TRes> {
  factory CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated(
    Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated
        instance,
    TRes Function(
            Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated)
        then,
  ) = _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated;

  factory CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated;

  TRes call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant?
        merchant,
    Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank?
        bank,
    String? $__typename,
  });
  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
      TRes> get merchant;
  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
      TRes> get bank;
}

class _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated<
            TRes> {
  _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated
      _instance;

  final TRes Function(
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trn = _undefined,
    Object? customer_ref = _undefined,
    Object? used = _undefined,
    Object? amount = _undefined,
    Object? service_id = _undefined,
    Object? bank_id = _undefined,
    Object? created_at = _undefined,
    Object? merchant = _undefined,
    Object? bank = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated(
        trn: trn == _undefined || trn == null ? _instance.trn : (trn as String),
        customer_ref: customer_ref == _undefined || customer_ref == null
            ? _instance.customer_ref
            : (customer_ref as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        amount: amount == _undefined ? _instance.amount : (amount as String?),
        service_id: service_id == _undefined || service_id == null
            ? _instance.service_id
            : (service_id as String),
        bank_id: bank_id == _undefined || bank_id == null
            ? _instance.bank_id
            : (bank_id as String),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        merchant: merchant == _undefined
            ? _instance.merchant
            : (merchant
                as Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant?),
        bank: bank == _undefined
            ? _instance.bank
            : (bank
                as Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
      TRes> get merchant {
    final local$merchant = _instance.merchant;
    return local$merchant == null
        ? CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant
            .stub(_then(_instance))
        : CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant(
            local$merchant, (e) => call(merchant: e));
  }

  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
      TRes> get bank {
    final local$bank = _instance.bank;
    return local$bank == null
        ? CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank
            .stub(_then(_instance))
        : CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank(
            local$bank, (e) => call(bank: e));
  }
}

class _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated(
      this._res);

  TRes _res;

  call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant?
        merchant,
    Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank?
        bank,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
          TRes>
      get merchant =>
          CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant
              .stub(_res);
  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
          TRes>
      get bank =>
          CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank
              .stub(_res);
}

class Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant {
  Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'Merchant',
  });

  factory Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant
    on Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant {
  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant>
      get copyWith =>
          CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
    TRes> {
  factory CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant(
    Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant
        instance,
    TRes Function(
            Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant)
        then,
  ) = _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant;

  factory CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant(
    this._instance,
    this._then,
  );

  final Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant
      _instance;

  final TRes Function(
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$merchant(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank {
  Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'FinancialInstitution',
  });

  factory Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank
    on Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank {
  CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank>
      get copyWith =>
          CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
    TRes> {
  factory CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank(
    Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank
        instance,
    TRes Function(
            Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank)
        then,
  ) = _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank;

  factory CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
            TRes> {
  _CopyWithImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank(
    this._instance,
    this._then,
  );

  final Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank
      _instance;

  final TRes Function(
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank<
            TRes> {
  _CopyWithStubImpl$Query$getMerchantTransactionPaginated$merchantTransactionRefPaginated$bank(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getUnusedTransactionRefPaginated {
  factory Variables$Query$getUnusedTransactionRefPaginated({
    int? page,
    int? size,
  }) =>
      Variables$Query$getUnusedTransactionRefPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getUnusedTransactionRefPaginated._(this._$data);

  factory Variables$Query$getUnusedTransactionRefPaginated.fromJson(
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
    return Variables$Query$getUnusedTransactionRefPaginated._(result$data);
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

  CopyWith$Variables$Query$getUnusedTransactionRefPaginated<
          Variables$Query$getUnusedTransactionRefPaginated>
      get copyWith => CopyWith$Variables$Query$getUnusedTransactionRefPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getUnusedTransactionRefPaginated) ||
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

abstract class CopyWith$Variables$Query$getUnusedTransactionRefPaginated<TRes> {
  factory CopyWith$Variables$Query$getUnusedTransactionRefPaginated(
    Variables$Query$getUnusedTransactionRefPaginated instance,
    TRes Function(Variables$Query$getUnusedTransactionRefPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getUnusedTransactionRefPaginated;

  factory CopyWith$Variables$Query$getUnusedTransactionRefPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$getUnusedTransactionRefPaginated;

  TRes call({
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getUnusedTransactionRefPaginated<TRes>
    implements CopyWith$Variables$Query$getUnusedTransactionRefPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getUnusedTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getUnusedTransactionRefPaginated _instance;

  final TRes Function(Variables$Query$getUnusedTransactionRefPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getUnusedTransactionRefPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getUnusedTransactionRefPaginated<TRes>
    implements CopyWith$Variables$Query$getUnusedTransactionRefPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getUnusedTransactionRefPaginated(this._res);

  TRes _res;

  call({
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getUnusedTransactionRefPaginated {
  Query$getUnusedTransactionRefPaginated({
    this.unusedTransactionRefPaginated,
    this.$__typename = 'TransactionReferenceQuery',
  });

  factory Query$getUnusedTransactionRefPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$unusedTransactionRefPaginated =
        json['unusedTransactionRefPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getUnusedTransactionRefPaginated(
      unusedTransactionRefPaginated: (l$unusedTransactionRefPaginated
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated?>?
      unusedTransactionRefPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unusedTransactionRefPaginated = unusedTransactionRefPaginated;
    _resultData['unusedTransactionRefPaginated'] =
        l$unusedTransactionRefPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unusedTransactionRefPaginated = unusedTransactionRefPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unusedTransactionRefPaginated == null
          ? null
          : Object.hashAll(l$unusedTransactionRefPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getUnusedTransactionRefPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unusedTransactionRefPaginated = unusedTransactionRefPaginated;
    final lOther$unusedTransactionRefPaginated =
        other.unusedTransactionRefPaginated;
    if (l$unusedTransactionRefPaginated != null &&
        lOther$unusedTransactionRefPaginated != null) {
      if (l$unusedTransactionRefPaginated.length !=
          lOther$unusedTransactionRefPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$unusedTransactionRefPaginated.length; i++) {
        final l$unusedTransactionRefPaginated$entry =
            l$unusedTransactionRefPaginated[i];
        final lOther$unusedTransactionRefPaginated$entry =
            lOther$unusedTransactionRefPaginated[i];
        if (l$unusedTransactionRefPaginated$entry !=
            lOther$unusedTransactionRefPaginated$entry) {
          return false;
        }
      }
    } else if (l$unusedTransactionRefPaginated !=
        lOther$unusedTransactionRefPaginated) {
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

extension UtilityExtension$Query$getUnusedTransactionRefPaginated
    on Query$getUnusedTransactionRefPaginated {
  CopyWith$Query$getUnusedTransactionRefPaginated<
          Query$getUnusedTransactionRefPaginated>
      get copyWith => CopyWith$Query$getUnusedTransactionRefPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUnusedTransactionRefPaginated<TRes> {
  factory CopyWith$Query$getUnusedTransactionRefPaginated(
    Query$getUnusedTransactionRefPaginated instance,
    TRes Function(Query$getUnusedTransactionRefPaginated) then,
  ) = _CopyWithImpl$Query$getUnusedTransactionRefPaginated;

  factory CopyWith$Query$getUnusedTransactionRefPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated;

  TRes call({
    List<Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated?>?
        unusedTransactionRefPaginated,
    String? $__typename,
  });
  TRes unusedTransactionRefPaginated(
      Iterable<Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated<
                      Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getUnusedTransactionRefPaginated<TRes>
    implements CopyWith$Query$getUnusedTransactionRefPaginated<TRes> {
  _CopyWithImpl$Query$getUnusedTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Query$getUnusedTransactionRefPaginated _instance;

  final TRes Function(Query$getUnusedTransactionRefPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unusedTransactionRefPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getUnusedTransactionRefPaginated(
        unusedTransactionRefPaginated: unusedTransactionRefPaginated ==
                _undefined
            ? _instance.unusedTransactionRefPaginated
            : (unusedTransactionRefPaginated as List<
                Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes unusedTransactionRefPaginated(
          Iterable<Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated<
                          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated>?>?)
              _fn) =>
      call(
          unusedTransactionRefPaginated:
              _fn(_instance.unusedTransactionRefPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated<TRes>
    implements CopyWith$Query$getUnusedTransactionRefPaginated<TRes> {
  _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated(this._res);

  TRes _res;

  call({
    List<Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated?>?
        unusedTransactionRefPaginated,
    String? $__typename,
  }) =>
      _res;
  unusedTransactionRefPaginated(_fn) => _res;
}

const documentNodeQuerygetUnusedTransactionRefPaginated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getUnusedTransactionRefPaginated'),
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
        name: NameNode(value: 'unusedTransactionRefPaginated'),
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
            name: NameNode(value: 'trn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_ref'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'used'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'merchant'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bank'),
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
Query$getUnusedTransactionRefPaginated
    _parserFn$Query$getUnusedTransactionRefPaginated(
            Map<String, dynamic> data) =>
        Query$getUnusedTransactionRefPaginated.fromJson(data);
typedef OnQueryComplete$Query$getUnusedTransactionRefPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getUnusedTransactionRefPaginated?,
);

class Options$Query$getUnusedTransactionRefPaginated
    extends graphql.QueryOptions<Query$getUnusedTransactionRefPaginated> {
  Options$Query$getUnusedTransactionRefPaginated({
    String? operationName,
    Variables$Query$getUnusedTransactionRefPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUnusedTransactionRefPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getUnusedTransactionRefPaginated? onComplete,
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
                        : _parserFn$Query$getUnusedTransactionRefPaginated(
                            data),
                  ),
          onError: onError,
          document: documentNodeQuerygetUnusedTransactionRefPaginated,
          parserFn: _parserFn$Query$getUnusedTransactionRefPaginated,
        );

  final OnQueryComplete$Query$getUnusedTransactionRefPaginated?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getUnusedTransactionRefPaginated
    extends graphql.WatchQueryOptions<Query$getUnusedTransactionRefPaginated> {
  WatchOptions$Query$getUnusedTransactionRefPaginated({
    String? operationName,
    Variables$Query$getUnusedTransactionRefPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUnusedTransactionRefPaginated? typedOptimisticResult,
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
          document: documentNodeQuerygetUnusedTransactionRefPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getUnusedTransactionRefPaginated,
        );
}

class FetchMoreOptions$Query$getUnusedTransactionRefPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getUnusedTransactionRefPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getUnusedTransactionRefPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetUnusedTransactionRefPaginated,
        );
}

extension ClientExtension$Query$getUnusedTransactionRefPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getUnusedTransactionRefPaginated>>
      query$getUnusedTransactionRefPaginated(
              [Options$Query$getUnusedTransactionRefPaginated?
                  options]) async =>
          await this.query(
              options ?? Options$Query$getUnusedTransactionRefPaginated());
  graphql.ObservableQuery<Query$getUnusedTransactionRefPaginated>
      watchQuery$getUnusedTransactionRefPaginated(
              [WatchOptions$Query$getUnusedTransactionRefPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getUnusedTransactionRefPaginated());
  void writeQuery$getUnusedTransactionRefPaginated({
    required Query$getUnusedTransactionRefPaginated data,
    Variables$Query$getUnusedTransactionRefPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetUnusedTransactionRefPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getUnusedTransactionRefPaginated?
      readQuery$getUnusedTransactionRefPaginated({
    Variables$Query$getUnusedTransactionRefPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetUnusedTransactionRefPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getUnusedTransactionRefPaginated.fromJson(result);
  }
}

class Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated {
  Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated({
    required this.trn,
    required this.customer_ref,
    required this.used,
    this.amount,
    required this.service_id,
    required this.bank_id,
    this.created_at,
    this.merchant,
    this.bank,
    this.$__typename = 'TransactionReferenceNumber',
  });

  factory Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$trn = json['trn'];
    final l$customer_ref = json['customer_ref'];
    final l$used = json['used'];
    final l$amount = json['amount'];
    final l$service_id = json['service_id'];
    final l$bank_id = json['bank_id'];
    final l$created_at = json['created_at'];
    final l$merchant = json['merchant'];
    final l$bank = json['bank'];
    final l$$__typename = json['__typename'];
    return Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated(
      trn: (l$trn as String),
      customer_ref: (l$customer_ref as String),
      used: (l$used as bool),
      amount: (l$amount as String?),
      service_id: (l$service_id as String),
      bank_id: (l$bank_id as String),
      created_at: (l$created_at as String?),
      merchant: l$merchant == null
          ? null
          : Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant
              .fromJson((l$merchant as Map<String, dynamic>)),
      bank: l$bank == null
          ? null
          : Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank
              .fromJson((l$bank as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String trn;

  final String customer_ref;

  final bool used;

  final String? amount;

  final String service_id;

  final String bank_id;

  final String? created_at;

  final Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant?
      merchant;

  final Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank?
      bank;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trn = trn;
    _resultData['trn'] = l$trn;
    final l$customer_ref = customer_ref;
    _resultData['customer_ref'] = l$customer_ref;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$service_id = service_id;
    _resultData['service_id'] = l$service_id;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$merchant = merchant;
    _resultData['merchant'] = l$merchant?.toJson();
    final l$bank = bank;
    _resultData['bank'] = l$bank?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trn = trn;
    final l$customer_ref = customer_ref;
    final l$used = used;
    final l$amount = amount;
    final l$service_id = service_id;
    final l$bank_id = bank_id;
    final l$created_at = created_at;
    final l$merchant = merchant;
    final l$bank = bank;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trn,
      l$customer_ref,
      l$used,
      l$amount,
      l$service_id,
      l$bank_id,
      l$created_at,
      l$merchant,
      l$bank,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$trn = trn;
    final lOther$trn = other.trn;
    if (l$trn != lOther$trn) {
      return false;
    }
    final l$customer_ref = customer_ref;
    final lOther$customer_ref = other.customer_ref;
    if (l$customer_ref != lOther$customer_ref) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$service_id = service_id;
    final lOther$service_id = other.service_id;
    if (l$service_id != lOther$service_id) {
      return false;
    }
    final l$bank_id = bank_id;
    final lOther$bank_id = other.bank_id;
    if (l$bank_id != lOther$bank_id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$merchant = merchant;
    final lOther$merchant = other.merchant;
    if (l$merchant != lOther$merchant) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
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

extension UtilityExtension$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated
    on Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated {
  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated<
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated>
      get copyWith =>
          CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated<
    TRes> {
  factory CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated(
    Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated
        instance,
    TRes Function(
            Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated)
        then,
  ) = _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated;

  factory CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated;

  TRes call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant?
        merchant,
    Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank?
        bank,
    String? $__typename,
  });
  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
      TRes> get merchant;
  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
      TRes> get bank;
}

class _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated<
            TRes> {
  _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated
      _instance;

  final TRes Function(
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trn = _undefined,
    Object? customer_ref = _undefined,
    Object? used = _undefined,
    Object? amount = _undefined,
    Object? service_id = _undefined,
    Object? bank_id = _undefined,
    Object? created_at = _undefined,
    Object? merchant = _undefined,
    Object? bank = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated(
        trn: trn == _undefined || trn == null ? _instance.trn : (trn as String),
        customer_ref: customer_ref == _undefined || customer_ref == null
            ? _instance.customer_ref
            : (customer_ref as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        amount: amount == _undefined ? _instance.amount : (amount as String?),
        service_id: service_id == _undefined || service_id == null
            ? _instance.service_id
            : (service_id as String),
        bank_id: bank_id == _undefined || bank_id == null
            ? _instance.bank_id
            : (bank_id as String),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        merchant: merchant == _undefined
            ? _instance.merchant
            : (merchant
                as Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant?),
        bank: bank == _undefined
            ? _instance.bank
            : (bank
                as Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
      TRes> get merchant {
    final local$merchant = _instance.merchant;
    return local$merchant == null
        ? CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant
            .stub(_then(_instance))
        : CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant(
            local$merchant, (e) => call(merchant: e));
  }

  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
      TRes> get bank {
    final local$bank = _instance.bank;
    return local$bank == null
        ? CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank
            .stub(_then(_instance))
        : CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank(
            local$bank, (e) => call(bank: e));
  }
}

class _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated(
      this._res);

  TRes _res;

  call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant?
        merchant,
    Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank?
        bank,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
          TRes>
      get merchant =>
          CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant
              .stub(_res);
  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
          TRes>
      get bank =>
          CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank
              .stub(_res);
}

class Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant {
  Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'Merchant',
  });

  factory Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant
    on Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant {
  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant>
      get copyWith =>
          CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
    TRes> {
  factory CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant(
    Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant
        instance,
    TRes Function(
            Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant)
        then,
  ) = _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant;

  factory CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant(
    this._instance,
    this._then,
  );

  final Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant
      _instance;

  final TRes Function(
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$merchant(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank {
  Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'FinancialInstitution',
  });

  factory Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank
    on Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank {
  CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank>
      get copyWith =>
          CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
    TRes> {
  factory CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank(
    Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank
        instance,
    TRes Function(
            Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank)
        then,
  ) = _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank;

  factory CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
            TRes> {
  _CopyWithImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank(
    this._instance,
    this._then,
  );

  final Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank
      _instance;

  final TRes Function(
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank<
            TRes> {
  _CopyWithStubImpl$Query$getUnusedTransactionRefPaginated$unusedTransactionRefPaginated$bank(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getUsedTransactionRefPaginated {
  factory Variables$Query$getUsedTransactionRefPaginated({
    int? page,
    int? size,
  }) =>
      Variables$Query$getUsedTransactionRefPaginated._({
        if (page != null) r'page': page,
        if (size != null) r'size': size,
      });

  Variables$Query$getUsedTransactionRefPaginated._(this._$data);

  factory Variables$Query$getUsedTransactionRefPaginated.fromJson(
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
    return Variables$Query$getUsedTransactionRefPaginated._(result$data);
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

  CopyWith$Variables$Query$getUsedTransactionRefPaginated<
          Variables$Query$getUsedTransactionRefPaginated>
      get copyWith => CopyWith$Variables$Query$getUsedTransactionRefPaginated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getUsedTransactionRefPaginated) ||
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

abstract class CopyWith$Variables$Query$getUsedTransactionRefPaginated<TRes> {
  factory CopyWith$Variables$Query$getUsedTransactionRefPaginated(
    Variables$Query$getUsedTransactionRefPaginated instance,
    TRes Function(Variables$Query$getUsedTransactionRefPaginated) then,
  ) = _CopyWithImpl$Variables$Query$getUsedTransactionRefPaginated;

  factory CopyWith$Variables$Query$getUsedTransactionRefPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$getUsedTransactionRefPaginated;

  TRes call({
    int? page,
    int? size,
  });
}

class _CopyWithImpl$Variables$Query$getUsedTransactionRefPaginated<TRes>
    implements CopyWith$Variables$Query$getUsedTransactionRefPaginated<TRes> {
  _CopyWithImpl$Variables$Query$getUsedTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Variables$Query$getUsedTransactionRefPaginated _instance;

  final TRes Function(Variables$Query$getUsedTransactionRefPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Variables$Query$getUsedTransactionRefPaginated._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (size != _undefined) 'size': (size as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getUsedTransactionRefPaginated<TRes>
    implements CopyWith$Variables$Query$getUsedTransactionRefPaginated<TRes> {
  _CopyWithStubImpl$Variables$Query$getUsedTransactionRefPaginated(this._res);

  TRes _res;

  call({
    int? page,
    int? size,
  }) =>
      _res;
}

class Query$getUsedTransactionRefPaginated {
  Query$getUsedTransactionRefPaginated({
    this.usedTransactionRefPaginated,
    this.$__typename = 'TransactionReferenceQuery',
  });

  factory Query$getUsedTransactionRefPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$usedTransactionRefPaginated = json['usedTransactionRefPaginated'];
    final l$$__typename = json['__typename'];
    return Query$getUsedTransactionRefPaginated(
      usedTransactionRefPaginated: (l$usedTransactionRefPaginated
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated?>?
      usedTransactionRefPaginated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$usedTransactionRefPaginated = usedTransactionRefPaginated;
    _resultData['usedTransactionRefPaginated'] =
        l$usedTransactionRefPaginated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$usedTransactionRefPaginated = usedTransactionRefPaginated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$usedTransactionRefPaginated == null
          ? null
          : Object.hashAll(l$usedTransactionRefPaginated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getUsedTransactionRefPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$usedTransactionRefPaginated = usedTransactionRefPaginated;
    final lOther$usedTransactionRefPaginated =
        other.usedTransactionRefPaginated;
    if (l$usedTransactionRefPaginated != null &&
        lOther$usedTransactionRefPaginated != null) {
      if (l$usedTransactionRefPaginated.length !=
          lOther$usedTransactionRefPaginated.length) {
        return false;
      }
      for (int i = 0; i < l$usedTransactionRefPaginated.length; i++) {
        final l$usedTransactionRefPaginated$entry =
            l$usedTransactionRefPaginated[i];
        final lOther$usedTransactionRefPaginated$entry =
            lOther$usedTransactionRefPaginated[i];
        if (l$usedTransactionRefPaginated$entry !=
            lOther$usedTransactionRefPaginated$entry) {
          return false;
        }
      }
    } else if (l$usedTransactionRefPaginated !=
        lOther$usedTransactionRefPaginated) {
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

extension UtilityExtension$Query$getUsedTransactionRefPaginated
    on Query$getUsedTransactionRefPaginated {
  CopyWith$Query$getUsedTransactionRefPaginated<
          Query$getUsedTransactionRefPaginated>
      get copyWith => CopyWith$Query$getUsedTransactionRefPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUsedTransactionRefPaginated<TRes> {
  factory CopyWith$Query$getUsedTransactionRefPaginated(
    Query$getUsedTransactionRefPaginated instance,
    TRes Function(Query$getUsedTransactionRefPaginated) then,
  ) = _CopyWithImpl$Query$getUsedTransactionRefPaginated;

  factory CopyWith$Query$getUsedTransactionRefPaginated.stub(TRes res) =
      _CopyWithStubImpl$Query$getUsedTransactionRefPaginated;

  TRes call({
    List<Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated?>?
        usedTransactionRefPaginated,
    String? $__typename,
  });
  TRes usedTransactionRefPaginated(
      Iterable<Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated?>? Function(
              Iterable<
                  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated<
                      Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated>?>?)
          _fn);
}

class _CopyWithImpl$Query$getUsedTransactionRefPaginated<TRes>
    implements CopyWith$Query$getUsedTransactionRefPaginated<TRes> {
  _CopyWithImpl$Query$getUsedTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Query$getUsedTransactionRefPaginated _instance;

  final TRes Function(Query$getUsedTransactionRefPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? usedTransactionRefPaginated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getUsedTransactionRefPaginated(
        usedTransactionRefPaginated: usedTransactionRefPaginated == _undefined
            ? _instance.usedTransactionRefPaginated
            : (usedTransactionRefPaginated as List<
                Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes usedTransactionRefPaginated(
          Iterable<Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated?>? Function(
                  Iterable<
                      CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated<
                          Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated>?>?)
              _fn) =>
      call(
          usedTransactionRefPaginated:
              _fn(_instance.usedTransactionRefPaginated?.map((e) => e == null
                  ? null
                  : CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$getUsedTransactionRefPaginated<TRes>
    implements CopyWith$Query$getUsedTransactionRefPaginated<TRes> {
  _CopyWithStubImpl$Query$getUsedTransactionRefPaginated(this._res);

  TRes _res;

  call({
    List<Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated?>?
        usedTransactionRefPaginated,
    String? $__typename,
  }) =>
      _res;
  usedTransactionRefPaginated(_fn) => _res;
}

const documentNodeQuerygetUsedTransactionRefPaginated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getUsedTransactionRefPaginated'),
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
        name: NameNode(value: 'usedTransactionRefPaginated'),
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
            name: NameNode(value: 'trn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_ref'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'used'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'service_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank_id'),
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
            name: NameNode(value: 'merchant'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bank'),
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
Query$getUsedTransactionRefPaginated
    _parserFn$Query$getUsedTransactionRefPaginated(Map<String, dynamic> data) =>
        Query$getUsedTransactionRefPaginated.fromJson(data);
typedef OnQueryComplete$Query$getUsedTransactionRefPaginated = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getUsedTransactionRefPaginated?,
);

class Options$Query$getUsedTransactionRefPaginated
    extends graphql.QueryOptions<Query$getUsedTransactionRefPaginated> {
  Options$Query$getUsedTransactionRefPaginated({
    String? operationName,
    Variables$Query$getUsedTransactionRefPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUsedTransactionRefPaginated? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getUsedTransactionRefPaginated? onComplete,
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
                        : _parserFn$Query$getUsedTransactionRefPaginated(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetUsedTransactionRefPaginated,
          parserFn: _parserFn$Query$getUsedTransactionRefPaginated,
        );

  final OnQueryComplete$Query$getUsedTransactionRefPaginated?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getUsedTransactionRefPaginated
    extends graphql.WatchQueryOptions<Query$getUsedTransactionRefPaginated> {
  WatchOptions$Query$getUsedTransactionRefPaginated({
    String? operationName,
    Variables$Query$getUsedTransactionRefPaginated? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUsedTransactionRefPaginated? typedOptimisticResult,
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
          document: documentNodeQuerygetUsedTransactionRefPaginated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getUsedTransactionRefPaginated,
        );
}

class FetchMoreOptions$Query$getUsedTransactionRefPaginated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getUsedTransactionRefPaginated({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getUsedTransactionRefPaginated? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetUsedTransactionRefPaginated,
        );
}

extension ClientExtension$Query$getUsedTransactionRefPaginated
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getUsedTransactionRefPaginated>>
      query$getUsedTransactionRefPaginated(
              [Options$Query$getUsedTransactionRefPaginated? options]) async =>
          await this
              .query(options ?? Options$Query$getUsedTransactionRefPaginated());
  graphql.ObservableQuery<Query$getUsedTransactionRefPaginated>
      watchQuery$getUsedTransactionRefPaginated(
              [WatchOptions$Query$getUsedTransactionRefPaginated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$getUsedTransactionRefPaginated());
  void writeQuery$getUsedTransactionRefPaginated({
    required Query$getUsedTransactionRefPaginated data,
    Variables$Query$getUsedTransactionRefPaginated? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetUsedTransactionRefPaginated),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getUsedTransactionRefPaginated?
      readQuery$getUsedTransactionRefPaginated({
    Variables$Query$getUsedTransactionRefPaginated? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetUsedTransactionRefPaginated),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getUsedTransactionRefPaginated.fromJson(result);
  }
}

class Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated {
  Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated({
    required this.trn,
    required this.customer_ref,
    required this.used,
    this.amount,
    required this.service_id,
    required this.bank_id,
    this.created_at,
    this.merchant,
    this.bank,
    this.$__typename = 'TransactionReferenceNumber',
  });

  factory Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated.fromJson(
      Map<String, dynamic> json) {
    final l$trn = json['trn'];
    final l$customer_ref = json['customer_ref'];
    final l$used = json['used'];
    final l$amount = json['amount'];
    final l$service_id = json['service_id'];
    final l$bank_id = json['bank_id'];
    final l$created_at = json['created_at'];
    final l$merchant = json['merchant'];
    final l$bank = json['bank'];
    final l$$__typename = json['__typename'];
    return Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated(
      trn: (l$trn as String),
      customer_ref: (l$customer_ref as String),
      used: (l$used as bool),
      amount: (l$amount as String?),
      service_id: (l$service_id as String),
      bank_id: (l$bank_id as String),
      created_at: (l$created_at as String?),
      merchant: l$merchant == null
          ? null
          : Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant
              .fromJson((l$merchant as Map<String, dynamic>)),
      bank: l$bank == null
          ? null
          : Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank
              .fromJson((l$bank as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String trn;

  final String customer_ref;

  final bool used;

  final String? amount;

  final String service_id;

  final String bank_id;

  final String? created_at;

  final Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant?
      merchant;

  final Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank?
      bank;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trn = trn;
    _resultData['trn'] = l$trn;
    final l$customer_ref = customer_ref;
    _resultData['customer_ref'] = l$customer_ref;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$service_id = service_id;
    _resultData['service_id'] = l$service_id;
    final l$bank_id = bank_id;
    _resultData['bank_id'] = l$bank_id;
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$merchant = merchant;
    _resultData['merchant'] = l$merchant?.toJson();
    final l$bank = bank;
    _resultData['bank'] = l$bank?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trn = trn;
    final l$customer_ref = customer_ref;
    final l$used = used;
    final l$amount = amount;
    final l$service_id = service_id;
    final l$bank_id = bank_id;
    final l$created_at = created_at;
    final l$merchant = merchant;
    final l$bank = bank;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trn,
      l$customer_ref,
      l$used,
      l$amount,
      l$service_id,
      l$bank_id,
      l$created_at,
      l$merchant,
      l$bank,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$trn = trn;
    final lOther$trn = other.trn;
    if (l$trn != lOther$trn) {
      return false;
    }
    final l$customer_ref = customer_ref;
    final lOther$customer_ref = other.customer_ref;
    if (l$customer_ref != lOther$customer_ref) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$service_id = service_id;
    final lOther$service_id = other.service_id;
    if (l$service_id != lOther$service_id) {
      return false;
    }
    final l$bank_id = bank_id;
    final lOther$bank_id = other.bank_id;
    if (l$bank_id != lOther$bank_id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$merchant = merchant;
    final lOther$merchant = other.merchant;
    if (l$merchant != lOther$merchant) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
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

extension UtilityExtension$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated
    on Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated {
  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated<
          Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated>
      get copyWith =>
          CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated<
    TRes> {
  factory CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated(
    Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated instance,
    TRes Function(
            Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated)
        then,
  ) = _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated;

  factory CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated;

  TRes call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant?
        merchant,
    Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank? bank,
    String? $__typename,
  });
  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
      TRes> get merchant;
  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
      TRes> get bank;
}

class _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated<
            TRes> {
  _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated(
    this._instance,
    this._then,
  );

  final Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated
      _instance;

  final TRes Function(
      Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trn = _undefined,
    Object? customer_ref = _undefined,
    Object? used = _undefined,
    Object? amount = _undefined,
    Object? service_id = _undefined,
    Object? bank_id = _undefined,
    Object? created_at = _undefined,
    Object? merchant = _undefined,
    Object? bank = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated(
        trn: trn == _undefined || trn == null ? _instance.trn : (trn as String),
        customer_ref: customer_ref == _undefined || customer_ref == null
            ? _instance.customer_ref
            : (customer_ref as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        amount: amount == _undefined ? _instance.amount : (amount as String?),
        service_id: service_id == _undefined || service_id == null
            ? _instance.service_id
            : (service_id as String),
        bank_id: bank_id == _undefined || bank_id == null
            ? _instance.bank_id
            : (bank_id as String),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        merchant: merchant == _undefined
            ? _instance.merchant
            : (merchant
                as Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant?),
        bank: bank == _undefined
            ? _instance.bank
            : (bank
                as Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
      TRes> get merchant {
    final local$merchant = _instance.merchant;
    return local$merchant == null
        ? CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant
            .stub(_then(_instance))
        : CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant(
            local$merchant, (e) => call(merchant: e));
  }

  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
      TRes> get bank {
    final local$bank = _instance.bank;
    return local$bank == null
        ? CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank
            .stub(_then(_instance))
        : CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank(
            local$bank, (e) => call(bank: e));
  }
}

class _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated<
        TRes>
    implements
        CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated<
            TRes> {
  _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated(
      this._res);

  TRes _res;

  call({
    String? trn,
    String? customer_ref,
    bool? used,
    String? amount,
    String? service_id,
    String? bank_id,
    String? created_at,
    Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant?
        merchant,
    Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank? bank,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
          TRes>
      get merchant =>
          CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant
              .stub(_res);
  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
          TRes>
      get bank =>
          CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank
              .stub(_res);
}

class Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant {
  Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'Merchant',
  });

  factory Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant
    on Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant {
  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
          Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant>
      get copyWith =>
          CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
    TRes> {
  factory CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant(
    Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant
        instance,
    TRes Function(
            Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant)
        then,
  ) = _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant;

  factory CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant(
    this._instance,
    this._then,
  );

  final Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant
      _instance;

  final TRes Function(
          Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
        TRes>
    implements
        CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant<
            TRes> {
  _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$merchant(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank {
  Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank({
    required this.name,
    required this.unique_id,
    required this.id,
    this.$__typename = 'FinancialInstitution',
  });

  factory Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$unique_id = json['unique_id'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank(
      name: (l$name as String),
      unique_id: (l$unique_id as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String unique_id;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$unique_id = unique_id;
    _resultData['unique_id'] = l$unique_id;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$unique_id = unique_id;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$unique_id,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank
    on Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank {
  CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
          Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank>
      get copyWith =>
          CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
    TRes> {
  factory CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank(
    Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank
        instance,
    TRes Function(
            Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank)
        then,
  ) = _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank;

  factory CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank;

  TRes call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
            TRes> {
  _CopyWithImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank(
    this._instance,
    this._then,
  );

  final Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank
      _instance;

  final TRes Function(
          Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? unique_id = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        unique_id: unique_id == _undefined || unique_id == null
            ? _instance.unique_id
            : (unique_id as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
        TRes>
    implements
        CopyWith$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank<
            TRes> {
  _CopyWithStubImpl$Query$getUsedTransactionRefPaginated$usedTransactionRefPaginated$bank(
      this._res);

  TRes _res;

  call({
    String? name,
    String? unique_id,
    int? id,
    String? $__typename,
  }) =>
      _res;
}
