.class public final Lcom/google/zxing/b/a/b;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# instance fields
.field private final a:Lcom/google/zxing/b/b;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/b/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/b/a/b;->a:Lcom/google/zxing/b/b;

    iget v0, p1, Lcom/google/zxing/b/b;->b:I

    iput v0, p0, Lcom/google/zxing/b/a/b;->b:I

    iget v0, p1, Lcom/google/zxing/b/b;->a:I

    iput v0, p0, Lcom/google/zxing/b/a/b;->c:I

    iget v0, p0, Lcom/google/zxing/b/a/b;->c:I

    add-int/lit8 v0, v0, -0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/b/a/b;->d:I

    iget v0, p0, Lcom/google/zxing/b/a/b;->c:I

    add-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/b/a/b;->e:I

    iget v0, p0, Lcom/google/zxing/b/a/b;->b:I

    add-int/lit8 v0, v0, -0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/b/a/b;->g:I

    iget v0, p0, Lcom/google/zxing/b/a/b;->b:I

    add-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/b/a/b;->f:I

    iget v0, p0, Lcom/google/zxing/b/a/b;->g:I

    if-ltz v0, :cond_41

    iget v0, p0, Lcom/google/zxing/b/a/b;->d:I

    if-ltz v0, :cond_41

    iget v0, p0, Lcom/google/zxing/b/a/b;->f:I

    iget v1, p0, Lcom/google/zxing/b/a/b;->b:I

    if-ge v0, v1, :cond_41

    iget v0, p0, Lcom/google/zxing/b/a/b;->e:I

    iget v1, p0, Lcom/google/zxing/b/a/b;->c:I

    if-lt v0, v1, :cond_46

    :cond_41
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_46
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/b/b;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/b/a/b;->a:Lcom/google/zxing/b/b;

    iget v0, p1, Lcom/google/zxing/b/b;->b:I

    iput v0, p0, Lcom/google/zxing/b/a/b;->b:I

    iget v0, p1, Lcom/google/zxing/b/b;->a:I

    iput v0, p0, Lcom/google/zxing/b/a/b;->c:I

    add-int/lit8 v0, p2, -0x7

    iput v0, p0, Lcom/google/zxing/b/a/b;->d:I

    add-int/lit8 v0, p2, 0x7

    iput v0, p0, Lcom/google/zxing/b/a/b;->e:I

    add-int/lit8 v0, p3, -0x7

    iput v0, p0, Lcom/google/zxing/b/a/b;->g:I

    add-int/lit8 v0, p3, 0x7

    iput v0, p0, Lcom/google/zxing/b/a/b;->f:I

    iget v0, p0, Lcom/google/zxing/b/a/b;->g:I

    if-ltz v0, :cond_31

    iget v0, p0, Lcom/google/zxing/b/a/b;->d:I

    if-ltz v0, :cond_31

    iget v0, p0, Lcom/google/zxing/b/a/b;->f:I

    iget v1, p0, Lcom/google/zxing/b/a/b;->b:I

    if-ge v0, v1, :cond_31

    iget v0, p0, Lcom/google/zxing/b/a/b;->e:I

    iget v1, p0, Lcom/google/zxing/b/a/b;->c:I

    if-lt v0, v1, :cond_36

    :cond_31
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_36
    return-void
.end method

