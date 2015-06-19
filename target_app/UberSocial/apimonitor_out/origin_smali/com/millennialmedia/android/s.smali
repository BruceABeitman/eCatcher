.class Lcom/millennialmedia/android/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x0

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/s;->a:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/millennialmedia/android/s;->b:[I

    sget-object v0, Lcom/millennialmedia/android/s;->b:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    sget-object v0, Lcom/millennialmedia/android/s;->a:[C

    array-length v2, v0

    move v0, v1

    :goto_19
    if-ge v0, v2, :cond_26

    sget-object v3, Lcom/millennialmedia/android/s;->b:[I

    sget-object v4, Lcom/millennialmedia/android/s;->a:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_26
    sget-object v0, Lcom/millennialmedia/android/s;->b:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)[B
    .registers 10

    const/4 v4, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_7
    if-nez v2, :cond_e

    new-array v0, v4, [B

    :goto_b
    return-object v0

    :cond_c
    move v2, v4

    goto :goto_7

    :cond_e
    move v1, v4

    move v0, v4

    :goto_10
    if-ge v1, v2, :cond_21

    sget-object v3, Lcom/millennialmedia/android/s;->b:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v3, v3, v5

    if-gez v3, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_29

    const/4 v0, 0x0

    goto :goto_b

    :cond_29
    move v1, v2

    move v3, v4

    :cond_2b
    :goto_2b
    const/4 v5, 0x1

    if-le v1, v5, :cond_45

    sget-object v5, Lcom/millennialmedia/android/s;->b:[I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    if-gtz v5, :cond_45

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_2b

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_45
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v3

    new-array v3, v7, [B

    move v6, v4

    move v0, v4

    :goto_51
    if-ge v6, v7, :cond_8c

    move v1, v4

    move v5, v0

    move v0, v4

    :goto_56
    const/4 v2, 0x4

    if-ge v0, v2, :cond_72

    sget-object v8, Lcom/millennialmedia/android/s;->b:[I

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v5, v8, v5

    if-ltz v5, :cond_6f

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v5, v8

    or-int/2addr v1, v5

    :goto_6b
    add-int/lit8 v0, v0, 0x1

    move v5, v2

    goto :goto_56

    :cond_6f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6b

    :cond_72
    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    if-ge v0, v7, :cond_89

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    if-ge v2, v7, :cond_8f

    add-int/lit8 v0, v2, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    :cond_89
    :goto_89
    move v6, v0

    move v0, v5

    goto :goto_51

    :cond_8c
    move-object v0, v3

    goto/16 :goto_b

    :cond_8f
    move v0, v2

    goto :goto_89
.end method

.method public static final a([B)[B
    .registers 10

    const/4 v4, 0x0

    array-length v2, p0

    move v1, v4

    move v0, v4

    :goto_4
    if-ge v1, v2, :cond_15

    sget-object v3, Lcom/millennialmedia/android/s;->b:[I

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-gez v3, :cond_12

    add-int/lit8 v0, v0, 0x1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    :goto_1c
    return-object v0

    :cond_1d
    move v1, v2

    move v3, v4

    :cond_1f
    :goto_1f
    const/4 v5, 0x1

    if-le v1, v5, :cond_37

    sget-object v5, Lcom/millennialmedia/android/s;->b:[I

    add-int/lit8 v1, v1, -0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    if-gtz v5, :cond_37

    aget-byte v5, p0, v1

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1f

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_37
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v3

    new-array v3, v7, [B

    move v6, v4

    move v0, v4

    :goto_43
    if-ge v6, v7, :cond_7e

    move v1, v4

    move v5, v0

    move v0, v4

    :goto_48
    const/4 v2, 0x4

    if-ge v0, v2, :cond_64

    sget-object v8, Lcom/millennialmedia/android/s;->b:[I

    add-int/lit8 v2, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v8, v5

    if-ltz v5, :cond_61

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v5, v8

    or-int/2addr v1, v5

    :goto_5d
    add-int/lit8 v0, v0, 0x1

    move v5, v2

    goto :goto_48

    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_5d

    :cond_64
    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    if-ge v0, v7, :cond_7b

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    if-ge v2, v7, :cond_80

    add-int/lit8 v0, v2, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    :cond_7b
    :goto_7b
    move v6, v0

    move v0, v5

    goto :goto_43

    :cond_7e
    move-object v0, v3

    goto :goto_1c

    :cond_80
    move v0, v2

    goto :goto_7b
.end method

.method public static final a([BZ)[C
    .registers 16

    const/16 v3, 0x3d

    const/4 v13, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    array-length v0, p0

    move v6, v0

    :goto_8
    if-nez v6, :cond_f

    new-array v0, v1, [C

    :goto_c
    return-object v0

    :cond_d
    move v6, v1

    goto :goto_8

    :cond_f
    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v0, v6, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v2, v0, 0x2

    if-eqz p1, :cond_8d

    add-int/lit8 v0, v2, -0x1

    div-int/lit8 v0, v0, 0x4c

    shl-int/lit8 v0, v0, 0x1

    :goto_23
    add-int v8, v2, v0

    new-array v4, v8, [C

    move v0, v1

    move v2, v1

    move v5, v1

    :cond_2a
    :goto_2a
    if-ge v5, v7, :cond_8f

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/millennialmedia/android/s;->a:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v4, v2

    add-int/lit8 v2, v10, 0x1

    sget-object v11, Lcom/millennialmedia/android/s;->a:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v4, v10

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/millennialmedia/android/s;->a:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v4, v2

    add-int/lit8 v2, v10, 0x1

    sget-object v11, Lcom/millennialmedia/android/s;->a:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    aput-char v9, v4, v10

    if-eqz p1, :cond_2a

    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2a

    add-int/lit8 v9, v8, -0x2

    if-ge v2, v9, :cond_2a

    add-int/lit8 v9, v2, 0x1

    const/16 v0, 0xd

    aput-char v0, v4, v2

    add-int/lit8 v0, v9, 0x1

    const/16 v2, 0xa

    aput-char v2, v4, v9

    move v2, v0

    move v0, v1

    goto :goto_2a

    :cond_8d
    move v0, v1

    goto :goto_23

    :cond_8f
    sub-int v0, v6, v7

    if-lez v0, :cond_ca

    aget-byte v2, p0, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v0, v13, :cond_a3

    add-int/lit8 v1, v6, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    :cond_a3
    or-int/2addr v1, v2

    add-int/lit8 v2, v8, -0x4

    sget-object v5, Lcom/millennialmedia/android/s;->a:[C

    shr-int/lit8 v6, v1, 0xc

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    add-int/lit8 v2, v8, -0x3

    sget-object v5, Lcom/millennialmedia/android/s;->a:[C

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    add-int/lit8 v2, v8, -0x2

    if-ne v0, v13, :cond_cd

    sget-object v0, Lcom/millennialmedia/android/s;->a:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_c4
    aput-char v0, v4, v2

    add-int/lit8 v0, v8, -0x1

    aput-char v3, v4, v0

    :cond_ca
    move-object v0, v4

    goto/16 :goto_c

    :cond_cd
    move v0, v3

    goto :goto_c4
.end method

.method public static final b([BZ)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/s;->a([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
