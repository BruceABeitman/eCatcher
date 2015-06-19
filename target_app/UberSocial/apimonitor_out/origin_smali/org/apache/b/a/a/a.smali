.class final Lorg/apache/b/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x3f

.field private static final b:I = 0xfc0000

.field private static final c:I = 0x3f000

.field private static final d:I = 0xfc0

.field private static final e:I = 0x3f

.field private static final f:[B


# instance fields
.field private final g:[B

.field private final h:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/b/a/a/a;->f:[B

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

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/b/a/a/a;->g:[B

    mul-int/lit8 v0, p1, 0x4

    int-to-float v0, v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x3

    int-to-float v1, v0

    const/high16 v2, 0x4298

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/b/a/a/a;->h:[B

    return-void
.end method

.method private a(B)I
    .registers 3

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private a([BI)I
    .registers 9

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_20

    if-le p2, v0, :cond_2c

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000

    int-to-float v4, p2

    const/high16 v5, 0x4298

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4053

    rem-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    :cond_20
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0xd

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, p1, v0

    :cond_2c
    return p2
.end method

.method private a([BIB)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    aput-byte p3, p1, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/b/a/a/a;->a([BI)I

    move-result v0

    return v0
.end method

.method private a([BII)I
    .registers 13

    const/4 v0, 0x0

    const/high16 v8, 0xfc

    const v7, 0x3f000

    const/16 v6, 0x3d

    if-nez p3, :cond_b

    :goto_a
    return v0

    :cond_b
    add-int v1, p2, p3

    :goto_d
    sub-int v2, v1, p2

    const/4 v3, 0x2

    if-le v2, v3, :cond_67

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    invoke-direct {p0, v3}, Lorg/apache/b/a/a/a;->a(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/apache/b/a/a/a;->a(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v4, 0x1

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lorg/apache/b/a/a/a;->a(B)I

    move-result v4

    or-int/2addr v2, v3

    or-int/2addr v2, v4

    and-int v3, v2, v8

    shr-int/lit8 v3, v3, 0x12

    iget-object v4, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v5, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v3, v5, v3

    invoke-direct {p0, v4, v0, v3}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    and-int v3, v2, v7

    shr-int/lit8 v3, v3, 0xc

    iget-object v4, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v5, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v3, v5, v3

    invoke-direct {p0, v4, v0, v3}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    and-int/lit16 v3, v2, 0xfc0

    shr-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v5, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v3, v5, v3

    invoke-direct {p0, v4, v0, v3}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    and-int/lit8 v2, v2, 0x3f

    iget-object v3, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v4, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v2, v4, v2

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    goto :goto_d

    :cond_67
    sub-int/2addr v1, p2

    packed-switch v1, :pswitch_data_da

    goto :goto_a

    :pswitch_6c
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x10

    and-int v2, v1, v8

    shr-int/lit8 v2, v2, 0x12

    iget-object v3, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v4, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v2, v4, v2

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    and-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0xc

    iget-object v2, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v3, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v1, v3, v1

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    iget-object v1, p0, Lorg/apache/b/a/a/a;->h:[B

    invoke-direct {p0, v1, v0, v6}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    iget-object v1, p0, Lorg/apache/b/a/a/a;->h:[B

    invoke-direct {p0, v1, v0, v6}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    goto/16 :goto_a

    :pswitch_9b
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    and-int v2, v1, v8

    shr-int/lit8 v2, v2, 0x12

    iget-object v3, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v4, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v2, v4, v2

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    and-int v2, v1, v7

    shr-int/lit8 v2, v2, 0xc

    iget-object v3, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v4, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v2, v4, v2

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    and-int/lit16 v1, v1, 0xfc0

    shr-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/apache/b/a/a/a;->h:[B

    sget-object v3, Lorg/apache/b/a/a/a;->f:[B

    aget-byte v1, v3, v1

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    iget-object v1, p0, Lorg/apache/b/a/a/a;->h:[B

    invoke-direct {p0, v1, v0, v6}, Lorg/apache/b/a/a/a;->a([BIB)I

    move-result v0

    goto/16 :goto_a

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_9b
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    const/4 v2, 0x0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/b/a/a/a;->g:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_18

    iget-object v1, p0, Lorg/apache/b/a/a/a;->g:[B

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/b/a/a/a;->a([BII)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/b/a/a/a;->h:[B

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_18
    return-void
.end method
