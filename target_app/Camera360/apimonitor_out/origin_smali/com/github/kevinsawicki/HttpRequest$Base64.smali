.class public Lcom/github/kevinsawicki/HttpRequest$Base64;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64"
.end annotation


# static fields
.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field private static final _STANDARD_ALPHABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/github/kevinsawicki/HttpRequest$Base64;->_STANDARD_ALPHABET:[B

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

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string/jumbo v2, "US-ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_c

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest$Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_c
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7
.end method

.method private static encode3to4([BII[BI)[B
    .registers 11

    const/16 v5, 0x3d

    const/4 v2, 0x0

    sget-object v0, Lcom/github/kevinsawicki/HttpRequest$Base64;->_STANDARD_ALPHABET:[B

    if-lez p2, :cond_2b

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    :goto_e
    const/4 v3, 0x1

    if-le p2, v3, :cond_2d

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_19
    or-int/2addr v3, v4

    const/4 v4, 0x2

    if-le p2, v4, :cond_25

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :cond_25
    or-int v1, v3, v2

    packed-switch p2, :pswitch_data_8a

    :goto_2a
    return-object p3

    :cond_2b
    move v4, v2

    goto :goto_e

    :cond_2d
    move v3, v2

    goto :goto_19

    :pswitch_2f
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2a

    :pswitch_52
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2a

    :pswitch_71
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2a

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_52
        :pswitch_2f
    .end packed-switch
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/github/kevinsawicki/HttpRequest$Base64;->encodeBytes([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/github/kevinsawicki/HttpRequest$Base64;->encodeBytesToBytes([BII)[B

    move-result-object v0

    :try_start_4
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_d

    :goto_c
    return-object v2

    :catch_d
    move-exception v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_c
.end method

.method public static encodeBytesToBytes([BII)[B
    .registers 14

    const/4 v9, 0x3

    const/4 v7, 0x0

    if-nez p0, :cond_d

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "Cannot serialize a null array."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    if-gez p1, :cond_25

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Cannot have negative offset: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_25
    if-gez p2, :cond_3d

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Cannot have length offset: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3d
    add-int v6, p1, p2

    array-length v8, p0

    if-le v6, v8, :cond_66

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    array-length v10, p0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_66
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v8, v6, 0x4

    rem-int/lit8 v6, p2, 0x3

    if-lez v6, :cond_8f

    const/4 v6, 0x4

    :goto_6f
    add-int v2, v8, v6

    new-array v5, v2, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    add-int/lit8 v4, p2, -0x2

    :goto_77
    if-lt v0, v4, :cond_91

    if-ge v0, p2, :cond_84

    add-int v6, v0, p1

    sub-int v8, p2, v0

    invoke-static {p0, v6, v8, v5, v1}, Lcom/github/kevinsawicki/HttpRequest$Base64;->encode3to4([BII[BI)[B

    add-int/lit8 v1, v1, 0x4

    :cond_84
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gt v1, v6, :cond_9b

    new-array v3, v1, [B

    invoke-static {v5, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8e
    return-object v3

    :cond_8f
    move v6, v7

    goto :goto_6f

    :cond_91
    add-int v6, v0, p1

    invoke-static {p0, v6, v9, v5, v1}, Lcom/github/kevinsawicki/HttpRequest$Base64;->encode3to4([BII[BI)[B

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_77

    :cond_9b
    move-object v3, v5

    goto :goto_8e
.end method
