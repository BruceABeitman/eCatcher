.class public Lcom/lenovo/anyshare/sdk/internal/cy;
.super Ljava/lang/Object;
.source "RSCodecHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/cy$a;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/anyshare/sdk/internal/cx;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->a:Lcom/lenovo/anyshare/sdk/internal/cx;

    iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->c:I

    iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->c:I

    iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->c:I

    rsub-int v0, v0, 0xff

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(II)Lcom/lenovo/anyshare/sdk/internal/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->a:Lcom/lenovo/anyshare/sdk/internal/cx;

    return-void
.end method

.method public static a(I)Lcom/lenovo/anyshare/sdk/internal/cy;
    .registers 2

    const/4 v0, 0x1

    if-le p0, v0, :cond_7

    const/16 v0, 0xfc

    if-lt p0, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cy;

    invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/cy;-><init>(I)V

    goto :goto_8
.end method


# virtual methods
.method public a([B)[B
    .registers 14

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->a:Lcom/lenovo/anyshare/sdk/internal/cx;

    if-nez v7, :cond_7

    const/4 v5, 0x0

    :goto_6
    return-object v5

    :cond_7
    array-length v7, p1

    int-to-double v7, v7

    iget v9, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v0, v7

    iget v7, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->c:I

    add-int v4, v7, v8

    mul-int v7, v0, v4

    new-array v5, v7, [B

    iget v7, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->c:I

    rsub-int v7, v7, 0xff

    new-array v1, v7, [B

    const/4 v2, 0x0

    :goto_23
    array-length v7, v1

    if-ge v2, v7, :cond_2c

    int-to-byte v7, v2

    aput-byte v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    add-int/lit8 v7, v0, -0x1

    if-ge v2, v7, :cond_52

    iget v7, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    mul-int/2addr v7, v2

    iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    invoke-static {p1, v7, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->a:Lcom/lenovo/anyshare/sdk/internal/cx;

    invoke-virtual {v7, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a([B)[B

    move-result-object v6

    mul-int v7, v2, v4

    iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    invoke-static {v1, v11, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v7, v2, v4

    iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    add-int/2addr v7, v8

    array-length v8, v6

    invoke-static {v6, v11, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_52
    add-int/lit8 v7, v0, -0x1

    iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    mul-int v3, v7, v8

    array-length v7, p1

    sub-int/2addr v7, v3

    invoke-static {p1, v3, v1, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    :goto_5e
    iget v7, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    array-length v8, p1

    sub-int/2addr v7, v8

    add-int/2addr v7, v3

    if-ge v2, v7, :cond_6d

    array-length v7, p1

    sub-int/2addr v7, v3

    add-int/2addr v7, v2

    aput-byte v11, v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_6d
    iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->a:Lcom/lenovo/anyshare/sdk/internal/cx;

    invoke-virtual {v7, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a([B)[B

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v7, v4

    iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    invoke-static {v1, v11, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v7, v4

    iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    add-int/2addr v7, v8

    array-length v8, v6

    invoke-static {v6, v11, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public b([B)Lcom/lenovo/anyshare/sdk/internal/cy$a;
    .registers 15

    iget v9, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    iget v10, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->c:I

    add-int v5, v9, v10

    array-length v9, p1

    int-to-double v9, v9

    int-to-double v11, v5

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    new-instance v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;

    iget v9, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    invoke-direct {v8, v0, v9}, Lcom/lenovo/anyshare/sdk/internal/cy$a;-><init>(II)V

    array-length v9, p1

    div-int/2addr v9, v5

    if-eq v0, v9, :cond_1e

    const/16 v9, 0x100

    iput v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I

    :cond_1e
    mul-int v9, v0, v5

    new-array v2, v9, [B

    const/16 v9, 0xff

    new-array v7, v9, [B

    const/4 v4, 0x0

    :goto_27
    array-length v9, v7

    if-ge v4, v9, :cond_30

    int-to-byte v9, v4

    aput-byte v9, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_30
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, p1

    invoke-static {p1, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v0, :cond_a5

    mul-int v9, v4, v5

    const/4 v10, 0x0

    iget v11, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    invoke-static {v2, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v9, v4, v5

    iget v10, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    add-int/2addr v9, v10

    array-length v10, v7

    iget v11, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->c:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->c:I

    invoke-static {v2, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->a:Lcom/lenovo/anyshare/sdk/internal/cx;

    const/4 v10, 0x0

    new-array v10, v10, [I

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v10, v11}, Lcom/lenovo/anyshare/sdk/internal/cx;->a([B[II)I

    move-result v1

    if-nez v1, :cond_6e

    iget-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->c:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v4

    const/4 v9, 0x0

    iget-object v10, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B

    iget v11, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    mul-int/2addr v11, v4

    iget v12, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_6e
    const/4 v9, -0x1

    if-ne v1, v9, :cond_8c

    iget-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->c:[Z

    const/4 v10, 0x0

    aput-boolean v10, v9, v4

    iget v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I

    const/16 v10, 0x10

    if-ge v9, v10, :cond_80

    const/16 v9, 0x10

    iput v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I

    :cond_80
    const/4 v9, 0x0

    iget-object v10, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B

    iget v11, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    mul-int/2addr v11, v4

    iget v12, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6b

    :cond_8c
    iget-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->c:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v4

    iget v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_99

    const/4 v9, 0x1

    iput v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I

    :cond_99
    const/4 v9, 0x0

    iget-object v10, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B

    iget v11, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    mul-int/2addr v11, v4

    iget v12, p0, Lcom/lenovo/anyshare/sdk/internal/cy;->b:I

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6b

    :cond_a5
    const/4 v3, -0x1

    iget-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B

    array-length v9, v9

    add-int/lit8 v4, v9, -0x1

    :goto_ab
    if-ltz v4, :cond_b7

    iget-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B

    aget-byte v9, v9, v4

    if-nez v9, :cond_b7

    move v3, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_ab

    :cond_b7
    if-lez v3, :cond_c4

    new-array v6, v3, [B

    iget-object v9, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, v8, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B

    :cond_c4
    return-object v8
.end method
