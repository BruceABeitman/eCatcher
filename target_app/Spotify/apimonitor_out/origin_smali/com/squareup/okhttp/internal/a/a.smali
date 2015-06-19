.class final Lcom/squareup/okhttp/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/squareup/okhttp/internal/a/a;->a:[B

    return-void

    :array_a
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .registers 10

    const/16 v8, 0x3d

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    new-array v3, v1, [B

    array-length v1, p0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    sub-int v4, v1, v2

    move v1, v0

    :goto_13
    if-ge v1, v4, :cond_66

    add-int/lit8 v2, v0, 0x1

    sget-object v5, Lcom/squareup/okhttp/internal/a/a;->a:[B

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    add-int/lit8 v0, v2, 0x1

    sget-object v5, Lcom/squareup/okhttp/internal/a/a;->a:[B

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v2

    add-int/lit8 v5, v0, 0x1

    sget-object v2, Lcom/squareup/okhttp/internal/a/a;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aget-byte v2, v2, v6

    aput-byte v2, v3, v0

    add-int/lit8 v2, v5, 0x1

    sget-object v0, Lcom/squareup/okhttp/internal/a/a;->a:[B

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v0, v0, v6

    aput-byte v0, v3, v5

    add-int/lit8 v0, v1, 0x3

    move v1, v0

    move v0, v2

    goto :goto_13

    :cond_66
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_dc

    :goto_6c
    :try_start_6c
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "US-ASCII"

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_74
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6c .. :try_end_74} :catch_d4

    return-object v1

    :pswitch_75
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/squareup/okhttp/internal/a/a;->a:[B

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v2, v2, v5

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/squareup/okhttp/internal/a/a;->a:[B

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    aget-byte v2, v2, v4

    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v8, v3, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v8, v3, v1

    goto :goto_6c

    :pswitch_9a
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/squareup/okhttp/internal/a/a;->a:[B

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v2, v2, v5

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/squareup/okhttp/internal/a/a;->a:[B

    aget-byte v5, p0, v4

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    aget-byte v2, v2, v5

    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/squareup/okhttp/internal/a/a;->a:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    aget-byte v2, v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v8, v3, v1

    goto :goto_6c

    :catch_d4
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_75
        :pswitch_9a
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 14

    const/16 v12, 0x20

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v7, v0

    :goto_e
    if-lez v7, :cond_26

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_22

    if-eq v0, v10, :cond_22

    if-eq v0, v11, :cond_22

    if-eq v0, v12, :cond_22

    if-ne v0, v9, :cond_26

    :cond_22
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_e

    :cond_26
    int-to-long v0, v7

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-array v4, v0, [B

    move v5, v6

    move v1, v6

    move v2, v6

    move v3, v6

    :goto_34
    if-ge v5, v7, :cond_96

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x41

    if-lt v0, v8, :cond_68

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_68

    add-int/lit8 v0, v0, -0x41

    :goto_44
    shl-int/lit8 v1, v1, 0x6

    int-to-byte v0, v0

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_c9

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v0, 0x10

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    add-int/lit8 v2, v3, 0x1

    int-to-byte v8, v0

    aput-byte v8, v4, v3

    :goto_61
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_34

    :cond_68
    const/16 v8, 0x61

    if-lt v0, v8, :cond_73

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_73

    add-int/lit8 v0, v0, -0x47

    goto :goto_44

    :cond_73
    const/16 v8, 0x30

    if-lt v0, v8, :cond_7e

    const/16 v8, 0x39

    if-gt v0, v8, :cond_7e

    add-int/lit8 v0, v0, 0x4

    goto :goto_44

    :cond_7e
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_85

    const/16 v0, 0x3e

    goto :goto_44

    :cond_85
    const/16 v8, 0x2f

    if-ne v0, v8, :cond_8c

    const/16 v0, 0x3f

    goto :goto_44

    :cond_8c
    if-eq v0, v10, :cond_cb

    if-eq v0, v11, :cond_cb

    if-eq v0, v12, :cond_cb

    if-eq v0, v9, :cond_cb

    const/4 v0, 0x0

    :goto_95
    return-object v0

    :cond_96
    rem-int/lit8 v0, v2, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9d

    const/4 v0, 0x0

    goto :goto_95

    :cond_9d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_af

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    move v3, v0

    :cond_aa
    :goto_aa
    array-length v0, v4

    if-ne v3, v0, :cond_c3

    move-object v0, v4

    goto :goto_95

    :cond_af
    const/4 v2, 0x3

    if-ne v0, v2, :cond_aa

    shl-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    goto :goto_aa

    :cond_c3
    new-array v0, v3, [B

    invoke-static {v4, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_95

    :cond_c9
    move v2, v3

    goto :goto_61

    :cond_cb
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_61
.end method
