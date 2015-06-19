.class public Lcom/google/android/gms/drive/query/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/drive/query/a;
    .registers 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/d;->e:Lcom/google/android/gms/drive/metadata/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;-><init>(Lcom/google/android/gms/drive/metadata/b;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/drive/metadata/a;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/a;
    .registers 3

    new-instance v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/query/internal/InFilter;-><init>(Lcom/google/android/gms/drive/metadata/a;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/a;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->a:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/String;)Lcom/google/android/gms/drive/query/a;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->i:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/drive/metadata/c;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/a;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->b:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/drive/query/a;)Lcom/google/android/gms/drive/query/a;
    .registers 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/query/internal/NotFilter;-><init>(Lcom/google/android/gms/drive/query/a;)V

    return-object v0
.end method

.method public static varargs a(Lcom/google/android/gms/drive/query/a;[Lcom/google/android/gms/drive/query/a;)Lcom/google/android/gms/drive/query/a;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->f:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/a;[Lcom/google/android/gms/drive/query/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/android/gms/drive/query/a;
    .registers 3

    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->f:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/drive/metadata/c;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/a;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->d:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs b(Lcom/google/android/gms/drive/query/a;[Lcom/google/android/gms/drive/query/a;)Lcom/google/android/gms/drive/query/a;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->g:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/a;[Lcom/google/android/gms/drive/query/a;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Lcom/google/android/gms/drive/query/a;
    .registers 3

    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->g:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/drive/metadata/c;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/a;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->c:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Lcom/google/android/gms/drive/metadata/c;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/a;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->e:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V

    return-object v0
.end method