.method private a(FFFF)Lcom/google/zxing/o;
    .registers 13

    const/high16 v7, 0x3f00

    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/b/a/a;->a(FFFF)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v1, v0

    sub-float v0, p3, p1

    int-to-float v2, v1

    div-float v2, v0, v2

    sub-float v0, p4, p2

    int-to-float v3, v1

    div-float v3, v0, v3

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_32

    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v5, p2

    add-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v6, p0, Lcom/google/zxing/b/a/b;->a:Lcom/google/zxing/b/b;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_2f

    new-instance v0, Lcom/google/zxing/o;

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/o;-><init>(FF)V

    :goto_2e
    return-object v0

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_32
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private a(IIIZ)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p4, :cond_13

    :goto_3
    if-gt p1, p2, :cond_1e

    iget-object v1, p0, Lcom/google/zxing/b/a/b;->a:Lcom/google/zxing/b/b;

    invoke-virtual {v1, p1, p3}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return v0

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_11
    add-int/lit8 p1, p1, 0x1

    :cond_13
    if-gt p1, p2, :cond_1e

    iget-object v1, p0, Lcom/google/zxing/b/a/b;->a:Lcom/google/zxing/b/b;

    invoke-virtual {v1, p3, p1}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_d

    :cond_1e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a()[Lcom/google/zxing/o;
    .registers 14

    iget v5, p0, Lcom/google/zxing/b/a/b;->d:I

    iget v4, p0, Lcom/google/zxing/b/a/b;->e:I

    iget v3, p0, Lcom/google/zxing/b/a/b;->g:I

    iget v2, p0, Lcom/google/zxing/b/a/b;->f:I

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    :cond_b
    :goto_b
    if-eqz v7, :cond_19d

    const/4 v7, 0x0

    const/4 v6, 0x1

    :cond_f
    :goto_f
    if-eqz v6, :cond_20

    iget v6, p0, Lcom/google/zxing/b/a/b;->c:I

    if-ge v4, v6, :cond_20

    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v4, v6}, Lcom/google/zxing/b/a/b;->a(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_f

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x1

    goto :goto_f

    :cond_20
    iget v6, p0, Lcom/google/zxing/b/a/b;->c:I

    if-lt v4, v6, :cond_48

    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    :goto_2a
    if-nez v1, :cond_198

    if-eqz v0, :cond_198

    sub-int v7, v6, v3

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_35
    if-ge v1, v7, :cond_9f

    int-to-float v0, v3

    sub-int v4, v5, v1

    int-to-float v4, v4

    add-int v8, v3, v1

    int-to-float v8, v8

    int-to-float v9, v5

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/google/zxing/b/a/b;->a(FFFF)Lcom/google/zxing/o;

    move-result-object v0

    if-nez v0, :cond_9f

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_48
    const/4 v6, 0x1

    :cond_49
    :goto_49
    if-eqz v6, :cond_5a

    iget v6, p0, Lcom/google/zxing/b/a/b;->b:I

    if-ge v2, v6, :cond_5a

    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v2, v6}, Lcom/google/zxing/b/a/b;->a(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_49

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    goto :goto_49

    :cond_5a
    iget v6, p0, Lcom/google/zxing/b/a/b;->b:I

    if-lt v2, v6, :cond_65

    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto :goto_2a

    :cond_65
    const/4 v6, 0x1

    :cond_66
    :goto_66
    if-eqz v6, :cond_75

    if-ltz v5, :cond_75

    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v5, v6}, Lcom/google/zxing/b/a/b;->a(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_66

    add-int/lit8 v5, v5, -0x1

    const/4 v7, 0x1

    goto :goto_66

    :cond_75
    if-gez v5, :cond_7e

    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto :goto_2a

    :cond_7e
    const/4 v6, 0x1

    :cond_7f
    :goto_7f
    if-eqz v6, :cond_91

    if-ltz v3, :cond_91

    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v3, v6}, Lcom/google/zxing/b/a/b;->a(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_7f

    add-int/lit8 v7, v3, -0x1

    const/4 v3, 0x1

    move v12, v3

    move v3, v7

    move v7, v12

    goto :goto_7f

    :cond_91
    if-gez v3, :cond_9a

    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto :goto_2a

    :cond_9a
    if-eqz v7, :cond_b

    const/4 v0, 0x1

    goto/16 :goto_b

    :cond_9f
    move-object v4, v0

    if-nez v4, :cond_a7

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_a7
    const/4 v1, 0x0

    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_ac
    if-ge v1, v7, :cond_bf

    int-to-float v0, v3

    add-int v8, v2, v1

    int-to-float v8, v8

    add-int v9, v3, v1

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/b/a/b;->a(FFFF)Lcom/google/zxing/o;

    move-result-object v0

    if-nez v0, :cond_bf

    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_bf
    move-object v3, v0

    if-nez v3, :cond_c7

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_c7
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_c9
    if-ge v1, v7, :cond_dc

    int-to-float v0, v6

    add-int v8, v2, v1

    int-to-float v8, v8

    sub-int v9, v6, v1

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/b/a/b;->a(FFFF)Lcom/google/zxing/o;

    move-result-object v0

    if-nez v0, :cond_dc

    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    :cond_dc
    move-object v2, v0

    if-nez v2, :cond_e4

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_e4
    const/4 v1, 0x0

    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_e9
    if-ge v1, v7, :cond_fc

    int-to-float v0, v6

    sub-int v8, v5, v1

    int-to-float v8, v8

    sub-int v9, v6, v1

    int-to-float v9, v9

    int-to-float v10, v5

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/b/a/b;->a(FFFF)Lcom/google/zxing/o;

    move-result-object v0

    if-nez v0, :cond_fc

    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    :cond_fc
    if-nez v0, :cond_103

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_103
    iget v1, v0, Lcom/google/zxing/o;->a:F

    iget v5, v0, Lcom/google/zxing/o;->b:F

    iget v6, v4, Lcom/google/zxing/o;->a:F

    iget v4, v4, Lcom/google/zxing/o;->b:F

    iget v7, v2, Lcom/google/zxing/o;->a:F

    iget v2, v2, Lcom/google/zxing/o;->b:F

    iget v8, v3, Lcom/google/zxing/o;->a:F

    iget v3, v3, Lcom/google/zxing/o;->b:F

    iget v0, p0, Lcom/google/zxing/b/a/b;->c:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_15a

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/o;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/o;

    const/high16 v11, 0x3f80

    sub-float/2addr v8, v11

    const/high16 v11, 0x3f80

    add-float/2addr v3, v11

    invoke-direct {v10, v8, v3}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v3, 0x1

    new-instance v8, Lcom/google/zxing/o;

    const/high16 v9, 0x3f80

    add-float/2addr v6, v9

    const/high16 v9, 0x3f80

    add-float/2addr v4, v9

    invoke-direct {v8, v6, v4}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v8, v0, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/o;

    const/high16 v6, 0x3f80

    sub-float v6, v7, v6

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-direct {v4, v6, v2}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/o;

    const/high16 v4, 0x3f80

    add-float/2addr v1, v4

    const/high16 v4, 0x3f80

    sub-float v4, v5, v4

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v3, v0, v2

    :goto_159
    return-object v0

    :cond_15a
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/o;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/o;

    const/high16 v11, 0x3f80

    add-float/2addr v8, v11

    const/high16 v11, 0x3f80

    add-float/2addr v3, v11

    invoke-direct {v10, v8, v3}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v3, 0x1

    new-instance v8, Lcom/google/zxing/o;

    const/high16 v9, 0x3f80

    add-float/2addr v6, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v4, v9

    invoke-direct {v8, v6, v4}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v8, v0, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/o;

    const/high16 v6, 0x3f80

    sub-float v6, v7, v6

    const/high16 v7, 0x3f80

    add-float/2addr v2, v7

    invoke-direct {v4, v6, v2}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/o;

    const/high16 v4, 0x3f80

    sub-float/2addr v1, v4

    const/high16 v4, 0x3f80

    sub-float v4, v5, v4

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v3, v0, v2

    goto :goto_159

    :cond_198
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_19d
    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_2a
.end method
