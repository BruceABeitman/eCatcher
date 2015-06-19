.class public final Lcom/c/br;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/c/br;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/c/br;->a:Z

    new-instance v0, Lcom/c/bv;

    invoke-direct {v0}, Lcom/c/bv;-><init>()V

    sput-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)I
    .registers 3

    sget-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Lcom/c/br;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I
    .registers 9

    sget v1, Lcom/c/co;->g:I

    sget-boolean v0, Lcom/c/br;->a:Z

    if-nez v0, :cond_12

    invoke-static {p0, p2}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    sget-boolean v0, Lcom/c/br;->a:Z

    if-nez v0, :cond_22

    invoke-static {p1, p2}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_22
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_51

    add-int/lit8 v0, v0, -0x2

    if-eqz v1, :cond_53

    :cond_51
    if-eqz v1, :cond_3d

    :cond_53
    if-eqz v1, :cond_2f

    :cond_55
    sget-boolean v1, Lcom/c/br;->a:Z

    if-nez v1, :cond_6a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_6a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6a
    return v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/c/ap;
    .registers 2

    sget-boolean v0, Lcom/c/br;->a:Z

    if-nez v0, :cond_10

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    sget-object v0, Lcom/c/ap;->f:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/ap;

    return-object v0
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3

    sget-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Lcom/c/br;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method

.method public static a(Ljava/lang/Iterable;Lcom/c/y;)V
    .registers 5

    sget v0, Lcom/c/co;->g:I

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/c/y;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    if-eqz v0, :cond_6

    :cond_1b
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lcom/c/cl;)V
    .registers 4

    sget-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    invoke-static {p0, p1, p2, v0}, Lcom/c/br;->a(Ljava/util/List;Ljava/util/List;Lcom/c/cl;Ljava/util/Comparator;)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lcom/c/cl;Ljava/util/Comparator;)V
    .registers 9

    const/4 v0, 0x0

    sget v4, Lcom/c/co;->g:I

    sget-boolean v1, Lcom/c/br;->a:Z

    if-nez v1, :cond_13

    invoke-static {p0, p3}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    sget-boolean v1, Lcom/c/br;->a:Z

    if-nez v1, :cond_23

    invoke-static {p1, p3}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    sget-boolean v1, Lcom/c/br;->a:Z

    if-nez v1, :cond_33

    invoke-static {p0, p3}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_33
    sget-boolean v1, Lcom/c/br;->a:Z

    if-nez v1, :cond_43

    invoke-static {p1, p3}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_43

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_43
    move v1, v0

    :cond_44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_a2

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p2, v1, v0}, Lcom/c/cl;->b(II)V

    if-eqz v4, :cond_a0

    :goto_65
    if-lez v3, :cond_6f

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v2, v0}, Lcom/c/cl;->c(II)V

    if-eqz v4, :cond_9d

    move v0, v1

    :cond_6f
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v2, v0}, Lcom/c/cl;->a(II)V

    move v0, v1

    move v1, v3

    :goto_78
    if-eqz v4, :cond_44

    :cond_7a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/c/cl;->b(II)V

    add-int/lit8 v1, v1, 0x1

    if-eqz v4, :cond_7a

    :cond_8b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/c/cl;->c(II)V

    add-int/lit8 v0, v0, 0x1

    if-eqz v4, :cond_8b

    :cond_9c
    return-void

    :cond_9d
    move v0, v1

    move v1, v2

    goto :goto_78

    :cond_a0
    move v1, v2

    goto :goto_78

    :cond_a2
    move v2, v1

    goto :goto_65
.end method

