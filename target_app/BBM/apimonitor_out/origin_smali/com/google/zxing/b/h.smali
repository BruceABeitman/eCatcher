.class public Lcom/google/zxing/b/h;
.super Lcom/google/zxing/b;
.source "GlobalHistogramBinarizer.java"


# static fields
.field private static final b:[B


# instance fields
.field private c:[B

.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/b/h;->b:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/g;)V

    sget-object v0, Lcom/google/zxing/b/h;->b:[B

    iput-object v0, p0, Lcom/google/zxing/b/h;->c:[B

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/b/h;->d:[I

    return-void
.end method

.method private static a([I)I
    .registers 9

    const/4 v4, 0x0

    array-length v7, p0

    move v2, v4

    move v0, v4

    move v1, v4

    move v3, v4

    :goto_6
    if-ge v2, v7, :cond_18

    aget v5, p0, v2

    if-le v5, v0, :cond_f

    aget v0, p0, v2

    move v1, v2

    :cond_f
    aget v5, p0, v2

    if-le v5, v3, :cond_15

    aget v3, p0, v2

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    move v2, v4

    move v0, v4

    move v5, v4

    :goto_1b
    if-ge v2, v7, :cond_2a

    sub-int v4, v2, v1

    aget v6, p0, v2

    mul-int/2addr v6, v4

    mul-int/2addr v4, v6

    if-le v4, v5, :cond_5c

    move v0, v2

    :goto_26
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_1b

    :cond_2a
    if-le v1, v0, :cond_59

    move v5, v1

    move v6, v0

    :goto_2e
    sub-int v0, v5, v6

    shr-int/lit8 v1, v7, 0x4

    if-gt v0, v1, :cond_39

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_39
    add-int/lit8 v4, v5, -0x1

    const/4 v1, -0x1

    add-int/lit8 v2, v5, -0x1

    :goto_3e
    if-le v2, v6, :cond_53

    sub-int v0, v2, v6

    mul-int/2addr v0, v0

    sub-int v7, v5, v2

    mul-int/2addr v0, v7

    aget v7, p0, v2

    sub-int v7, v3, v7

    mul-int/2addr v0, v7

    if-le v0, v1, :cond_56

    move v1, v2

    :goto_4e
    add-int/lit8 v2, v2, -0x1

    move v4, v1

    move v1, v0

    goto :goto_3e

    :cond_53
    shl-int/lit8 v0, v4, 0x3

    return v0

    :cond_56
    move v0, v1

    move v1, v4

    goto :goto_4e

    :cond_59
    move v5, v0

    move v6, v1

    goto :goto_2e

    :cond_5c
    move v4, v5

    goto :goto_26
.end method

.method private a(I)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/b/h;->c:[B

    array-length v0, v0

    if-ge v0, p1, :cond_a

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/b/h;->c:[B

    :cond_a
    move v0, v1

    :goto_b
    const/16 v2, 0x20

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/google/zxing/b/h;->d:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/zxing/b/a;)Lcom/google/zxing/b/a;
    .registers 11

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/g;

    iget v4, v3, Lcom/google/zxing/g;->a:I

    if-eqz p2, :cond_c

    iget v1, p2, Lcom/google/zxing/b/a;->b:I

    if-ge v1, v4, :cond_2e

    :cond_c
    new-instance p2, Lcom/google/zxing/b/a;

    invoke-direct {p2, v4}, Lcom/google/zxing/b/a;-><init>(I)V

    :cond_11
    invoke-direct {p0, v4}, Lcom/google/zxing/b/h;->a(I)V

    iget-object v1, p0, Lcom/google/zxing/b/h;->c:[B

    invoke-virtual {v3, p1, v1}, Lcom/google/zxing/g;->a(I[B)[B

    move-result-object v5

    iget-object v3, p0, Lcom/google/zxing/b/h;->d:[I

    move v1, v2

    :goto_1d
    if-ge v1, v4, :cond_3b

    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x3

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2e
    iget-object v1, p2, Lcom/google/zxing/b/a;->a:[I

    array-length v5, v1

    move v1, v2

    :goto_32
    if-ge v1, v5, :cond_11

    iget-object v6, p2, Lcom/google/zxing/b/a;->a:[I

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_3b
    invoke-static {v3}, Lcom/google/zxing/b/h;->a([I)I

    move-result v6

    aget-byte v1, v5, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v5, v0

    and-int/lit16 v2, v2, 0xff

    :goto_47
    add-int/lit8 v3, v4, -0x1

    if-ge v0, v3, :cond_62

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v7, v2, 0x2

    sub-int v1, v7, v1

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    if-ge v1, v6, :cond_5d

    invoke-virtual {p2, v0}, Lcom/google/zxing/b/a;->b(I)V

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v3

    goto :goto_47

    :cond_62
    return-object p2
.end method

.method public a()Lcom/google/zxing/b/b;
    .registers 13

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/zxing/b;->a:Lcom/google/zxing/g;

    iget v4, v3, Lcom/google/zxing/g;->a:I

    iget v5, v3, Lcom/google/zxing/g;->b:I

    new-instance v6, Lcom/google/zxing/b/b;

    invoke-direct {v6, v4, v5}, Lcom/google/zxing/b/b;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/google/zxing/b/h;->a(I)V

    iget-object v7, p0, Lcom/google/zxing/b/h;->d:[I

    const/4 v0, 0x1

    move v2, v0

    :goto_13
    const/4 v0, 0x5

    if-ge v2, v0, :cond_3b

    mul-int v0, v5, v2

    div-int/lit8 v0, v0, 0x5

    iget-object v8, p0, Lcom/google/zxing/b/h;->c:[B

    invoke-virtual {v3, v0, v8}, Lcom/google/zxing/g;->a(I[B)[B

    move-result-object v8

    shl-int/lit8 v0, v4, 0x2

    div-int/lit8 v9, v0, 0x5

    div-int/lit8 v0, v4, 0x5

    :goto_26
    if-ge v0, v9, :cond_37

    aget-byte v10, v8, v0

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x3

    aget v11, v7, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v7, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_3b
    invoke-static {v7}, Lcom/google/zxing/b/h;->a([I)I

    move-result v7

    invoke-virtual {v3}, Lcom/google/zxing/g;->a()[B

    move-result-object v3

    move v2, v1

    :goto_44
    if-ge v2, v5, :cond_5d

    mul-int v8, v2, v4

    move v0, v1

    :goto_49
    if-ge v0, v4, :cond_59

    add-int v9, v8, v0

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    if-ge v9, v7, :cond_56

    invoke-virtual {v6, v0, v2}, Lcom/google/zxing/b/b;->b(II)V

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_44

    :cond_5d
    return-object v6
.end method
