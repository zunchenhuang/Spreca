typedef struct {int _;} T_type_int;
typedef struct {int _;} T_type_intptr;
typedef struct {int _;} T_type_double;
typedef struct {int _;} T_type_doubleptr;

typedef struct { T_double_double Double; T_double_int Int;} T_double;
typedef struct { T_int_double Double;    T_int_int    Int;} T_int;

#define typeof1(X)       \
_Generic( (X),            \
    int:    (T_int){{0}},  \
    double: (T_double){{0}} )

#define typeof2(X, Y)      \
_Generic( (Y),              \
    int:    typeof1(X).Int,  \
    double: typeof1(X).Double )

