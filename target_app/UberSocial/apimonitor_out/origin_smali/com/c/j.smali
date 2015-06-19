.class public Lcom/c/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:D = 3.141592653589793

.field public static final b:D = 0.017453292519943295

.field public static final c:D = 57.29577951308232

.field static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/c/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/c/j;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DDDD)D
    .registers 21

    sget v6, Lcom/c/co;->g:I

    const-wide v0, 0x3f91df46a2529d39L

    mul-double/2addr v0, p0

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v2, p2

    const-wide v4, 0x3f91df46a2529d39L

    mul-double v4, v4, p4

    const-wide v7, 0x3f91df46a2529d39L

    mul-double v7, v7, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v7, 0x41584f7000000000L

    add-double/2addr v0, v9

    const-wide/high16 v2, -0x4010

    const-wide/high16 v4, 0x3ff0

    invoke-static/range {v0 .. v5}, Lcom/c/ad;->a(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v7

    sget-boolean v2, Lcom/c/j;->d:Z

    if-nez v2, :cond_5d

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_57

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_5d

    :cond_57
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5d
    sget-boolean v2, Lcom/c/bp;->b:Z

    if-eqz v2, :cond_65

    add-int/lit8 v2, v6, 0x1

    sput v2, Lcom/c/co;->g:I

    :cond_65
    return-wide v0
.end method

.method public static a(DZ)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/c/j;->b(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/c/a/d;Lcom/c/a/d;)D
    .registers 10

    invoke-virtual {p0}, Lcom/c/a/d;->c()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/c/a/d;->d()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/c/a/d;->c()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/c/a/d;->d()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/c/j;->a(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/c/a/d;Lcom/c/a/d;J)Ljava/lang/Double;
    .registers 10

    const-wide/16 v4, 0x0

    long-to-double v0, p2

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    sget-boolean v2, Lcom/c/j;->d:Z

    if-nez v2, :cond_17

    cmpl-double v2, v0, v4

    if-gez v2, :cond_17

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    cmpl-double v2, v0, v4

    if-nez v2, :cond_1d

    const/4 v0, 0x0

    :goto_1c
    return-object v0

    :cond_1d
    invoke-static {p0, p1}, Lcom/c/j;->a(Lcom/c/a/d;Lcom/c/a/d;)D

    move-result-wide v2

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1c
.end method

.method public static a(Ljava/util/List;Z)V
    .registers 9

    const/4 v2, 0x0

    sget v3, Lcom/c/co;->g:I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6, p1}, Lcom/c/j;->c(DZ)Z

    move-result v0

    if-eqz v0, :cond_50

    add-int/lit8 v0, v1, 0x1

    :goto_20
    if-eqz v3, :cond_4e

    :goto_22
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_4d

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lcom/c/j;->a(DZ)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_2e

    :cond_4d
    return-void

    :cond_4e
    move v1, v0

    goto :goto_8

    :cond_50
    move v0, v1

    goto :goto_20

    :cond_52
    move v0, v1

    goto :goto_22
.end method

.method private static b(DZ)D
    .registers 7

    const-wide v2, 0x4076800000000000L

    if-eqz p2, :cond_12

    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p0, v0

    if-lez v0, :cond_11

    sub-double/2addr p0, v2

    :cond_11
    :goto_11
    return-wide p0

    :cond_12
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_11

    add-double/2addr p0, v2

    goto :goto_11
.end method

.method public static b(DDDD)Ljava/lang/Double;
    .registers 23

    sget v0, Lcom/c/co;->g:I

    const-wide v1, 0x3f91df46a2529d39L

    mul-double/2addr v1, p0

    const-wide v3, 0x3f91df46a2529d39L

    mul-double v3, v3, p2

    const-wide v5, 0x3f91df46a2529d39L

    mul-double v5, v5, p4

    const-wide v7, 0x3f91df46a2529d39L

    mul-double v7, v7, p6

    sub-double v9, v3, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v5

    sub-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    sub-double v1, v11, v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v9, v3

    if-nez v3, :cond_50

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_50

    const/4 v0, 0x0

    :goto_4f
    return-object v0

    :cond_50
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x404ca5dc1a63c1f8L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    if-eqz v0, :cond_67

    sget-boolean v0, Lcom/c/bp;->b:Z

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    :goto_65
    sput-boolean v0, Lcom/c/bp;->b:Z

    :cond_67
    move-object v0, v1

    goto :goto_4f

    :cond_69
    const/4 v0, 0x1

    goto :goto_65
.end method

.method public static b(Lcom/c/a/d;Lcom/c/a/d;)Ljava/lang/Double;
    .registers 10

    invoke-virtual {p0}, Lcom/c/a/d;->c()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/c/a/d;->d()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/c/a/d;->c()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/c/a/d;->d()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/c/j;->b(DDDD)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static c(DZ)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide v4, 0x4056800000000000L

    if-eqz p2, :cond_18

    cmpg-double v2, p0, v4

    if-ltz v2, :cond_16

    const-wide v2, 0x4070e00000000000L

    cmpl-double v2, p0, v2

    if-lez v2, :cond_17

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    return v0

    :cond_18
    const-wide v2, -0x3fa9800000000000L

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_25

    cmpl-double v2, p0, v4

    if-lez v2, :cond_17

    :cond_25
    move v0, v1

    goto :goto_17
.end method
