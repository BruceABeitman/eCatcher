.class public final Lcom/c/ad;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/c/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/c/ad;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)D
    .registers 8

    add-double v0, p0, p2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DDD)D
    .registers 8

    sget-boolean v0, Lcom/c/ad;->a:Z

    if-nez v0, :cond_e

    cmpg-double v0, p2, p4

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/Collection;)D
    .registers 8

    sget v3, Lcom/c/co;->g:I

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    add-double v0, v1, v5

    if-eqz v3, :cond_1e

    :goto_1d
    return-wide v0

    :cond_1e
    move-wide v1, v0

    goto :goto_9

    :cond_20
    move-wide v0, v1

    goto :goto_1d
.end method

.method public static a(Ljava/util/List;)D
    .registers 6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sget-boolean v0, Lcom/c/ad;->a:Z

    if-nez v0, :cond_14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    rem-int/lit8 v0, v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2c

    move-wide v0, v1

    :goto_2b
    return-wide v0

    :cond_2c
    div-int/lit8 v0, v3, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/c/ad;->a(DD)D

    move-result-wide v0

    goto :goto_2b
.end method

.method public static a(FFF)F
    .registers 4

    sget-boolean v0, Lcom/c/ad;->a:Z

    if-nez v0, :cond_e

    cmpg-float v0, p1, p2

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static a(III)I
    .registers 4

    sget-boolean v0, Lcom/c/ad;->a:Z

    if-nez v0, :cond_c

    if-le p1, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static a(JJJ)J
    .registers 8

    sget-boolean v0, Lcom/c/ad;->a:Z

    if-nez v0, :cond_e

    cmp-long v0, p2, p4

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Double;
    .registers 14

    const-wide/16 v3, 0x0

    sget v5, Lcom/c/co;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v1, v3

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    sget-boolean v8, Lcom/c/ad;->a:Z

    if-nez v8, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_29

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_29
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v0, v1, v8

    if-eqz v5, :cond_4c

    :goto_3c
    invoke-static {p1}, Lcom/c/ad;->a(Ljava/util/Collection;)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-nez v2, :cond_46

    const/4 v0, 0x0

    :goto_45
    return-object v0

    :cond_46
    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_45

    :cond_4c
    move-wide v1, v0

    goto :goto_d

    :cond_4e
    move-wide v0, v1

    goto :goto_3c
.end method

.method public static b(Ljava/util/Collection;)D
    .registers 5

    invoke-static {p0}, Lcom/c/ad;->a(Ljava/util/Collection;)D

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static c(Ljava/util/Collection;)Ljava/lang/Double;
    .registers 22

    sget v9, Lcom/c/co;->g:I

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v15, v0

    move-wide/from16 v17, v2

    move-wide v1, v15

    move-wide/from16 v19, v4

    move-wide/from16 v5, v19

    move-wide/from16 v3, v17

    :goto_1e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    sub-double v5, v11, v3

    long-to-double v13, v7

    div-double/2addr v5, v13

    add-double/2addr v5, v3

    sub-double v3, v11, v3

    sub-double/2addr v11, v5

    mul-double/2addr v3, v11

    add-double v0, v1, v3

    if-eqz v9, :cond_45

    :goto_3e
    long-to-double v2, v7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_9

    :cond_45
    move-wide v3, v5

    move-wide v5, v7

    move-wide v15, v0

    move-wide v1, v15

    goto :goto_1e

    :cond_4a
    move-wide v7, v5

    move-wide v15, v1

    move-wide v0, v15

    goto :goto_3e
.end method
