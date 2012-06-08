-ifndef(_swift_types_included).
-define(_swift_types_included, yeah).

-define(thrift_ZERO, 0).
-define(thrift_ONE, 1).
-define(thrift_QUORUM, 2).
-define(thrift_DCQUORUM, 3).
-define(thrift_DCQUORUMSYNC, 4).
-define(thrift_ALL, 5).

-record(column, {name, value, timestamp}).

-record(superColumn, {name, columns}).

-record(columnOrSuperColumn, {column, super_column}).

-record(notFoundException, {}).

-record(invalidRequestException, {why}).

-record(unavailableException, {}).

-record(timedOutException, {}).

-record(columnParent, {column_family, super_column}).

-record(columnPath, {column_family, super_column, column}).

-record(sliceRange, {start, finish, reversed, count}).

-record(slicePredicate, {column_names, slice_range}).

-record(keySlice, {key, columns}).

-endif.
