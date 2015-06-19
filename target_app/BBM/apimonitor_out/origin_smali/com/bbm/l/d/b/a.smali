.class public Lcom/bbm/l/d/b/a;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final synthetic a:Z

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x80

    const/16 v1, 0x40

    const-class v0, Lcom/bbm/l/d/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lcom/bbm/l/d/b/a;->a:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/bbm/l/d/b/a;->b:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_52

    sput-object v0, Lcom/bbm/l/d/b/a;->c:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_76

    sput-object v0, Lcom/bbm/l/d/b/a;->d:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/bbm/l/d/b/a;->e:[B

    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_d

    :array_2e
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

    :array_52
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
        0x2dt
        0x5ft
    .end array-data

    :array_76
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    :array_ba
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B[BI[B)I
    .registers 10

    const/16 v5, 0x3d

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    aget-byte v3, p0, v1

    if-ne v3, v5, :cond_21

    aget-byte v1, p0, v4

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    aget-byte v2, p0, v0

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    :goto_20
    return v0

    :cond_21
    aget-byte v3, p0, v2

    if-ne v3, v5, :cond_4d

    aget-byte v2, p0, v4

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    aget-byte v0, p0, v0

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v2

    aget-byte v2, p0, v1

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    move v0, v1

    goto :goto_20

    :cond_4d
    aget-byte v3, p0, v4

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x6

    aget-byte v0, p0, v0

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v3

    aget-byte v1, p0, v1

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    aget-byte v1, p0, v2

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0x2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    move v0, v2

    goto :goto_20
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 16

    const/16 v14, 0x3d

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    sget-object v7, Lcom/bbm/l/d/b/a;->d:[B

    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    new-array v9, v13, [B

    move v4, v1

    move v2, v1

    move v3, v1

    :goto_19
    if-ge v4, v6, :cond_b9

    add-int/lit8 v0, v4, 0x0

    aget-byte v0, v5, v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v10, v0

    aget-byte v0, v7, v10

    const/4 v11, -0x5

    if-lt v0, v11, :cond_90

    const/4 v11, -0x1

    if-lt v0, v11, :cond_e3

    if-ne v10, v14, :cond_7d

    sub-int v0, v6, v4

    add-int/lit8 v10, v6, -0x1

    add-int/lit8 v10, v10, 0x0

    aget-byte v5, v5, v10

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    if-eqz v2, :cond_3b

    if-ne v2, v12, :cond_50

    :cond_3b
    new-instance v0, Lcom/bbm/l/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid padding byte \'=\' at byte offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/l/d/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    const/4 v10, 0x3

    if-ne v2, v10, :cond_56

    const/4 v10, 0x2

    if-gt v0, v10, :cond_5a

    :cond_56
    if-ne v2, v13, :cond_6f

    if-le v0, v12, :cond_6f

    :cond_5a
    new-instance v0, Lcom/bbm/l/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/l/d/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    if-eq v5, v14, :cond_b9

    const/16 v0, 0xa

    if-eq v5, v0, :cond_b9

    new-instance v0, Lcom/bbm/l/d/b/b;

    const-string v1, "encoded value has invalid trailing byte"

    invoke-direct {v0, v1}, Lcom/bbm/l/d/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    add-int/lit8 v0, v2, 0x1

    aput-byte v10, v9, v2

    if-ne v0, v13, :cond_e1

    invoke-static {v9, v8, v3, v7}, Lcom/bbm/l/d/b/a;->a([B[BI[B)I

    move-result v0

    add-int/2addr v0, v3

    move v2, v0

    move v0, v1

    :goto_8a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_19

    :cond_90
    new-instance v0, Lcom/bbm/l/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad Base64 input character at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v4, 0x0

    aget-byte v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/l/d/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b9
    if-eqz v2, :cond_db

    if-ne v2, v12, :cond_d4

    new-instance v0, Lcom/bbm/l/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "single trailing character at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/l/d/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d4
    aput-byte v14, v9, v2

    invoke-static {v9, v8, v3, v7}, Lcom/bbm/l/d/b/a;->a([B[BI[B)I

    move-result v0

    add-int/2addr v3, v0

    :cond_db
    new-array v0, v3, [B

    invoke-static {v8, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_e1
    move v2, v3

    goto :goto_8a

    :cond_e3
    move v0, v2

    move v2, v3

    goto :goto_8a
.end method
