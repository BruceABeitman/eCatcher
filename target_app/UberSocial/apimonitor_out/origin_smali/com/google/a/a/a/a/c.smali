.class public final Lcom/google/a/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2

    invoke-static {p0}, Lcom/google/a/a/a/a/c;->b(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_c
    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 4

    invoke-static {p0}, Lcom/google/a/a/a/a/c;->b(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-object p0
.end method

.method public static varargs a(Ljava/lang/Iterable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 5

    invoke-static {p0}, Lcom/google/a/a/a/a/c;->b(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-object p0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-object p0
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v1, v3

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    :goto_f
    array-length v3, p1

    if-ge v0, v3, :cond_1b

    const-string v3, "%s"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_43

    :cond_1b
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    if-ge v0, v1, :cond_5c

    const-string v1, " ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_32
    array-length v1, p1

    if-ge v0, v1, :cond_57

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_32

    :cond_43
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_f

    :cond_57
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)V
    .registers 3

    const-string v0, "index"

    invoke-static {p0, p1, v0}, Lcom/google/a/a/a/a/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method public static a(III)V
    .registers 8

    const-string v0, "start index"

    invoke-static {p0, p2, v0}, Lcom/google/a/a/a/a/c;->b(IILjava/lang/String;)V

    const-string v0, "end index"

    invoke-static {p1, p2, v0}, Lcom/google/a/a/a/a/c;->b(IILjava/lang/String;)V

    if-ge p1, p0, :cond_29

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "end index (%s) must not be less than start index (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_2b

    move v0, v1

    :goto_6
    const-string v3, "negative size: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/a/a/a/a/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gez p0, :cond_2d

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "%s (%s) must not be negative"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    move v0, v2

    goto :goto_6

    :cond_2d
    if-lt p0, p1, :cond_4c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "%s (%s) must be less than size (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    return-void
.end method

.method public static a(Z)V
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    return-void
.end method

.method public static a(ZLjava/lang/Object;)V
    .registers 4

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method public static varargs a(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method public static b(II)V
    .registers 3

    const-string v0, "index"

    invoke-static {p0, p1, v0}, Lcom/google/a/a/a/a/c;->b(IILjava/lang/String;)V

    return-void
.end method

.method public static b(IILjava/lang/String;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_2b

    move v0, v1

    :goto_6
    const-string v3, "negative size: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/a/a/a/a/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gez p0, :cond_2d

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "%s (%s) must not be negative"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    move v0, v2

    goto :goto_6

    :cond_2d
    if-le p0, p1, :cond_4c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "%s (%s) must not be greater than size (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    return-void
.end method

.method public static b(Z)V
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_8
    return-void
.end method

.method public static b(ZLjava/lang/Object;)V
    .registers 4

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method public static varargs b(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Lcom/google/a/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private static b(Ljava/lang/Iterable;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :goto_4
    return v0

    :cond_5
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_14

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    :try_start_c
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_f} :catch_11

    move-result v0

    goto :goto_4

    :catch_11
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_18

    goto :goto_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method