.method public static a(Ljava/util/List;[Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/c/br;->a(Ljava/util/List;[ZZ)V

    return-void
.end method

.method private static a(Ljava/util/List;[ZZ)V
    .registers 7

    sget v1, Lcom/c/co;->g:I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    aget-boolean v3, p1, v0

    xor-int/2addr v3, p2

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_7

    :cond_1c
    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Z
    .registers 2

    sget-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .registers 7

    const/4 v2, 0x1

    sget v3, Lcom/c/co;->g:I

    invoke-static {}, Lcom/c/ct;->b()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    :goto_11
    return v0

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    goto :goto_11

    :cond_28
    if-eqz v3, :cond_2c

    :cond_2a
    move v0, v2

    goto :goto_11

    :cond_2c
    move-object v0, v1

    goto :goto_16
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Comparator;)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v3, Lcom/c/co;->g:I

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-le v0, v4, :cond_f

    :cond_e
    :goto_e
    return v1

    :cond_f
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v0, v1

    :cond_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v7, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_35

    if-eqz v3, :cond_3d

    move v0, v2

    :cond_35
    if-eqz v3, :cond_22

    :cond_37
    :goto_37
    if-eqz v0, :cond_e

    if-eqz v3, :cond_13

    :cond_3b
    move v1, v2

    goto :goto_e

    :cond_3d
    move v0, v2

    goto :goto_37
.end method

.method public static b(Ljava/util/List;Ljava/util/List;)I
    .registers 3

    sget-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Lcom/c/br;->b(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I
    .registers 6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0, p1, p2}, Lcom/c/br;->c(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget-boolean v1, Lcom/c/br;->a:Z

    if-nez v1, :cond_25

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_25

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_25
    return v0
.end method

.method public static b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3

    sget-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Lcom/c/br;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;Lcom/c/y;)Ljava/lang/Iterable;
    .registers 3

    new-instance v0, Lcom/c/dj;

    invoke-direct {v0, p0, p1}, Lcom/c/dj;-><init>(Ljava/lang/Iterable;Lcom/c/y;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    move-object p1, p0

    goto :goto_6
.end method

.method public static b(Ljava/util/List;[Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/c/br;->a(Ljava/util/List;[ZZ)V

    return-void
.end method

.method public static b(Ljava/lang/Iterable;)Z
    .registers 2

    sget-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .registers 7

    const/4 v2, 0x1

    sget v3, Lcom/c/co;->g:I

    invoke-static {}, Lcom/c/ct;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_f

    :cond_1e
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v2

    :goto_2c
    return v0

    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    goto :goto_2c

    :cond_43
    if-eqz v3, :cond_47

    :cond_45
    move v0, v2

    goto :goto_2c

    :cond_47
    move-object v0, v1

    goto :goto_31
.end method

.method public static b(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Comparator;)Z
    .registers 9

    const/4 v0, 0x0

    sget v1, Lcom/c/co;->g:I

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_d

    if-eqz v1, :cond_16

    :cond_2c
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static c(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I
    .registers 7

    new-instance v0, Lcom/c/bz;

    invoke-direct {v0}, Lcom/c/bz;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/c/br;->a(Ljava/util/List;Ljava/util/List;Lcom/c/cl;Ljava/util/Comparator;)V

    sget-boolean v1, Lcom/c/br;->a:Z

    if-nez v1, :cond_22

    iget v1, v0, Lcom/c/bz;->a:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v1, v2, :cond_22

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_22
    iget v0, v0, Lcom/c/bz;->a:I

    return v0
.end method

.method public static c(Ljava/lang/Iterable;)V
    .registers 2

    sget-object v0, Lcom/c/br;->b:Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/c/br;->c(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    return-void
.end method

.method public static c(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .registers 6

    sget v2, Lcom/c/co;->g:I

    sget-boolean v0, Lcom/c/br;->a:Z

    if-nez v0, :cond_12

    invoke-static {p0, p1}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1c
    return-void

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_34
    if-eqz v2, :cond_46

    :cond_36
    sget-boolean v0, Lcom/c/br;->a:Z

    if-nez v0, :cond_1c

    invoke-static {p0, p1}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_46
    move-object v0, v1

    goto :goto_21
.end method

.method public static d(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I
    .registers 6

    new-instance v0, Lcom/c/ch;

    invoke-direct {v0}, Lcom/c/ch;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/c/br;->a(Ljava/util/List;Ljava/util/List;Lcom/c/cl;Ljava/util/Comparator;)V

    sget-boolean v1, Lcom/c/br;->a:Z

    if-nez v1, :cond_1a

    iget v1, v0, Lcom/c/ch;->a:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1a
    iget v0, v0, Lcom/c/ch;->a:I

    return v0
.end method

.method public static d(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 7

    sget v2, Lcom/c/co;->g:I

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_19

    invoke-interface {p1, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1a

    :cond_19
    move-object v0, v1

    :cond_1a
    if-eqz v2, :cond_7

    :cond_1c
    return-object v0
.end method

.method public static d(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 5

    sget v0, Lcom/c/co;->g:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_b

    :cond_1a
    return-object v1
.end method

.method public static e(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 7

    sget v2, Lcom/c/co;->g:I

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_19

    invoke-interface {p1, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_1a

    :cond_19
    move-object v0, v1

    :cond_1a
    if-eqz v2, :cond_7

    :cond_1c
    return-object v0
.end method

.method public static e(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)V
    .registers 7

    sget v0, Lcom/c/co;->g:I

    new-instance v1, Lcom/c/cd;

    invoke-direct {v1, p0, p1}, Lcom/c/cd;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p0, p1, v1, p2}, Lcom/c/br;->a(Ljava/util/List;Ljava/util/List;Lcom/c/cl;Ljava/util/Comparator;)V

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v1, Lcom/c/cd;->a:I

    if-le v2, v3, :cond_1d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz v0, :cond_a

    :cond_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v1, Lcom/c/cd;->a:I

    if-le v2, v3, :cond_30

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz v0, :cond_1d

    :cond_30
    sget-boolean v0, Lcom/c/br;->a:Z

    if-nez v0, :cond_44

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_44

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_44
    return-void
.end method
