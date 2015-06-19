.class final Lcom/c/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v8, 0x5a

    const/16 v9, 0x1d

    const/4 v7, 0x6

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "`5*s\u001b&"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2ae

    move v2, v3

    :cond_15
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1a
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2b2

    const/16 v6, 0x7f

    :goto_23
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_2f

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1a

    :cond_2f
    move v1, v0

    move-object v0, v4

    :goto_31
    if-gt v1, v2, :cond_15

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    const-string v0, "v;-n\u0016h=\u007fH2R\t\u007fs\u001ao=7\u007f\u0010t`\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2ab

    move v2, v3

    :cond_48
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_4d
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2be

    const/16 v6, 0x7f

    :goto_56
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_62

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4d

    :cond_62
    move v1, v0

    move-object v0, v4

    :goto_64
    if-gt v1, v2, :cond_48

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    const/4 v11, 0x2

    const-string v0, "o=1r\ro48=\u0011c38u\u001di(\u007f\u007f\u001ae;*n\u001a&59=\nh11r\u0008hz\u000fN<"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2a8

    move v2, v3

    :cond_7c
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_81
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2ca

    const/16 v6, 0x7f

    :goto_8a
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_96

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_81

    :cond_96
    move v1, v0

    move-object v0, v4

    :goto_98
    if-gt v1, v2, :cond_7c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x3

    const-string v0, "h5\u007fs\u001ao=7\u007f\u0010tz<x\u0013j)"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2a5

    move v2, v3

    :cond_b0
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_b5
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2d6

    const/16 v6, 0x7f

    :goto_be
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_ca

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_b5

    :cond_ca
    move v1, v0

    move-object v0, v4

    :goto_cc
    if-gt v1, v2, :cond_b0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x4

    const-string v0, "s44s\u0010q4\u007fs\u001ar-0o\u0014&.&m\u001a<z"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2a2

    move v2, v3

    :cond_e4
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_e9
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2e2

    const/16 v6, 0x7f

    :goto_f2
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_fe

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_e9

    :cond_fe
    move v1, v0

    move-object v0, v4

    :goto_100
    if-gt v1, v2, :cond_e4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x5

    const-string v0, "v;-n\u0016h=\u007fZ/T\t\u007fs\u001ao=7\u007f\u0010t`\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_29f

    move v2, v3

    :cond_118
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_11d
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2ee

    const/16 v6, 0x7f

    :goto_126
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_132

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_11d

    :cond_132
    move v1, v0

    move-object v0, v4

    :goto_134
    if-gt v1, v2, :cond_118

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const-string v0, "o=1r\ro48=\u0011c38u\u001di(\u007f\u007f\u001ae;*n\u001a&59=\nh11r\u0008hz\rN,Oz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_29c

    move v2, v3

    :cond_14b
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_150
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2fa

    const/16 v6, 0x7f

    :goto_159
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_165

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_150

    :cond_165
    move v1, v0

    move-object v0, v4

    :goto_167
    if-gt v1, v2, :cond_14b

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v7

    const/4 v11, 0x7

    const-string v0, "o=1r\ro48=\u0011c38u\u001di(\u007f\u007f\u001ae;*n\u001a&59=\nh11r\u0008hz\u001cT;&5-=3G\u0019"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_299

    move v2, v3

    :cond_17f
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_184
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_306

    const/16 v6, 0x7f

    :goto_18d
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_199

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_184

    :cond_199
    move v1, v0

    move-object v0, v4

    :goto_19b
    if-gt v1, v2, :cond_17f

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/16 v11, 0x8

    const-string v0, "&4:t\u0018n80o_e?3q\u000c"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_296

    move v2, v3

    :cond_1b4
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1b9
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_312

    const/16 v6, 0x7f

    :goto_1c2
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_1ce

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1b9

    :cond_1ce
    move v1, v0

    move-object v0, v4

    :goto_1d0
    if-gt v1, v2, :cond_1b4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/16 v6, 0x9

    const-string v0, "v;-n\u001abz<x\u0013j`\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_204

    :cond_1e8
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1ed
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_31e

    const/16 v5, 0x7f

    :goto_1f6
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_202

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_1ed

    :cond_202
    move v1, v0

    move-object v0, v2

    :cond_204
    if-gt v1, v3, :cond_1e8

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/af;->a:[Ljava/lang/String;

    return-void

    :pswitch_214
    move v6, v7

    goto/16 :goto_23

    :pswitch_217
    move v6, v8

    goto/16 :goto_23

    :pswitch_21a
    const/16 v6, 0x5f

    goto/16 :goto_23

    :pswitch_21e
    move v6, v9

    goto/16 :goto_23

    :pswitch_221
    move v6, v7

    goto/16 :goto_56

    :pswitch_224
    move v6, v8

    goto/16 :goto_56

    :pswitch_227
    const/16 v6, 0x5f

    goto/16 :goto_56

    :pswitch_22b
    move v6, v9

    goto/16 :goto_56

    :pswitch_22e
    move v6, v7

    goto/16 :goto_8a

    :pswitch_231
    move v6, v8

    goto/16 :goto_8a

    :pswitch_234
    const/16 v6, 0x5f

    goto/16 :goto_8a

    :pswitch_238
    move v6, v9

    goto/16 :goto_8a

    :pswitch_23b
    move v6, v7

    goto/16 :goto_be

    :pswitch_23e
    move v6, v8

    goto/16 :goto_be

    :pswitch_241
    const/16 v6, 0x5f

    goto/16 :goto_be

    :pswitch_245
    move v6, v9

    goto/16 :goto_be

    :pswitch_248
    move v6, v7

    goto/16 :goto_f2

    :pswitch_24b
    move v6, v8

    goto/16 :goto_f2

    :pswitch_24e
    const/16 v6, 0x5f

    goto/16 :goto_f2

    :pswitch_252
    move v6, v9

    goto/16 :goto_f2

    :pswitch_255
    move v6, v7

    goto/16 :goto_126

    :pswitch_258
    move v6, v8

    goto/16 :goto_126

    :pswitch_25b
    const/16 v6, 0x5f

    goto/16 :goto_126

    :pswitch_25f
    move v6, v9

    goto/16 :goto_126

    :pswitch_262
    move v6, v7

    goto/16 :goto_159

    :pswitch_265
    move v6, v8

    goto/16 :goto_159

    :pswitch_268
    const/16 v6, 0x5f

    goto/16 :goto_159

    :pswitch_26c
    move v6, v9

    goto/16 :goto_159

    :pswitch_26f
    move v6, v7

    goto/16 :goto_18d

    :pswitch_272
    move v6, v8

    goto/16 :goto_18d

    :pswitch_275
    const/16 v6, 0x5f

    goto/16 :goto_18d

    :pswitch_279
    move v6, v9

    goto/16 :goto_18d

    :pswitch_27c
    move v6, v7

    goto/16 :goto_1c2

    :pswitch_27f
    move v6, v8

    goto/16 :goto_1c2

    :pswitch_282
    const/16 v6, 0x5f

    goto/16 :goto_1c2

    :pswitch_286
    move v6, v9

    goto/16 :goto_1c2

    :pswitch_289
    move v5, v7

    goto/16 :goto_1f6

    :pswitch_28c
    move v5, v8

    goto/16 :goto_1f6

    :pswitch_28f
    const/16 v5, 0x5f

    goto/16 :goto_1f6

    :pswitch_293
    move v5, v9

    goto/16 :goto_1f6

    :cond_296
    move v2, v3

    goto/16 :goto_1d0

    :cond_299
    move v2, v3

    goto/16 :goto_19b

    :cond_29c
    move v2, v3

    goto/16 :goto_167

    :cond_29f
    move v2, v3

    goto/16 :goto_134

    :cond_2a2
    move v2, v3

    goto/16 :goto_100

    :cond_2a5
    move v2, v3

    goto/16 :goto_cc

    :cond_2a8
    move v2, v3

    goto/16 :goto_98

    :cond_2ab
    move v2, v3

    goto/16 :goto_64

    :cond_2ae
    move v2, v3

    goto/16 :goto_31

    nop

    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_214
        :pswitch_217
        :pswitch_21a
        :pswitch_21e
    .end packed-switch

    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_221
        :pswitch_224
        :pswitch_227
        :pswitch_22b
    .end packed-switch

    :pswitch_data_2ca
    .packed-switch 0x0
        :pswitch_22e
        :pswitch_231
        :pswitch_234
        :pswitch_238
    .end packed-switch

    :pswitch_data_2d6
    .packed-switch 0x0
        :pswitch_23b
        :pswitch_23e
        :pswitch_241
        :pswitch_245
    .end packed-switch

    :pswitch_data_2e2
    .packed-switch 0x0
        :pswitch_248
        :pswitch_24b
        :pswitch_24e
        :pswitch_252
    .end packed-switch

    :pswitch_data_2ee
    .packed-switch 0x0
        :pswitch_255
        :pswitch_258
        :pswitch_25b
        :pswitch_25f
    .end packed-switch

    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_262
        :pswitch_265
        :pswitch_268
        :pswitch_26c
    .end packed-switch

    :pswitch_data_306
    .packed-switch 0x0
        :pswitch_26f
        :pswitch_272
        :pswitch_275
        :pswitch_279
    .end packed-switch

    :pswitch_data_312
    .packed-switch 0x0
        :pswitch_27c
        :pswitch_27f
        :pswitch_282
        :pswitch_286
    .end packed-switch

    :pswitch_data_31e
    .packed-switch 0x0
        :pswitch_289
        :pswitch_28c
        :pswitch_28f
        :pswitch_293
    .end packed-switch
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/telephony/TelephonyManager;Lcom/c/bp;Lcom/c/l;)Ljava/util/List;
    .registers 20

    sget v10, Lcom/c/ak;->c:I

    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_e
    sget-object v1, Lcom/c/af;->a:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_1c
    return-object v1

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/c/bp;->b()Z

    move-result v11

    if-eqz v11, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/af;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/c/af;->a:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_54
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_61
    :goto_61
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_189

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v13

    const/16 v1, 0x63

    if-ne v13, v1, :cond_95

    if-eqz v11, :cond_61

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/af;->a:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v10, :cond_61

    :cond_95
    invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v14

    const/4 v1, 0x1

    if-eq v14, v1, :cond_9f

    const/4 v1, 0x2

    if-ne v14, v1, :cond_f1

    :cond_9f
    if-eqz v11, :cond_bc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/af;->a:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_bc
    invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v3

    invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_ca

    const/4 v1, -0x1

    if-ne v3, v1, :cond_d6

    :cond_ca
    sget-object v1, Lcom/c/af;->a:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v10, :cond_61

    :cond_d6
    new-instance v1, Lcom/c/ak;

    new-instance v2, Lcom/c/l;

    invoke-virtual/range {p2 .. p2}, Lcom/c/l;->d()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/c/l;->e()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v2, v15, v0, v4, v3}, Lcom/c/l;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-static {v13}, Lcom/c/ak;->a(I)I

    move-result v4

    invoke-direct/range {v1 .. v7}, Lcom/c/ak;-><init>(Lcom/c/l;IIJLcom/c/ba;)V

    if-eqz v10, :cond_166

    :cond_f1
    const/4 v1, 0x3

    if-eq v14, v1, :cond_100

    const/16 v1, 0x8

    if-eq v14, v1, :cond_100

    const/16 v1, 0x9

    if-eq v14, v1, :cond_100

    const/16 v1, 0xa

    if-ne v14, v1, :cond_149

    :cond_100
    if-eqz v11, :cond_11d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/af;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_11d
    invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_130

    sget-object v1, Lcom/c/af;->a:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v10, :cond_61

    :cond_130
    new-instance v1, Lcom/c/ak;

    new-instance v2, Lcom/c/l;

    invoke-virtual/range {p2 .. p2}, Lcom/c/l;->d()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/c/l;->e()I

    move-result v8

    invoke-direct {v2, v4, v8, v3}, Lcom/c/l;-><init>(III)V

    const/4 v3, 0x0

    invoke-static {v13}, Lcom/c/ak;->b(I)I

    move-result v4

    invoke-direct/range {v1 .. v7}, Lcom/c/ak;-><init>(Lcom/c/l;IIJLcom/c/ba;)V

    if-eqz v10, :cond_166

    :cond_149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/af;->a:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/c/bp;->d(Ljava/lang/String;)V

    goto/16 :goto_61

    :cond_166
    if-eqz v11, :cond_184

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/af;->a:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_184
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_61

    :cond_189
    move-object v1, v9

    goto/16 :goto_1c
.end method
