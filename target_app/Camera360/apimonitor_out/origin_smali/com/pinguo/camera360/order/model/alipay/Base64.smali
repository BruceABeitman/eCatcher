.class public final Lcom/pinguo/camera360/order/model/alipay/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x80

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    new-array v2, v8, [B

    sput-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    const/4 v0, 0x0

    :goto_15
    if-lt v0, v8, :cond_4d

    const/16 v0, 0x5a

    :goto_19
    const/16 v2, 0x41

    if-ge v0, v2, :cond_55

    const/16 v0, 0x7a

    :goto_1f
    const/16 v2, 0x61

    if-ge v0, v2, :cond_5f

    const/16 v0, 0x39

    :goto_25
    const/16 v2, 0x30

    if-ge v0, v2, :cond_6b

    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    const/4 v0, 0x0

    :goto_32
    const/16 v2, 0x19

    if-le v0, v2, :cond_77

    const/16 v0, 0x1a

    const/4 v1, 0x0

    :goto_39
    const/16 v2, 0x33

    if-le v0, v2, :cond_81

    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_40
    const/16 v2, 0x3d

    if-le v0, v2, :cond_8d

    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    aput-char v4, v2, v6

    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v2, v7

    return-void

    :cond_4d
    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_55
    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_5f
    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    :cond_6b
    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_77
    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_81
    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_8d
    sget-object v2, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_40
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 26

    if-nez p0, :cond_5

    const/16 v21, 0x0

    :goto_4
    return-object v21

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lcom/pinguo/camera360/order/model/alipay/Base64;->removeWhiteSpace([C)I

    move-result v19

    rem-int/lit8 v22, v19, 0x4

    if-eqz v22, :cond_14

    const/16 v21, 0x0

    goto :goto_4

    :cond_14
    div-int/lit8 v20, v19, 0x4

    if-nez v20, :cond_21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    goto :goto_4

    :cond_21
    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    mul-int/lit8 v22, v20, 0x3

    move/from16 v0, v22

    new-array v15, v0, [B

    move v14, v13

    move/from16 v17, v16

    :goto_38
    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_58

    add-int/lit8 v13, v14, 0x1

    aget-char v9, v8, v14

    invoke-static {v9}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_55

    add-int/lit8 v14, v13, 0x1

    aget-char v10, v8, v13

    invoke-static {v10}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_c9

    move v13, v14

    :cond_55
    const/16 v21, 0x0

    goto :goto_4

    :cond_58
    add-int/lit8 v13, v14, 0x1

    aget-char v9, v8, v14

    invoke-static {v9}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_81

    add-int/lit8 v14, v13, 0x1

    aget-char v10, v8, v13

    invoke-static {v10}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_80

    add-int/lit8 v13, v14, 0x1

    aget-char v11, v8, v14

    invoke-static {v11}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_81

    add-int/lit8 v14, v13, 0x1

    aget-char v12, v8, v13

    invoke-static {v12}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_84

    :cond_80
    move v13, v14

    :cond_81
    const/16 v21, 0x0

    goto :goto_4

    :cond_84
    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v4, v22, v9

    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v5, v22, v10

    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v7, v22, v12

    add-int/lit8 v16, v17, 0x1

    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    add-int/lit8 v17, v16, 0x1

    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    add-int/lit8 v16, v17, 0x1

    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    add-int/lit8 v18, v18, 0x1

    move/from16 v17, v16

    goto/16 :goto_38

    :cond_c9
    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v4, v22, v9

    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v5, v22, v10

    add-int/lit8 v13, v14, 0x1

    aget-char v11, v8, v14

    add-int/lit8 v14, v13, 0x1

    aget-char v12, v8, v13

    invoke-static {v11}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_e5

    invoke-static {v12}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_17c

    :cond_e5
    invoke-static {v11}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_123

    invoke-static {v12}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_123

    and-int/lit8 v22, v5, 0xf

    if-eqz v22, :cond_f9

    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_f9
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    goto/16 :goto_4

    :cond_123
    invoke-static {v11}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isPad(C)Z

    move-result v22

    if-nez v22, :cond_178

    invoke-static {v12}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_178

    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    and-int/lit8 v22, v6, 0x3

    if-eqz v22, :cond_13b

    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_13b
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v16, v17, 0x1

    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v16

    goto/16 :goto_4

    :cond_178
    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_17c
    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    sget-object v22, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v7, v22, v12

    add-int/lit8 v16, v17, 0x1

    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    add-int/lit8 v17, v16, 0x1

    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    add-int/lit8 v16, v17, 0x1

    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    move-object/from16 v21, v15

    goto/16 :goto_4
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 22

    if-nez p0, :cond_5

    const/16 v19, 0x0

    :goto_4
    return-object v19

    :cond_5
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v13, v19, 0x8

    if-nez v13, :cond_12

    const-string/jumbo v19, ""

    goto :goto_4

    :cond_12
    rem-int/lit8 v9, v13, 0x18

    div-int/lit8 v15, v13, 0x18

    if-eqz v9, :cond_6c

    add-int/lit8 v14, v15, 0x1

    :goto_1a
    const/4 v6, 0x0

    mul-int/lit8 v19, v14, 0x4

    move/from16 v0, v19

    new-array v6, v0, [C

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    move v5, v4

    move v8, v7

    :goto_2b
    if-lt v10, v15, :cond_6e

    const/16 v19, 0x8

    move/from16 v0, v19

    if-ne v9, v0, :cond_10d

    aget-byte v1, p0, v5

    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_fe

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    :goto_45
    add-int/lit8 v7, v8, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    add-int/lit8 v8, v7, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    add-int/lit8 v7, v8, 0x1

    const/16 v19, 0x3d

    aput-char v19, v6, v8

    add-int/lit8 v8, v7, 0x1

    const/16 v19, 0x3d

    aput-char v19, v6, v7

    move v7, v8

    :goto_64
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    :cond_6c
    move v14, v15

    goto :goto_1a

    :cond_6e
    add-int/lit8 v4, v5, 0x1

    aget-byte v1, p0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, p0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v3, p0, v5

    and-int/lit8 v19, v2, 0xf

    move/from16 v0, v19

    int-to-byte v12, v0

    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_d4

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    :goto_8f
    and-int/lit8 v19, v2, -0x80

    if-nez v19, :cond_e2

    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    :goto_9a
    and-int/lit8 v19, v3, -0x80

    if-nez v19, :cond_f0

    shr-int/lit8 v19, v3, 0x6

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    :goto_a5
    add-int/lit8 v7, v8, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    add-int/lit8 v8, v7, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    or-int v20, v20, v17

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    add-int/lit8 v7, v8, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v12, 0x2

    or-int v20, v20, v18

    aget-char v19, v19, v20

    aput-char v19, v6, v8

    add-int/lit8 v8, v7, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v20, v3, 0x3f

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    add-int/lit8 v10, v10, 0x1

    move v5, v4

    goto/16 :goto_2b

    :cond_d4
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_8f

    :cond_e2
    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_9a

    :cond_f0
    shr-int/lit8 v19, v3, 0x6

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_a5

    :cond_fe
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto/16 :goto_45

    :cond_10d
    const/16 v19, 0x10

    move/from16 v0, v19

    if-ne v9, v0, :cond_15d

    aget-byte v1, p0, v5

    add-int/lit8 v19, v5, 0x1

    aget-byte v2, p0, v19

    and-int/lit8 v19, v2, 0xf

    move/from16 v0, v19

    int-to-byte v12, v0

    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_160

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    :goto_12e
    and-int/lit8 v19, v2, -0x80

    if-nez v19, :cond_16e

    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    :goto_139
    add-int/lit8 v7, v8, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    add-int/lit8 v8, v7, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    or-int v20, v20, v17

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    add-int/lit8 v7, v8, 0x1

    sget-object v19, Lcom/pinguo/camera360/order/model/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v12, 0x2

    aget-char v19, v19, v20

    aput-char v19, v6, v8

    add-int/lit8 v8, v7, 0x1

    const/16 v19, 0x3d

    aput-char v19, v6, v7

    :cond_15d
    move v7, v8

    goto/16 :goto_64

    :cond_160
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_12e

    :cond_16e
    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_139
.end method

.method private static isData(C)Z
    .registers 3

    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static isPad(C)Z
    .registers 2

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isWhiteSpace(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_12

    const/16 v0, 0xd

    if-eq p0, v0, :cond_12

    const/16 v0, 0xa

    if-eq p0, v0, :cond_12

    const/16 v0, 0x9

    if-eq p0, v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private static removeWhiteSpace([C)I
    .registers 6

    if-nez p0, :cond_4

    const/4 v3, 0x0

    :cond_3
    return v3

    :cond_4
    const/4 v2, 0x0

    array-length v1, p0

    const/4 v0, 0x0

    move v3, v2

    :goto_8
    if-ge v0, v1, :cond_3

    aget-char v4, p0, v0

    invoke-static {v4}, Lcom/pinguo/camera360/order/model/alipay/Base64;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_1c

    add-int/lit8 v2, v3, 0x1

    aget-char v4, p0, v0

    aput-char v4, p0, v3

    :goto_18
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_8

    :cond_1c
    move v2, v3

    goto :goto_18
.end method
