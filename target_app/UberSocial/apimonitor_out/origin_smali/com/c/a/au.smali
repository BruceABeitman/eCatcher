.class final Lcom/c/a/au;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static final b:[B

.field private static final f:[Ljava/lang/String;


# instance fields
.field private c:[I

.field private d:J

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v8, 0x6a

    const/16 v9, 0x68

    const/16 v10, 0x4e

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v11, v2, [Ljava/lang/String;

    const-string v2, "EX[zGB]PwBEX[zGB]PwBEX[zGB]PwBEX[zGB]PwBEX[zGB]PwBEX[zGB]PwBEX[zGB]PwBEX[zGB]PwB"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_16d

    move v4, v1

    :cond_15
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_1a
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_170

    const/16 v7, 0x72

    :goto_23
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2f

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1a

    :cond_2f
    move v3, v2

    move-object v2, v5

    :goto_31
    if-gt v3, v4, :cond_15

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const-string v2, "\u0015\u0008\u000b"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_16a

    move v4, v1

    :cond_48
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_4d
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_17c

    const/16 v7, 0x72

    :goto_56
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_62

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_4d

    :cond_62
    move v3, v2

    move-object v2, v5

    :goto_64
    if-gt v3, v4, :cond_48

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    const/4 v12, 0x2

    const-string v2, "5(+\n72- \u00078?&%\u0000=$;:\u001d&!<?\u0016+.\u000b\n-\u0016\u0011\u000c\u000f&\u001b\u001e\u0001\u0004#\u001c\u001b\u001a\u0019<\u0001\u0000\u001f\u001e9\n\r\u0010X\u007f@G^]xELS"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_167

    move v4, v1

    :cond_7c
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_81
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_188

    const/16 v7, 0x72

    :goto_8a
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_96

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_81

    :cond_96
    move v3, v2

    move-object v2, v5

    :goto_98
    if-gt v3, v4, :cond_7c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    const-string v2, "\u0019\u000f\u001b=\u0013\u0013\u000fH*\u001b\u0013\u000f\u001b:"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_164

    move v4, v1

    :cond_b0
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_b5
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_194

    const/16 v7, 0x72

    :goto_be
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_ca

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_b5

    :cond_ca
    move v3, v2

    move-object v2, v5

    :goto_cc
    if-gt v3, v4, :cond_b0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x4

    const-string v2, "\u0015\u0008\u000b*\u0017\u0012\r\u0000\'\u0018\u001f\u0006\u0005 \u001d\u0004\u001b\u001a=\u0006\u0001\u001c\u001f6\u000b\u000e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_162

    move v4, v1

    :cond_e4
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_e9
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1a0

    const/16 v7, 0x72

    :goto_f2
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_fe

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_e9

    :cond_fe
    move v3, v2

    move-object v2, v5

    :goto_100
    if-gt v3, v4, :cond_e4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    sput-object v11, Lcom/c/a/au;->f:[Ljava/lang/String;

    const-class v2, Lcom/c/a/au;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_123

    :goto_117
    sput-boolean v0, Lcom/c/a/au;->a:Z

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1ac

    sput-object v0, Lcom/c/a/au;->b:[B

    return-void

    :cond_123
    move v0, v1

    goto :goto_117

    :pswitch_125
    const/16 v7, 0x74

    goto/16 :goto_23

    :pswitch_129
    move v7, v8

    goto/16 :goto_23

    :pswitch_12c
    move v7, v9

    goto/16 :goto_23

    :pswitch_12f
    move v7, v10

    goto/16 :goto_23

    :pswitch_132
    const/16 v7, 0x74

    goto/16 :goto_56

    :pswitch_136
    move v7, v8

    goto/16 :goto_56

    :pswitch_139
    move v7, v9

    goto/16 :goto_56

    :pswitch_13c
    move v7, v10

    goto/16 :goto_56

    :pswitch_13f
    const/16 v7, 0x74

    goto/16 :goto_8a

    :pswitch_143
    move v7, v8

    goto/16 :goto_8a

    :pswitch_146
    move v7, v9

    goto/16 :goto_8a

    :pswitch_149
    move v7, v10

    goto/16 :goto_8a

    :pswitch_14c
    const/16 v7, 0x74

    goto/16 :goto_be

    :pswitch_150
    move v7, v8

    goto/16 :goto_be

    :pswitch_153
    move v7, v9

    goto/16 :goto_be

    :pswitch_156
    move v7, v10

    goto/16 :goto_be

    :pswitch_159
    const/16 v7, 0x74

    goto :goto_f2

    :pswitch_15c
    move v7, v8

    goto :goto_f2

    :pswitch_15e
    move v7, v9

    goto :goto_f2

    :pswitch_160
    move v7, v10

    goto :goto_f2

    :cond_162
    move v4, v1

    goto :goto_100

    :cond_164
    move v4, v1

    goto/16 :goto_cc

    :cond_167
    move v4, v1

    goto/16 :goto_98

    :cond_16a
    move v4, v1

    goto/16 :goto_64

    :cond_16d
    move v4, v1

    goto/16 :goto_31

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_125
        :pswitch_129
        :pswitch_12c
        :pswitch_12f
    .end packed-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_132
        :pswitch_136
        :pswitch_139
        :pswitch_13c
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_143
        :pswitch_146
        :pswitch_149
    .end packed-switch

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_14c
        :pswitch_150
        :pswitch_153
        :pswitch_156
    .end packed-switch

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_159
        :pswitch_15c
        :pswitch_15e
        :pswitch_160
    .end packed-switch

    :array_1ac
    .array-data 0x1
        0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/c/a/au;->c:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/c/a/au;->e:[B

    iget-object v0, p0, Lcom/c/a/au;->c:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, Lcom/c/a/au;->c:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    iget-object v0, p0, Lcom/c/a/au;->c:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    iget-object v0, p0, Lcom/c/a/au;->c:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/au;->d:J

    return-void
.end method

.method private static final a(II)I
    .registers 4

    const/16 v1, 0x20

    sget-boolean v0, Lcom/c/a/au;->a:Z

    if-nez v0, :cond_10

    if-ltz p1, :cond_a

    if-le p1, v1, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    if-ne p1, v1, :cond_17

    :cond_16
    :goto_16
    return p0

    :cond_17
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int p0, v0, v1

    goto :goto_16
.end method

.method private static final a(III)I
    .registers 5

    and-int v0, p0, p1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static final a(IIIIII)I
    .registers 7

    invoke-static {p1, p2, p3}, Lcom/c/a/au;->a(III)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    invoke-static {v0, p5}, Lcom/c/a/au;->a(II)I

    move-result v0

    return v0
.end method

.method private static final a(Ljava/lang/String;[B)V
    .registers 7

    sget-boolean v1, Lcom/c/a/be;->b:Z

    new-instance v0, Lcom/c/a/au;

    invoke-direct {v0}, Lcom/c/a/au;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/c/a/au;->a([BI)V

    invoke-virtual {v0}, Lcom/c/a/au;->a()[B

    move-result-object v2

    sget-boolean v0, Lcom/c/a/au;->a:Z

    if-nez v0, :cond_24

    array-length v0, v2

    array-length v3, p1

    if-ne v0, v3, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_24
    const/4 v0, 0x0

    :cond_25
    array-length v3, v2

    if-ge v0, v3, :cond_38

    aget-byte v3, v2, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_25

    :cond_38
    return-void
.end method

.method private static a([BJ)V
    .registers 9

    const/16 v5, 0x8

    const-wide/16 v3, 0xff

    sget-boolean v0, Lcom/c/a/au;->a:Z

    if-nez v0, :cond_11

    array-length v0, p0

    if-ge v0, v5, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    const/4 v0, 0x0

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    shr-long v1, p1, v5

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x10

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x3

    const/16 v1, 0x18

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x4

    const/16 v1, 0x20

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x5

    const/16 v1, 0x28

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    const/16 v1, 0x30

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    const/16 v1, 0x38

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method private static a([B[II)V
    .registers 8

    const/4 v0, 0x0

    sget-boolean v2, Lcom/c/a/be;->b:Z

    sget-boolean v1, Lcom/c/a/au;->a:Z

    if-nez v1, :cond_11

    rem-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    sget-boolean v1, Lcom/c/a/au;->a:Z

    if-nez v1, :cond_20

    array-length v1, p1

    div-int/lit8 v3, p2, 0x4

    if-ge v1, v3, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    sget-boolean v1, Lcom/c/a/au;->a:Z

    if-nez v1, :cond_2d

    array-length v1, p0

    if-ge v1, p2, :cond_2d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2d
    move v1, v0

    :cond_2e
    if-ge v0, p2, :cond_5e

    aget v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, v0, 0x2

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, v0, 0x3

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    if-eqz v2, :cond_2e

    :cond_5e
    return-void
.end method

.method private static a([I[BI)V
    .registers 9

    const/4 v0, 0x0

    sget-boolean v2, Lcom/c/a/be;->b:Z

    sget-boolean v1, Lcom/c/a/au;->a:Z

    if-nez v1, :cond_11

    rem-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    sget-boolean v1, Lcom/c/a/au;->a:Z

    if-nez v1, :cond_20

    array-length v1, p0

    div-int/lit8 v3, p2, 0x4

    if-ge v1, v3, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    sget-boolean v1, Lcom/c/a/au;->a:Z

    if-nez v1, :cond_2d

    array-length v1, p1

    if-ge v1, p2, :cond_2d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2d
    move v1, v0

    :cond_2e
    if-ge v0, p2, :cond_5b

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x100

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    if-eqz v2, :cond_2e

    :cond_5b
    return-void
.end method

.method public static final a([Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v5, 0x10

    sget-boolean v2, Lcom/c/a/be;->b:Z

    const-string v3, ""

    new-array v4, v5, [B

    fill-array-data v4, :array_64

    invoke-static {v3, v4}, Lcom/c/a/au;->a(Ljava/lang/String;[B)V

    const-string v3, "a"

    new-array v4, v5, [B

    fill-array-data v4, :array_70

    invoke-static {v3, v4}, Lcom/c/a/au;->a(Ljava/lang/String;[B)V

    sget-object v3, Lcom/c/a/au;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v5, [B

    fill-array-data v4, :array_7c

    invoke-static {v3, v4}, Lcom/c/a/au;->a(Ljava/lang/String;[B)V

    sget-object v3, Lcom/c/a/au;->f:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    new-array v4, v5, [B

    fill-array-data v4, :array_88

    invoke-static {v3, v4}, Lcom/c/a/au;->a(Ljava/lang/String;[B)V

    sget-object v3, Lcom/c/a/au;->f:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    new-array v4, v5, [B

    fill-array-data v4, :array_94

    invoke-static {v3, v4}, Lcom/c/a/au;->a(Ljava/lang/String;[B)V

    sget-object v3, Lcom/c/a/au;->f:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    new-array v4, v5, [B

    fill-array-data v4, :array_a0

    invoke-static {v3, v4}, Lcom/c/a/au;->a(Ljava/lang/String;[B)V

    sget-object v3, Lcom/c/a/au;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    new-array v4, v5, [B

    fill-array-data v4, :array_ac

    invoke-static {v3, v4}, Lcom/c/a/au;->a(Ljava/lang/String;[B)V

    if-eqz v2, :cond_61

    sget-boolean v2, Lcom/c/bp;->b:Z

    if-eqz v2, :cond_62

    :goto_5f
    sput-boolean v0, Lcom/c/bp;->b:Z

    :cond_61
    return-void

    :cond_62
    move v0, v1

    goto :goto_5f

    :array_64
    .array-data 0x1
        0x31t
        0xd6t
        0xcft
        0xe0t
        0xd1t
        0x6at
        0xe9t
        0x31t
        0xb7t
        0x3ct
        0x59t
        0xd7t
        0xe0t
        0xc0t
        0x89t
        0xc0t
    .end array-data

    :array_70
    .array-data 0x1
        0xbdt
        0xe5t
        0x2ct
        0xb3t
        0x1dt
        0xe3t
        0x3et
        0x46t
        0x24t
        0x5et
        0x5t
        0xfbt
        0xdbt
        0xd6t
        0xfbt
        0x24t
    .end array-data

    :array_7c
    .array-data 0x1
        0xa4t
        0x48t
        0x1t
        0x7at
        0xaft
        0x21t
        0xd8t
        0x52t
        0x5ft
        0xc1t
        0xat
        0xe8t
        0x7at
        0xa6t
        0x72t
        0x9dt
    .end array-data

    :array_88
    .array-data 0x1
        0xd9t
        0x13t
        0xat
        0x81t
        0x64t
        0x54t
        0x9ft
        0xe8t
        0x18t
        0x87t
        0x48t
        0x6t
        0xe1t
        0xc7t
        0x1t
        0x4bt
    .end array-data

    :array_94
    .array-data 0x1
        0xd7t
        0x9et
        0x1ct
        0x30t
        0x8at
        0xa5t
        0xbbt
        0xcdt
        0xeet
        0xa8t
        0xedt
        0x63t
        0xdft
        0x41t
        0x2dt
        0xa9t
    .end array-data

    :array_a0
    .array-data 0x1
        0x4t
        0x3ft
        0x85t
        0x82t
        0xf2t
        0x41t
        0xdbt
        0x35t
        0x1ct
        0xe6t
        0x27t
        0xe1t
        0x53t
        0xe7t
        0xf0t
        0xe4t
    .end array-data

    :array_ac
    .array-data 0x1
        0xe3t
        0x3bt
        0x4dt
        0xdct
        0x9ct
        0x38t
        0xf2t
        0x19t
        0x9ct
        0x3et
        0x7bt
        0x16t
        0x4ft
        0xcct
        0x5t
        0x36t
    .end array-data
.end method

.method private static final b(III)I
    .registers 5

    and-int v0, p0, p1

    and-int v1, p0, p2

    or-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static final b(IIIIII)I
    .registers 8

    invoke-static {p1, p2, p3}, Lcom/c/a/au;->b(III)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    const v1, 0x5a827999

    add-int/2addr v0, v1

    invoke-static {v0, p5}, Lcom/c/a/au;->a(II)I

    move-result v0

    return v0
.end method

.method private final b([BI)V
    .registers 30

    sget-boolean v2, Lcom/c/a/au;->a:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v3, p2, 0x40

    if-ge v2, v3, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/au;->c:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/au;->c:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/au;->c:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/c/a/au;->c:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0x10

    new-array v0, v6, [I

    move-object/from16 v26, v0

    const/16 v6, 0x40

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/c/a/au;->a([I[BI)V

    const/4 v6, 0x0

    aget v6, v26, v6

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/c/a/au;->a(IIIIII)I

    move-result v6

    const/4 v2, 0x1

    aget v9, v26, v2

    const/4 v10, 0x7

    move v7, v3

    move v8, v4

    invoke-static/range {v5 .. v10}, Lcom/c/a/au;->a(IIIIII)I

    move-result v5

    const/4 v2, 0x2

    aget v8, v26, v2

    const/16 v9, 0xb

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/c/a/au;->a(IIIIII)I

    move-result v4

    const/4 v2, 0x3

    aget v7, v26, v2

    const/16 v8, 0x13

    invoke-static/range {v3 .. v8}, Lcom/c/a/au;->a(IIIIII)I

    move-result v7

    const/4 v2, 0x4

    aget v10, v26, v2

    const/4 v11, 0x3

    move v8, v4

    move v9, v5

    invoke-static/range {v6 .. v11}, Lcom/c/a/au;->a(IIIIII)I

    move-result v6

    const/4 v2, 0x5

    aget v9, v26, v2

    const/4 v10, 0x7

    move v8, v4

    invoke-static/range {v5 .. v10}, Lcom/c/a/au;->a(IIIIII)I

    move-result v5

    const/4 v2, 0x6

    aget v8, v26, v2

    const/16 v9, 0xb

    invoke-static/range {v4 .. v9}, Lcom/c/a/au;->a(IIIIII)I

    move-result v8

    const/4 v2, 0x7

    aget v11, v26, v2

    const/16 v12, 0x13

    move v9, v5

    move v10, v6

    invoke-static/range {v7 .. v12}, Lcom/c/a/au;->a(IIIIII)I

    move-result v7

    const/16 v2, 0x8

    aget v10, v26, v2

    const/4 v11, 0x3

    move v9, v5

    invoke-static/range {v6 .. v11}, Lcom/c/a/au;->a(IIIIII)I

    move-result v6

    const/16 v2, 0x9

    aget v9, v26, v2

    const/4 v10, 0x7

    invoke-static/range {v5 .. v10}, Lcom/c/a/au;->a(IIIIII)I

    move-result v9

    const/16 v2, 0xa

    aget v12, v26, v2

    const/16 v13, 0xb

    move v10, v6

    move v11, v7

    invoke-static/range {v8 .. v13}, Lcom/c/a/au;->a(IIIIII)I

    move-result v8

    const/16 v2, 0xb

    aget v11, v26, v2

    const/16 v12, 0x13

    move v10, v6

    invoke-static/range {v7 .. v12}, Lcom/c/a/au;->a(IIIIII)I

    move-result v7

    const/16 v2, 0xc

    aget v10, v26, v2

    const/4 v11, 0x3

    invoke-static/range {v6 .. v11}, Lcom/c/a/au;->a(IIIIII)I

    move-result v10

    const/16 v2, 0xd

    aget v13, v26, v2

    const/4 v14, 0x7

    move v11, v7

    move v12, v8

    invoke-static/range {v9 .. v14}, Lcom/c/a/au;->a(IIIIII)I

    move-result v9

    const/16 v2, 0xe

    aget v12, v26, v2

    const/16 v13, 0xb

    move v11, v7

    invoke-static/range {v8 .. v13}, Lcom/c/a/au;->a(IIIIII)I

    move-result v8

    const/16 v2, 0xf

    aget v11, v26, v2

    const/16 v12, 0x13

    invoke-static/range {v7 .. v12}, Lcom/c/a/au;->a(IIIIII)I

    move-result v11

    const/4 v2, 0x0

    aget v14, v26, v2

    const/4 v15, 0x3

    move v12, v8

    move v13, v9

    invoke-static/range {v10 .. v15}, Lcom/c/a/au;->b(IIIIII)I

    move-result v10

    const/4 v2, 0x4

    aget v13, v26, v2

    const/4 v14, 0x5

    move v12, v8

    invoke-static/range {v9 .. v14}, Lcom/c/a/au;->b(IIIIII)I

    move-result v9

    const/16 v2, 0x8

    aget v12, v26, v2

    const/16 v13, 0x9

    invoke-static/range {v8 .. v13}, Lcom/c/a/au;->b(IIIIII)I

    move-result v12

    const/16 v2, 0xc

    aget v15, v26, v2

    const/16 v16, 0xd

    move v13, v9

    move v14, v10

    invoke-static/range {v11 .. v16}, Lcom/c/a/au;->b(IIIIII)I

    move-result v11

    const/4 v2, 0x1

    aget v14, v26, v2

    const/4 v15, 0x3

    move v13, v9

    invoke-static/range {v10 .. v15}, Lcom/c/a/au;->b(IIIIII)I

    move-result v10

    const/4 v2, 0x5

    aget v13, v26, v2

    const/4 v14, 0x5

    invoke-static/range {v9 .. v14}, Lcom/c/a/au;->b(IIIIII)I

    move-result v13

    const/16 v2, 0x9

    aget v16, v26, v2

    const/16 v17, 0x9

    move v14, v10

    move v15, v11

    invoke-static/range {v12 .. v17}, Lcom/c/a/au;->b(IIIIII)I

    move-result v12

    const/16 v2, 0xd

    aget v15, v26, v2

    const/16 v16, 0xd

    move v14, v10

    invoke-static/range {v11 .. v16}, Lcom/c/a/au;->b(IIIIII)I

    move-result v11

    const/4 v2, 0x2

    aget v14, v26, v2

    const/4 v15, 0x3

    invoke-static/range {v10 .. v15}, Lcom/c/a/au;->b(IIIIII)I

    move-result v14

    const/4 v2, 0x6

    aget v17, v26, v2

    const/16 v18, 0x5

    move v15, v11

    move/from16 v16, v12

    invoke-static/range {v13 .. v18}, Lcom/c/a/au;->b(IIIIII)I

    move-result v13

    const/16 v2, 0xa

    aget v16, v26, v2

    const/16 v17, 0x9

    move v15, v11

    invoke-static/range {v12 .. v17}, Lcom/c/a/au;->b(IIIIII)I

    move-result v12

    const/16 v2, 0xe

    aget v15, v26, v2

    const/16 v16, 0xd

    invoke-static/range {v11 .. v16}, Lcom/c/a/au;->b(IIIIII)I

    move-result v15

    const/4 v2, 0x3

    aget v18, v26, v2

    const/16 v19, 0x3

    move/from16 v16, v12

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, Lcom/c/a/au;->b(IIIIII)I

    move-result v14

    const/4 v2, 0x7

    aget v17, v26, v2

    const/16 v18, 0x5

    move/from16 v16, v12

    invoke-static/range {v13 .. v18}, Lcom/c/a/au;->b(IIIIII)I

    move-result v13

    const/16 v2, 0xb

    aget v16, v26, v2

    const/16 v17, 0x9

    invoke-static/range {v12 .. v17}, Lcom/c/a/au;->b(IIIIII)I

    move-result v16

    const/16 v2, 0xf

    aget v19, v26, v2

    const/16 v20, 0xd

    move/from16 v17, v13

    move/from16 v18, v14

    invoke-static/range {v15 .. v20}, Lcom/c/a/au;->b(IIIIII)I

    move-result v15

    const/4 v2, 0x0

    aget v18, v26, v2

    const/16 v19, 0x3

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, Lcom/c/a/au;->c(IIIIII)I

    move-result v14

    const/16 v2, 0x8

    aget v17, v26, v2

    const/16 v18, 0x9

    invoke-static/range {v13 .. v18}, Lcom/c/a/au;->c(IIIIII)I

    move-result v17

    const/4 v2, 0x4

    aget v20, v26, v2

    const/16 v21, 0xb

    move/from16 v18, v14

    move/from16 v19, v15

    invoke-static/range {v16 .. v21}, Lcom/c/a/au;->c(IIIIII)I

    move-result v16

    const/16 v2, 0xc

    aget v19, v26, v2

    const/16 v20, 0xf

    move/from16 v18, v14

    invoke-static/range {v15 .. v20}, Lcom/c/a/au;->c(IIIIII)I

    move-result v15

    const/4 v2, 0x2

    aget v18, v26, v2

    const/16 v19, 0x3

    invoke-static/range {v14 .. v19}, Lcom/c/a/au;->c(IIIIII)I

    move-result v18

    const/16 v2, 0xa

    aget v21, v26, v2

    const/16 v22, 0x9

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-static/range {v17 .. v22}, Lcom/c/a/au;->c(IIIIII)I

    move-result v17

    const/4 v2, 0x6

    aget v20, v26, v2

    const/16 v21, 0xb

    move/from16 v19, v15

    invoke-static/range {v16 .. v21}, Lcom/c/a/au;->c(IIIIII)I

    move-result v16

    const/16 v2, 0xe

    aget v19, v26, v2

    const/16 v20, 0xf

    invoke-static/range {v15 .. v20}, Lcom/c/a/au;->c(IIIIII)I

    move-result v19

    const/4 v2, 0x1

    aget v22, v26, v2

    const/16 v23, 0x3

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-static/range {v18 .. v23}, Lcom/c/a/au;->c(IIIIII)I

    move-result v18

    const/16 v2, 0x9

    aget v21, v26, v2

    const/16 v22, 0x9

    move/from16 v20, v16

    invoke-static/range {v17 .. v22}, Lcom/c/a/au;->c(IIIIII)I

    move-result v17

    const/4 v2, 0x5

    aget v20, v26, v2

    const/16 v21, 0xb

    invoke-static/range {v16 .. v21}, Lcom/c/a/au;->c(IIIIII)I

    move-result v20

    const/16 v2, 0xd

    aget v23, v26, v2

    const/16 v24, 0xf

    move/from16 v21, v17

    move/from16 v22, v18

    invoke-static/range {v19 .. v24}, Lcom/c/a/au;->c(IIIIII)I

    move-result v19

    const/4 v2, 0x3

    aget v22, v26, v2

    const/16 v23, 0x3

    move/from16 v21, v17

    invoke-static/range {v18 .. v23}, Lcom/c/a/au;->c(IIIIII)I

    move-result v18

    const/16 v2, 0xb

    aget v21, v26, v2

    const/16 v22, 0x9

    invoke-static/range {v17 .. v22}, Lcom/c/a/au;->c(IIIIII)I

    move-result v21

    const/4 v2, 0x7

    aget v24, v26, v2

    const/16 v25, 0xb

    move/from16 v22, v18

    move/from16 v23, v19

    invoke-static/range {v20 .. v25}, Lcom/c/a/au;->c(IIIIII)I

    move-result v20

    const/16 v2, 0xf

    aget v23, v26, v2

    const/16 v24, 0xf

    move/from16 v22, v18

    invoke-static/range {v19 .. v24}, Lcom/c/a/au;->c(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/au;->c:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    add-int v5, v5, v18

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/au;->c:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    add-int/2addr v2, v5

    aput v2, v3, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/au;->c:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    add-int v4, v4, v20

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/au;->c:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    add-int v4, v4, v21

    aput v4, v2, v3

    return-void
.end method

.method private static final c(III)I
    .registers 4

    xor-int v0, p0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private static final c(IIIIII)I
    .registers 8

    invoke-static {p1, p2, p3}, Lcom/c/a/au;->c(III)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    invoke-static {v0, p5}, Lcom/c/a/au;->a(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method a([B)V
    .registers 3

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/c/a/au;->a([BI)V

    return-void
.end method

.method a([BI)V
    .registers 12

    const/4 v1, 0x0

    sget-boolean v3, Lcom/c/a/be;->b:Z

    iget-wide v4, p0, Lcom/c/a/au;->d:J

    const/4 v0, 0x3

    shr-long/2addr v4, v0

    const-wide/16 v6, 0x3f

    and-long/2addr v4, v6

    long-to-int v0, v4

    iget-wide v4, p0, Lcom/c/a/au;->d:J

    shl-int/lit8 v2, p2, 0x3

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/c/a/au;->d:J

    rsub-int/lit8 v2, v0, 0x40

    if-lt p2, v2, :cond_30

    iget-object v4, p0, Lcom/c/a/au;->e:[B

    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/c/a/au;->e:[B

    invoke-direct {p0, v0, v1}, Lcom/c/a/au;->b([BI)V

    move v0, v2

    :cond_22
    add-int/lit8 v2, v0, 0x3f

    if-ge v2, p2, :cond_2d

    invoke-direct {p0, p1, v0}, Lcom/c/a/au;->b([BI)V

    add-int/lit8 v0, v0, 0x40

    if-eqz v3, :cond_22

    :cond_2d
    if-eqz v3, :cond_38

    move v0, v1

    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/c/a/au;->e:[B

    sub-int v3, p2, v1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_38
    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_30
.end method

.method a()[B
    .registers 9

    const/16 v7, 0x10

    const/16 v6, 0x8

    new-array v1, v6, [B

    iget-wide v2, p0, Lcom/c/a/au;->d:J

    invoke-static {v1, v2, v3}, Lcom/c/a/au;->a([BJ)V

    iget-wide v2, p0, Lcom/c/a/au;->d:J

    const/4 v0, 0x3

    shr-long/2addr v2, v0

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    long-to-int v0, v2

    const/16 v2, 0x38

    if-ge v0, v2, :cond_29

    rsub-int/lit8 v0, v0, 0x38

    :goto_19
    sget-object v2, Lcom/c/a/au;->b:[B

    invoke-virtual {p0, v2, v0}, Lcom/c/a/au;->a([BI)V

    invoke-virtual {p0, v1, v6}, Lcom/c/a/au;->a([BI)V

    new-array v0, v7, [B

    iget-object v1, p0, Lcom/c/a/au;->c:[I

    invoke-static {v0, v1, v7}, Lcom/c/a/au;->a([B[II)V

    return-object v0

    :cond_29
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_19
.end method
