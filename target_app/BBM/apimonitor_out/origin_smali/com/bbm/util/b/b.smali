.class public Lcom/bbm/util/b/b;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# static fields
.field private static final C:Ljava/lang/String;


# instance fields
.field protected A:I

.field protected B:I

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Z

.field protected e:I

.field protected f:I

.field protected g:[I

.field protected h:[I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Z

.field protected m:I

.field protected n:Ljava/nio/ByteBuffer;

.field protected o:[B

.field protected p:I

.field protected q:[S

.field protected r:[B

.field protected s:[B

.field protected t:[B

.field protected u:[I

.field protected v:[I

.field protected w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bbm/util/b/c;",
            ">;"
        }
    .end annotation
.end field

.field protected x:Lcom/bbm/util/b/c;

.field protected y:Landroid/graphics/Bitmap;

.field protected z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/bbm/util/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/util/b/b;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bbm/util/b/b;->f:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bbm/util/b/b;->o:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/util/b/b;->p:I

    return-void
.end method

.method private a(Lcom/bbm/util/b/c;[B)V
    .registers 25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bbm/util/b/c;->j:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_10
    if-nez p1, :cond_79

    move-object/from16 v0, p0

    iget v1, v0, Lcom/bbm/util/b/b;->b:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bbm/util/b/b;->c:I

    mul-int/2addr v1, v2

    move v15, v1

    :goto_1c
    if-eqz p2, :cond_23

    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v1, v15, :cond_27

    :cond_23
    new-array v0, v15, [B

    move-object/from16 p2, v0

    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/util/b/b;->q:[S

    if-nez v1, :cond_35

    const/16 v1, 0x1000

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/bbm/util/b/b;->q:[S

    :cond_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/util/b/b;->r:[B

    if-nez v1, :cond_43

    const/16 v1, 0x1000

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/bbm/util/b/b;->r:[B

    :cond_43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/util/b/b;->s:[B

    if-nez v1, :cond_51

    const/16 v1, 0x1001

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/bbm/util/b/b;->s:[B

    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/bbm/util/b/b;->i()I

    move-result v16

    const/4 v1, 0x1

    shl-int v17, v1, v16

    add-int/lit8 v18, v17, 0x1

    add-int/lit8 v11, v17, 0x2

    const/4 v10, -0x1

    add-int/lit8 v3, v16, 0x1

    const/4 v1, 0x1

    shl-int/2addr v1, v3

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    :goto_64
    move/from16 v0, v17

    if-ge v1, v0, :cond_84

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/util/b/b;->q:[S

    const/4 v5, 0x0

    aput-short v5, v2, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/util/b/b;->r:[B

    int-to-byte v5, v1

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_79
    move-object/from16 v0, p1

    iget v1, v0, Lcom/bbm/util/b/c;->c:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bbm/util/b/c;->d:I

    mul-int/2addr v1, v2

    move v15, v1

    goto :goto_1c

    :cond_84
    const/4 v12, 0x0

    const/4 v1, 0x0

    move v5, v12

    move v6, v12

    move v7, v12

    move v14, v1

    move v2, v12

    move v8, v12

    move v1, v12

    :goto_8d
    if-ge v14, v15, :cond_161

    if-nez v5, :cond_171

    if-ge v8, v3, :cond_ad

    if-nez v2, :cond_9c

    invoke-direct/range {p0 .. p0}, Lcom/bbm/util/b/b;->j()I

    move-result v2

    if-lez v2, :cond_161

    const/4 v1, 0x0

    :cond_9c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bbm/util/b/b;->o:[B

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    add-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_8d

    :cond_ad
    and-int v9, v7, v4

    shr-int/2addr v7, v3

    sub-int/2addr v8, v3

    if-gt v9, v11, :cond_161

    move/from16 v0, v18

    if-eq v9, v0, :cond_161

    move/from16 v0, v17

    if-ne v9, v0, :cond_c5

    add-int/lit8 v3, v16, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v11, v17, 0x2

    const/4 v10, -0x1

    goto :goto_8d

    :cond_c5
    const/4 v13, -0x1

    if-ne v10, v13, :cond_da

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bbm/util/b/b;->s:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bbm/util/b/b;->r:[B

    aget-byte v13, v13, v9

    aput-byte v13, v10, v5

    move v5, v6

    move v10, v9

    move v6, v9

    goto :goto_8d

    :cond_da
    if-ne v9, v11, :cond_16d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bbm/util/b/b;->s:[B

    move-object/from16 v19, v0

    add-int/lit8 v13, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    move v6, v10

    :goto_e8
    move/from16 v0, v17

    if-le v6, v0, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bbm/util/b/b;->s:[B

    move-object/from16 v19, v0

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bbm/util/b/b;->r:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v6

    aput-byte v20, v19, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bbm/util/b/b;->q:[S

    aget-short v6, v13, v6

    move v13, v5

    goto :goto_e8

    :cond_106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bbm/util/b/b;->r:[B

    aget-byte v5, v5, v6

    and-int/lit16 v6, v5, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bbm/util/b/b;->s:[B

    move-object/from16 v19, v0

    add-int/lit8 v5, v13, 0x1

    int-to-byte v0, v6

    move/from16 v20, v0

    aput-byte v20, v19, v13

    const/16 v13, 0x1000

    if-ge v11, v13, :cond_16b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bbm/util/b/b;->q:[S

    int-to-short v10, v10

    aput-short v10, v13, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bbm/util/b/b;->r:[B

    int-to-byte v13, v6

    aput-byte v13, v10, v11

    add-int/lit8 v10, v11, 0x1

    :goto_12f
    and-int v11, v10, v4

    if-nez v11, :cond_13a

    const/16 v11, 0x1000

    if-ge v10, v11, :cond_13a

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v10

    :cond_13a
    move/from16 v21, v5

    move v5, v7

    move v7, v9

    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move/from16 v3, v21

    :goto_144
    add-int/lit8 v11, v3, -0x1

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bbm/util/b/b;->s:[B

    aget-byte v13, v13, v11

    aput-byte v13, p2, v12

    add-int/lit8 v12, v14, 0x1

    move v14, v12

    move v12, v3

    move v3, v8

    move v8, v6

    move v6, v4

    move v4, v9

    move/from16 v21, v7

    move v7, v5

    move v5, v11

    move v11, v10

    move/from16 v10, v21

    goto/16 :goto_8d

    :cond_161
    move v1, v12

    :goto_162
    if-ge v1, v15, :cond_16a

    const/4 v2, 0x0

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_162

    :cond_16a
    return-void

    :cond_16b
    move v10, v11

    goto :goto_12f

    :cond_16d
    move v13, v5

    move v6, v9

    goto/16 :goto_e8

    :cond_171
    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move v3, v5

    move v5, v7

    move v7, v10

    move v10, v11

    goto :goto_144
.end method

.method private b(I)[I
    .registers 12

    const/4 v2, 0x0

    mul-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    new-array v4, v0, [B

    :try_start_6
    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x100

    new-array v0, v0, [I
    :try_end_f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_f} :catch_33

    move v1, v2

    :goto_10
    if-ge v2, p1, :cond_41

    add-int/lit8 v3, v1, 0x1

    :try_start_14
    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v1, v4, v3

    and-int/lit16 v7, v1, 0xff

    add-int/lit8 v1, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    add-int/lit8 v3, v2, 0x1

    const/high16 v8, -0x100

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v2
    :try_end_31
    .catch Ljava/nio/BufferUnderflowException; {:try_start_14 .. :try_end_31} :catch_42

    move v2, v3

    goto :goto_10

    :catch_33
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_37
    sget-object v2, Lcom/bbm/util/b/b;->C:Ljava/lang/String;

    const-string v3, "Format Error Reading Color Table"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    :cond_41
    return-object v0

    :catch_42
    move-exception v1

    goto :goto_37
.end method

.method private g()Z
    .registers 2

    iget v0, p0, Lcom/bbm/util/b/b;->a:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private h()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/util/b/b;->a:I

    iput v0, p0, Lcom/bbm/util/b/b;->B:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/util/b/b;->A:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/b/b;->w:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/util/b/b;->g:[I

    return-void
.end method

.method private i()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_a

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_9
    return v0

    :catch_a
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    goto :goto_9
.end method

.method private j()I
    .registers 5

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->p:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/bbm/util/b/b;->p:I

    if-lez v1, :cond_26

    :goto_b
    :try_start_b
    iget v1, p0, Lcom/bbm/util/b/b;->p:I

    if-ge v0, v1, :cond_26

    iget v1, p0, Lcom/bbm/util/b/b;->p:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bbm/util/b/b;->o:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1b

    add-int/2addr v0, v1

    goto :goto_b

    :catch_1b
    move-exception v1

    sget-object v2, Lcom/bbm/util/b/b;->C:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    :cond_26
    return v0
.end method

.method private k()V
    .registers 11

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :cond_4
    :goto_4
    if-nez v3, :cond_f8

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_f8

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    sparse-switch v0, :sswitch_data_fa

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    goto :goto_4

    :sswitch_16
    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    if-nez v0, :cond_1d

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    goto :goto_4

    :cond_1d
    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->a:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->b:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->c:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->d:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v4

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_9c

    move v0, v1

    :goto_4e
    iput-boolean v0, p0, Lcom/bbm/util/b/b;->l:Z

    const-wide/high16 v5, 0x4000

    and-int/lit8 v0, v4, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v0, v5

    iput v0, p0, Lcom/bbm/util/b/b;->m:I

    iget-object v5, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_9e

    move v0, v1

    :goto_65
    iput-boolean v0, v5, Lcom/bbm/util/b/c;->e:Z

    iget-boolean v0, p0, Lcom/bbm/util/b/b;->l:Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget v4, p0, Lcom/bbm/util/b/b;->m:I

    invoke-direct {p0, v4}, Lcom/bbm/util/b/b;->b(I)[I

    move-result-object v4

    iput-object v4, v0, Lcom/bbm/util/b/c;->k:[I

    :goto_75
    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->j:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->t:[B

    invoke-direct {p0, v9, v0}, Lcom/bbm/util/b/b;->a(Lcom/bbm/util/b/c;[B)V

    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/bbm/util/b/b;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bbm/util/b/b;->B:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->w:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_9c
    move v0, v2

    goto :goto_4e

    :cond_9e
    move v0, v2

    goto :goto_65

    :cond_a0
    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iput-object v9, v0, Lcom/bbm/util/b/c;->k:[I

    goto :goto_75

    :sswitch_a5
    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    sparse-switch v0, :sswitch_data_108

    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    goto/16 :goto_4

    :sswitch_b1
    new-instance v0, Lcom/bbm/util/b/c;

    invoke-direct {v0, v2}, Lcom/bbm/util/b/c;-><init>(B)V

    iput-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    invoke-direct {p0}, Lcom/bbm/util/b/b;->l()V

    goto/16 :goto_4

    :sswitch_bd
    invoke-direct {p0}, Lcom/bbm/util/b/b;->j()I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_c6
    const/16 v5, 0xb

    if-ge v0, v5, :cond_d5

    iget-object v5, p0, Lcom/bbm/util/b/b;->o:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    :cond_d5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-direct {p0}, Lcom/bbm/util/b/b;->m()V

    goto/16 :goto_4

    :cond_e6
    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    goto/16 :goto_4

    :sswitch_eb
    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    goto/16 :goto_4

    :sswitch_f0
    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    goto/16 :goto_4

    :sswitch_f5
    move v3, v1

    goto/16 :goto_4

    :cond_f8
    return-void

    nop

    :sswitch_data_fa
    .sparse-switch
        0x21 -> :sswitch_a5
        0x2c -> :sswitch_16
        0x3b -> :sswitch_f5
    .end sparse-switch

    :sswitch_data_108
    .sparse-switch
        0x1 -> :sswitch_f0
        0xf9 -> :sswitch_b1
        0xfe -> :sswitch_eb
        0xff -> :sswitch_bd
    .end sparse-switch
.end method

.method private l()V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v1

    iget-object v2, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    and-int/lit8 v3, v1, 0x1c

    shr-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/bbm/util/b/c;->g:I

    iget-object v2, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget v2, v2, Lcom/bbm/util/b/c;->g:I

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iput v0, v2, Lcom/bbm/util/b/c;->g:I

    :cond_1a
    iget-object v2, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3a

    :goto_20
    iput-boolean v0, v2, Lcom/bbm/util/b/c;->f:Z

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v1, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/bbm/util/b/c;->i:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v1

    iput v1, v0, Lcom/bbm/util/b/c;->h:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    return-void

    :cond_3a
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private m()V
    .registers 5

    const/4 v3, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/bbm/util/b/b;->j()I

    iget-object v0, p0, Lcom/bbm/util/b/b;->o:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1d

    iget-object v0, p0, Lcom/bbm/util/b/b;->o:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/bbm/util/b/b;->o:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bbm/util/b/b;->f:I

    :cond_1d
    iget v0, p0, Lcom/bbm/util/b/b;->p:I

    if-lez v0, :cond_27

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_27
    return-void
.end method

.method private n()V
    .registers 2

    :cond_0
    invoke-direct {p0}, Lcom/bbm/util/b/b;->j()I

    iget v0, p0, Lcom/bbm/util/b/b;->p:I

    if-lez v0, :cond_d

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 4

    const/4 v0, -0x1

    if-ltz p1, :cond_11

    iget v1, p0, Lcom/bbm/util/b/b;->B:I

    if-ge p1, v1, :cond_11

    iget-object v0, p0, Lcom/bbm/util/b/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/b/c;

    iget v0, v0, Lcom/bbm/util/b/c;->i:I

    :cond_11
    return v0
.end method

.method public final a([B)I
    .registers 8

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/bbm/util/b/b;->h()V

    if-eqz p1, :cond_e5

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v0, ""

    move-object v3, v0

    move v0, v2

    :goto_1e
    const/4 v4, 0x6

    if-ge v0, v4, :cond_3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    const-string v0, "GIF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-direct {p0}, Lcom/bbm/util/b/b;->k()V

    iget v0, p0, Lcom/bbm/util/b/b;->B:I

    if-gez v0, :cond_53

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    :cond_53
    :goto_53
    iget v0, p0, Lcom/bbm/util/b/b;->a:I

    return v0

    :cond_56
    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->b:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->c:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_d8

    move v0, v1

    :goto_6f
    iput-boolean v0, p0, Lcom/bbm/util/b/b;->d:Z

    and-int/lit8 v0, v3, 0x7

    shl-int v0, v5, v0

    iput v0, p0, Lcom/bbm/util/b/b;->e:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->i:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->k:I

    iget v0, p0, Lcom/bbm/util/b/b;->b:I

    iget v3, p0, Lcom/bbm/util/b/b;->c:I

    mul-int/2addr v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bbm/util/b/b;->t:[B

    iget v0, p0, Lcom/bbm/util/b/b;->b:I

    iget v3, p0, Lcom/bbm/util/b/b;->c:I

    mul-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bbm/util/b/b;->u:[I

    iget v0, p0, Lcom/bbm/util/b/b;->b:I

    iget v3, p0, Lcom/bbm/util/b/b;->c:I

    mul-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bbm/util/b/b;->v:[I

    :try_start_9e
    iget v0, p0, Lcom/bbm/util/b/b;->b:I

    iget v3, p0, Lcom/bbm/util/b/b;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/b/b;->y:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/bbm/util/b/b;->b:I

    iget v3, p0, Lcom/bbm/util/b/b;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/b/b;->z:Landroid/graphics/Bitmap;
    :try_end_b6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9e .. :try_end_b6} :catch_da

    :goto_b6
    iget-boolean v0, p0, Lcom/bbm/util/b/b;->d:Z

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_44

    iget v0, p0, Lcom/bbm/util/b/b;->e:I

    invoke-direct {p0, v0}, Lcom/bbm/util/b/b;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/b/b;->g:[I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/bbm/util/b/b;->g:[I

    iget v2, p0, Lcom/bbm/util/b/b;->i:I

    aget v0, v0, v2

    iput v0, p0, Lcom/bbm/util/b/b;->j:I

    goto/16 :goto_44

    :cond_d8
    move v0, v2

    goto :goto_6f

    :catch_da
    move-exception v0

    const-string v3, "Out of memory processing image"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    goto :goto_b6

    :cond_e5
    iput v5, p0, Lcom/bbm/util/b/b;->a:I

    goto/16 :goto_53
.end method

.method public final a()V
    .registers 3

    iget v0, p0, Lcom/bbm/util/b/b;->A:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/bbm/util/b/b;->B:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bbm/util/b/b;->A:I

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/util/b/b;->A:I

    return-void
.end method

.method public final b([B)Z
    .registers 12

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/bbm/util/b/b;->h()V

    if-eqz p1, :cond_46

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_20
    const/4 v4, 0x6

    if-ge v0, v4, :cond_2e

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GIF87a"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GIF89a"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    :cond_46
    :goto_46
    return v2

    :cond_47
    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->b:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->c:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_a1

    move v0, v1

    :goto_60
    iput-boolean v0, p0, Lcom/bbm/util/b/b;->d:Z

    const/4 v0, 0x2

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v0, v3

    iput v0, p0, Lcom/bbm/util/b/b;->e:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->i:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    iput v0, p0, Lcom/bbm/util/b/b;->k:I

    iget-boolean v0, p0, Lcom/bbm/util/b/b;->d:Z

    if-eqz v0, :cond_8e

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_8e

    :try_start_7e
    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lcom/bbm/util/b/b;->e:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_8e} :catch_18e

    :cond_8e
    move v3, v2

    :goto_8f
    if-nez v3, :cond_184

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_184

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    sparse-switch v0, :sswitch_data_192

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    goto :goto_8f

    :cond_a1
    move v0, v2

    goto :goto_60

    :sswitch_a3
    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    if-nez v0, :cond_aa

    iput v1, p0, Lcom/bbm/util/b/b;->a:I

    goto :goto_46

    :cond_aa
    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->a:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->b:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->c:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->d:I

    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v4

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_12d

    move v0, v1

    :goto_db
    iput-boolean v0, p0, Lcom/bbm/util/b/b;->l:Z

    const-wide/high16 v5, 0x4000

    and-int/lit8 v0, v4, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v0, v5

    iput v0, p0, Lcom/bbm/util/b/b;->m:I

    iget-object v5, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_12f

    move v0, v1

    :goto_f2
    iput-boolean v0, v5, Lcom/bbm/util/b/c;->e:Z

    iget-boolean v0, p0, Lcom/bbm/util/b/b;->l:Z

    if-eqz v0, :cond_108

    :try_start_f8
    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget v5, p0, Lcom/bbm/util/b/b;->e:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_108
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f8 .. :try_end_108} :catch_18b

    :cond_108
    iget-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    iget-object v4, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, v0, Lcom/bbm/util/b/c;->j:I

    invoke-direct {p0, v9, v9}, Lcom/bbm/util/b/b;->a(Lcom/bbm/util/b/c;[B)V

    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    invoke-direct {p0}, Lcom/bbm/util/b/b;->g()Z

    move-result v0

    if-nez v0, :cond_46

    iget v0, p0, Lcom/bbm/util/b/b;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bbm/util/b/b;->B:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->w:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8f

    :cond_12d
    move v0, v2

    goto :goto_db

    :cond_12f
    move v0, v2

    goto :goto_f2

    :sswitch_131
    invoke-direct {p0}, Lcom/bbm/util/b/b;->i()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a0

    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    goto/16 :goto_8f

    :sswitch_13d
    new-instance v0, Lcom/bbm/util/b/c;

    invoke-direct {v0, v2}, Lcom/bbm/util/b/c;-><init>(B)V

    iput-object v0, p0, Lcom/bbm/util/b/b;->x:Lcom/bbm/util/b/c;

    invoke-direct {p0}, Lcom/bbm/util/b/b;->l()V

    goto/16 :goto_8f

    :sswitch_149
    invoke-direct {p0}, Lcom/bbm/util/b/b;->j()I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_152
    const/16 v5, 0xb

    if-ge v0, v5, :cond_161

    iget-object v5, p0, Lcom/bbm/util/b/b;->o:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_152

    :cond_161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    invoke-direct {p0}, Lcom/bbm/util/b/b;->m()V

    goto/16 :goto_8f

    :cond_172
    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    goto/16 :goto_8f

    :sswitch_177
    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    goto/16 :goto_8f

    :sswitch_17c
    invoke-direct {p0}, Lcom/bbm/util/b/b;->n()V

    goto/16 :goto_8f

    :sswitch_181
    move v3, v1

    goto/16 :goto_8f

    :cond_184
    iget v0, p0, Lcom/bbm/util/b/b;->B:I

    if-le v0, v1, :cond_46

    move v2, v1

    goto/16 :goto_46

    :catch_18b
    move-exception v0

    goto/16 :goto_46

    :catch_18e
    move-exception v0

    goto/16 :goto_46

    nop

    :sswitch_data_192
    .sparse-switch
        0x21 -> :sswitch_131
        0x2c -> :sswitch_a3
        0x3b -> :sswitch_181
    .end sparse-switch

    :sswitch_data_1a0
    .sparse-switch
        0x1 -> :sswitch_17c
        0xf9 -> :sswitch_13d
        0xfe -> :sswitch_177
        0xff -> :sswitch_149
    .end sparse-switch
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/bbm/util/b/b;->B:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/bbm/util/b/b;->A:I

    return v0
.end method

.method public final e()Landroid/graphics/Bitmap;
    .registers 15

    iget v0, p0, Lcom/bbm/util/b/b;->B:I

    if-lez v0, :cond_c

    iget v0, p0, Lcom/bbm/util/b/b;->A:I

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/util/b/b;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/bbm/util/b/b;->w:Ljava/util/ArrayList;

    iget v1, p0, Lcom/bbm/util/b/b;->A:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/bbm/util/b/c;

    iget-object v0, v10, Lcom/bbm/util/b/c;->k:[I

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/bbm/util/b/b;->g:[I

    iput-object v0, p0, Lcom/bbm/util/b/b;->h:[I

    :cond_21
    :goto_21
    const/4 v0, 0x0

    iget-boolean v1, v10, Lcom/bbm/util/b/c;->f:Z

    if-eqz v1, :cond_33

    iget-object v0, p0, Lcom/bbm/util/b/b;->h:[I

    iget v1, v10, Lcom/bbm/util/b/c;->h:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/bbm/util/b/b;->h:[I

    iget v2, v10, Lcom/bbm/util/b/c;->h:I

    const/4 v3, 0x0

    aput v3, v1, v2

    :cond_33
    move v11, v0

    iget-object v0, p0, Lcom/bbm/util/b/b;->h:[I

    if-nez v0, :cond_52

    sget-object v0, Lcom/bbm/util/b/b;->C:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bbm/util/b/b;->a:I

    const/4 v0, 0x0

    goto :goto_d

    :cond_44
    iget-object v0, v10, Lcom/bbm/util/b/c;->k:[I

    iput-object v0, p0, Lcom/bbm/util/b/b;->h:[I

    iget v0, p0, Lcom/bbm/util/b/b;->i:I

    iget v1, v10, Lcom/bbm/util/b/c;->h:I

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/util/b/b;->j:I

    goto :goto_21

    :cond_52
    iget v1, p0, Lcom/bbm/util/b/b;->A:I

    iget-object v0, p0, Lcom/bbm/util/b/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/bbm/util/b/c;

    const/4 v0, 0x0

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_170

    iget-object v0, p0, Lcom/bbm/util/b/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/b/c;

    move-object v9, v0

    :goto_6b
    iget-object v1, p0, Lcom/bbm/util/b/b;->u:[I

    if-eqz v9, :cond_c8

    iget v0, v9, Lcom/bbm/util/b/c;->g:I

    if-lez v0, :cond_c8

    iget v0, v9, Lcom/bbm/util/b/c;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8a

    iget-object v0, p0, Lcom/bbm/util/b/b;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/bbm/util/b/b;->z:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/bbm/util/b/b;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/bbm/util/b/b;->b:I

    iget v7, p0, Lcom/bbm/util/b/b;->c:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_8a
    iget v0, v9, Lcom/bbm/util/b/c;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b1

    const/4 v0, 0x0

    iget-boolean v2, v8, Lcom/bbm/util/b/c;->f:Z

    if-nez v2, :cond_96

    iget v0, p0, Lcom/bbm/util/b/b;->j:I

    :cond_96
    const/4 v2, 0x0

    :goto_97
    iget v3, v9, Lcom/bbm/util/b/c;->d:I

    if-ge v2, v3, :cond_b1

    iget v3, v9, Lcom/bbm/util/b/c;->b:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/bbm/util/b/b;->b:I

    mul-int/2addr v3, v4

    iget v4, v9, Lcom/bbm/util/b/c;->a:I

    add-int/2addr v3, v4

    iget v4, v9, Lcom/bbm/util/b/c;->c:I

    add-int/2addr v4, v3

    :goto_a7
    if-ge v3, v4, :cond_ae

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_b1
    iget v0, v9, Lcom/bbm/util/b/c;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c8

    iget-object v0, p0, Lcom/bbm/util/b/b;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/bbm/util/b/b;->y:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/bbm/util/b/b;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/bbm/util/b/b;->b:I

    iget v7, p0, Lcom/bbm/util/b/b;->c:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_c8
    iget-object v0, p0, Lcom/bbm/util/b/b;->t:[B

    invoke-direct {p0, v8, v0}, Lcom/bbm/util/b/b;->a(Lcom/bbm/util/b/c;[B)V

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v13, v0

    move v0, v2

    move v2, v13

    :goto_d5
    iget v5, v8, Lcom/bbm/util/b/c;->d:I

    if-ge v2, v5, :cond_12e

    iget-boolean v5, v8, Lcom/bbm/util/b/c;->e:Z

    if-eqz v5, :cond_16a

    iget v5, v8, Lcom/bbm/util/b/c;->d:I

    if-lt v0, v5, :cond_e6

    add-int/lit8 v4, v4, 0x1

    packed-switch v4, :pswitch_data_174

    :cond_e6
    :goto_e6
    add-int v5, v0, v3

    move v13, v5

    move v5, v4

    move v4, v3

    move v3, v13

    :goto_ec
    iget v6, v8, Lcom/bbm/util/b/c;->b:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/bbm/util/b/b;->c:I

    if-ge v0, v6, :cond_127

    iget v6, p0, Lcom/bbm/util/b/b;->b:I

    mul-int v7, v0, v6

    iget v0, v8, Lcom/bbm/util/b/c;->a:I

    add-int v6, v7, v0

    iget v0, v8, Lcom/bbm/util/b/c;->c:I

    add-int/2addr v0, v6

    iget v9, p0, Lcom/bbm/util/b/b;->b:I

    add-int/2addr v9, v7

    if-ge v9, v0, :cond_106

    iget v0, p0, Lcom/bbm/util/b/b;->b:I

    add-int/2addr v0, v7

    :cond_106
    iget v7, v8, Lcom/bbm/util/b/c;->c:I

    mul-int/2addr v7, v2

    :goto_109
    if-ge v6, v0, :cond_127

    iget-object v12, p0, Lcom/bbm/util/b/b;->t:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v12, v7

    and-int/lit16 v7, v7, 0xff

    iget-object v12, p0, Lcom/bbm/util/b/b;->h:[I

    aget v7, v12, v7

    if-eqz v7, :cond_11b

    aput v7, v1, v6

    :cond_11b
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_109

    :pswitch_11f
    const/4 v0, 0x4

    goto :goto_e6

    :pswitch_121
    const/4 v0, 0x2

    const/4 v3, 0x4

    goto :goto_e6

    :pswitch_124
    const/4 v0, 0x1

    const/4 v3, 0x2

    goto :goto_e6

    :cond_127
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    move v3, v4

    move v4, v5

    goto :goto_d5

    :cond_12e
    iget-object v2, p0, Lcom/bbm/util/b/b;->z:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/bbm/util/b/b;->v:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/bbm/util/b/b;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/bbm/util/b/b;->b:I

    iget v9, p0, Lcom/bbm/util/b/b;->c:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v2, p0, Lcom/bbm/util/b/b;->y:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/bbm/util/b/b;->v:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/bbm/util/b/b;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/bbm/util/b/b;->b:I

    iget v9, p0, Lcom/bbm/util/b/b;->c:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, p0, Lcom/bbm/util/b/b;->z:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/bbm/util/b/b;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/bbm/util/b/b;->b:I

    iget v7, p0, Lcom/bbm/util/b/b;->c:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-boolean v0, v10, Lcom/bbm/util/b/c;->f:Z

    if-eqz v0, :cond_166

    iget-object v0, p0, Lcom/bbm/util/b/b;->h:[I

    iget v1, v10, Lcom/bbm/util/b/c;->h:I

    aput v11, v0, v1

    :cond_166
    iget-object v0, p0, Lcom/bbm/util/b/b;->z:Landroid/graphics/Bitmap;

    goto/16 :goto_d

    :cond_16a
    move v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    goto/16 :goto_ec

    :cond_170
    move-object v9, v0

    goto/16 :goto_6b

    nop

    :pswitch_data_174
    .packed-switch 0x2
        :pswitch_11f
        :pswitch_121
        :pswitch_124
    .end packed-switch
.end method

.method public final f()[B
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/b/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
