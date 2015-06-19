.class final Lcom/c/cz;
.super Lcom/c/cv;


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/c/bp;

.field private final c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v7, 0x1d

    const/16 v9, 0x1a

    const/16 v8, 0x17

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xd

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "{v\u000f>\u007fy7\u0012=:or\u00076:me\u00034\u007for\u00081\u007f\'7"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_37f

    move v2, v3

    :cond_16
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1b
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_382

    move v6, v9

    :goto_23
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_2f

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1b

    :cond_2f
    move v1, v0

    move-object v0, v4

    :goto_31
    if-gt v1, v2, :cond_16

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    const-string v0, "or\u00076:me\u00034\u007for\u00081\u007fF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_37c

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

    packed-switch v6, :pswitch_data_38e

    move v6, v9

    :goto_55
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_61

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4d

    :cond_61
    move v1, v0

    move-object v0, v4

    :goto_63
    if-gt v1, v2, :cond_48

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    const/4 v11, 0x2

    const-string v0, "vr\u001frwhd\u0012rtrcF0\u007f=y\u0013>v"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_379

    move v2, v3

    :cond_7b
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_80
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_39a

    move v6, v9

    :goto_88
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_94

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_80

    :cond_94
    move v1, v0

    move-object v0, v4

    :goto_96
    if-gt v1, v2, :cond_7b

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x3

    const-string v0, "vr\u001frwhd\u0012rtrcF0\u007f=r\u000b\"nd"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_376

    move v2, v3

    :cond_ae
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_b3
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_3a6

    move v6, v9

    :goto_bb
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_c7

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_b3

    :cond_c7
    move v1, v0

    move-object v0, v4

    :goto_c9
    if-gt v1, v2, :cond_ae

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x4

    const-string v0, "sx\u0012rumr\u0008"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_373

    move v2, v3

    :cond_e1
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_e6
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_3b2

    move v6, v9

    :goto_ee
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_fa

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_e6

    :cond_fa
    move v1, v0

    move-object v0, v4

    :goto_fc
    if-gt v1, v2, :cond_e1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x5

    const-string v0, "@-F"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_370

    move v2, v3

    :cond_114
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_119
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_3be

    move v6, v9

    :goto_121
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_12d

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_119

    :cond_12d
    move v1, v0

    move-object v0, v4

    :goto_12f
    if-gt v1, v2, :cond_114

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x6

    const-string v0, "{v\u000f>\u007fy7\u0012=:je\u000f&\u007f=g\u00147|xe\u0003<yx"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_36d

    move v2, v3

    :cond_147
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_14c
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_3ca

    move v6, v9

    :goto_154
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_160

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_14c

    :cond_160
    move v1, v0

    move-object v0, v4

    :goto_162
    if-gt v1, v2, :cond_147

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x7

    const-string v0, "je\u000f&sspF\"hxq\u0003 \u007fst\u0003\t"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_36a

    move v2, v3

    :cond_17a
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_17f
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_3d6

    move v6, v9

    :goto_187
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_193

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_17f

    :cond_193
    move v1, v0

    move-object v0, v4

    :goto_195
    if-gt v1, v2, :cond_17a

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/16 v11, 0x8

    const-string v0, "or\u0007>w=z\u0013!n=y\t&:\u007frF7wmc\u001f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_367

    move v2, v3

    :cond_1ae
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1b3
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_3e2

    move v6, v9

    :goto_1bb
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_1c7

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1b3

    :cond_1c7
    move v1, v0

    move-object v0, v4

    :goto_1c9
    if-gt v1, v2, :cond_1ae

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/16 v11, 0x9

    const-string v0, "n|\u001f:ur|"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_364

    move v2, v3

    :cond_1e2
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1e7
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_3ee

    move v6, v9

    :goto_1ef
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_1fb

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1e7

    :cond_1fb
    move v1, v0

    move-object v0, v4

    :goto_1fd
    if-gt v1, v2, :cond_1e2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/16 v11, 0xa

    const-string v0, "zr\u0012\u0001r|e\u00036Jor\u00007hxy\u00057i5d\r+rrx\r{:{v\u000f>\u007fy"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_361

    move v2, v3

    :cond_216
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_21b
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_3fa

    move v6, v9

    :goto_223
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_22f

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_21b

    :cond_22f
    move v1, v0

    move-object v0, v4

    :goto_231
    if-gt v1, v2, :cond_216

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/16 v11, 0xb

    const-string v0, "or\u0007>w=z\u0013!n=y\t&:\u007frF<oq{"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_35e

    move v2, v3

    :cond_24a
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_24f
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_406

    move v6, v9

    :goto_257
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_263

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_24f

    :cond_263
    move v1, v0

    move-object v0, v4

    :goto_265
    if-gt v1, v2, :cond_24a

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/16 v6, 0xc

    const-string v0, "|y\u0002 uts(3nta\u0003hJor\u00007hxy\u00057iTz\u0016>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_298

    :cond_27d
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_282
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_412

    move v5, v9

    :goto_28a
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_296

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_282

    :cond_296
    move v1, v0

    move-object v0, v2

    :cond_298
    if-gt v1, v3, :cond_27d

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/cz;->f:[Ljava/lang/String;

    return-void

    :pswitch_2a8
    move v6, v7

    goto/16 :goto_23

    :pswitch_2ab
    move v6, v8

    goto/16 :goto_23

    :pswitch_2ae
    const/16 v6, 0x66

    goto/16 :goto_23

    :pswitch_2b2
    const/16 v6, 0x52

    goto/16 :goto_23

    :pswitch_2b6
    move v6, v7

    goto/16 :goto_55

    :pswitch_2b9
    move v6, v8

    goto/16 :goto_55

    :pswitch_2bc
    const/16 v6, 0x66

    goto/16 :goto_55

    :pswitch_2c0
    const/16 v6, 0x52

    goto/16 :goto_55

    :pswitch_2c4
    move v6, v7

    goto/16 :goto_88

    :pswitch_2c7
    move v6, v8

    goto/16 :goto_88

    :pswitch_2ca
    const/16 v6, 0x66

    goto/16 :goto_88

    :pswitch_2ce
    const/16 v6, 0x52

    goto/16 :goto_88

    :pswitch_2d2
    move v6, v7

    goto/16 :goto_bb

    :pswitch_2d5
    move v6, v8

    goto/16 :goto_bb

    :pswitch_2d8
    const/16 v6, 0x66

    goto/16 :goto_bb

    :pswitch_2dc
    const/16 v6, 0x52

    goto/16 :goto_bb

    :pswitch_2e0
    move v6, v7

    goto/16 :goto_ee

    :pswitch_2e3
    move v6, v8

    goto/16 :goto_ee

    :pswitch_2e6
    const/16 v6, 0x66

    goto/16 :goto_ee

    :pswitch_2ea
    const/16 v6, 0x52

    goto/16 :goto_ee

    :pswitch_2ee
    move v6, v7

    goto/16 :goto_121

    :pswitch_2f1
    move v6, v8

    goto/16 :goto_121

    :pswitch_2f4
    const/16 v6, 0x66

    goto/16 :goto_121

    :pswitch_2f8
    const/16 v6, 0x52

    goto/16 :goto_121

    :pswitch_2fc
    move v6, v7

    goto/16 :goto_154

    :pswitch_2ff
    move v6, v8

    goto/16 :goto_154

    :pswitch_302
    const/16 v6, 0x66

    goto/16 :goto_154

    :pswitch_306
    const/16 v6, 0x52

    goto/16 :goto_154

    :pswitch_30a
    move v6, v7

    goto/16 :goto_187

    :pswitch_30d
    move v6, v8

    goto/16 :goto_187

    :pswitch_310
    const/16 v6, 0x66

    goto/16 :goto_187

    :pswitch_314
    const/16 v6, 0x52

    goto/16 :goto_187

    :pswitch_318
    move v6, v7

    goto/16 :goto_1bb

    :pswitch_31b
    move v6, v8

    goto/16 :goto_1bb

    :pswitch_31e
    const/16 v6, 0x66

    goto/16 :goto_1bb

    :pswitch_322
    const/16 v6, 0x52

    goto/16 :goto_1bb

    :pswitch_326
    move v6, v7

    goto/16 :goto_1ef

    :pswitch_329
    move v6, v8

    goto/16 :goto_1ef

    :pswitch_32c
    const/16 v6, 0x66

    goto/16 :goto_1ef

    :pswitch_330
    const/16 v6, 0x52

    goto/16 :goto_1ef

    :pswitch_334
    move v6, v7

    goto/16 :goto_223

    :pswitch_337
    move v6, v8

    goto/16 :goto_223

    :pswitch_33a
    const/16 v6, 0x66

    goto/16 :goto_223

    :pswitch_33e
    const/16 v6, 0x52

    goto/16 :goto_223

    :pswitch_342
    move v6, v7

    goto/16 :goto_257

    :pswitch_345
    move v6, v8

    goto/16 :goto_257

    :pswitch_348
    const/16 v6, 0x66

    goto/16 :goto_257

    :pswitch_34c
    const/16 v6, 0x52

    goto/16 :goto_257

    :pswitch_350
    move v5, v7

    goto/16 :goto_28a

    :pswitch_353
    move v5, v8

    goto/16 :goto_28a

    :pswitch_356
    const/16 v5, 0x66

    goto/16 :goto_28a

    :pswitch_35a
    const/16 v5, 0x52

    goto/16 :goto_28a

    :cond_35e
    move v2, v3

    goto/16 :goto_265

    :cond_361
    move v2, v3

    goto/16 :goto_231

    :cond_364
    move v2, v3

    goto/16 :goto_1fd

    :cond_367
    move v2, v3

    goto/16 :goto_1c9

    :cond_36a
    move v2, v3

    goto/16 :goto_195

    :cond_36d
    move v2, v3

    goto/16 :goto_162

    :cond_370
    move v2, v3

    goto/16 :goto_12f

    :cond_373
    move v2, v3

    goto/16 :goto_fc

    :cond_376
    move v2, v3

    goto/16 :goto_c9

    :cond_379
    move v2, v3

    goto/16 :goto_96

    :cond_37c
    move v2, v3

    goto/16 :goto_63

    :cond_37f
    move v2, v3

    goto/16 :goto_31

    :pswitch_data_382
    .packed-switch 0x0
        :pswitch_2a8
        :pswitch_2ab
        :pswitch_2ae
        :pswitch_2b2
    .end packed-switch

    :pswitch_data_38e
    .packed-switch 0x0
        :pswitch_2b6
        :pswitch_2b9
        :pswitch_2bc
        :pswitch_2c0
    .end packed-switch

    :pswitch_data_39a
    .packed-switch 0x0
        :pswitch_2c4
        :pswitch_2c7
        :pswitch_2ca
        :pswitch_2ce
    .end packed-switch

    :pswitch_data_3a6
    .packed-switch 0x0
        :pswitch_2d2
        :pswitch_2d5
        :pswitch_2d8
        :pswitch_2dc
    .end packed-switch

    :pswitch_data_3b2
    .packed-switch 0x0
        :pswitch_2e0
        :pswitch_2e3
        :pswitch_2e6
        :pswitch_2ea
    .end packed-switch

    :pswitch_data_3be
    .packed-switch 0x0
        :pswitch_2ee
        :pswitch_2f1
        :pswitch_2f4
        :pswitch_2f8
    .end packed-switch

    :pswitch_data_3ca
    .packed-switch 0x0
        :pswitch_2fc
        :pswitch_2ff
        :pswitch_302
        :pswitch_306
    .end packed-switch

    :pswitch_data_3d6
    .packed-switch 0x0
        :pswitch_30a
        :pswitch_30d
        :pswitch_310
        :pswitch_314
    .end packed-switch

    :pswitch_data_3e2
    .packed-switch 0x0
        :pswitch_318
        :pswitch_31b
        :pswitch_31e
        :pswitch_322
    .end packed-switch

    :pswitch_data_3ee
    .packed-switch 0x0
        :pswitch_326
        :pswitch_329
        :pswitch_32c
        :pswitch_330
    .end packed-switch

    :pswitch_data_3fa
    .packed-switch 0x0
        :pswitch_334
        :pswitch_337
        :pswitch_33a
        :pswitch_33e
    .end packed-switch

    :pswitch_data_406
    .packed-switch 0x0
        :pswitch_342
        :pswitch_345
        :pswitch_348
        :pswitch_34c
    .end packed-switch

    :pswitch_data_412
    .packed-switch 0x0
        :pswitch_350
        :pswitch_353
        :pswitch_356
        :pswitch_35a
    .end packed-switch
.end method

.method public constructor <init>(Lcom/c/b;)V
    .registers 4

    sget-boolean v0, Lcom/c/cv;->a:Z

    invoke-direct {p0}, Lcom/c/cv;-><init>()V

    const-class v1, Lcom/c/cz;

    invoke-static {v1}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v1

    iput-object v1, p0, Lcom/c/cz;->b:Lcom/c/bp;

    check-cast p1, Lcom/c/cm;

    invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/c/cz;->c:Landroid/content/Context;

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/c/bp;->b:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_1c
    sput-boolean v0, Lcom/c/bp;->b:Z

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1c
.end method


# virtual methods
.method protected a(Lcom/c/b;)Lcom/c/cv;
    .registers 3

    new-instance v0, Lcom/c/cz;

    invoke-direct {v0, p1}, Lcom/c/cz;-><init>(Lcom/c/b;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/c/cz;->f:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/c/cz;->f:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/c/cz;->f:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/c/cz;->c:Landroid/content/Context;

    sget-object v2, Lcom/c/cz;->f:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/c/cz;->d:Landroid/content/SharedPreferences;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_30} :catch_34

    iput-object p1, p0, Lcom/c/cz;->e:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_33
    return v0

    :catch_34
    move-exception v1

    iget-object v2, p0, Lcom/c/cz;->b:Lcom/c/bp;

    sget-object v3, Lcom/c/cz;->f:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/c/cz;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/c/cz;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0

    :cond_10
    if-nez p1, :cond_1d

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/c/cz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/cz;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/c/cz;->b:Lcom/c/bp;

    invoke-virtual {v2}, Lcom/c/bp;->b()Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/c/cz;->b:Lcom/c/bp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_7d
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/c/cz;->b:Lcom/c/bp;

    sget-object v2, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->e(Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/c/cz;->d:Landroid/content/SharedPreferences;

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/c/cz;->b:Lcom/c/bp;

    sget-object v2, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->e(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    if-nez p1, :cond_1d

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/c/cz;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_47
    iget-object v1, p0, Lcom/c/cz;->d:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/c/cz;->b:Lcom/c/bp;

    invoke-virtual {v3}, Lcom/c/bp;->b()Z

    move-result v3

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/c/cz;->b:Lcom/c/bp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/ClassCastException; {:try_start_47 .. :try_end_7e} :catch_80

    :cond_7e
    move-object v0, v1

    goto :goto_f

    :catch_80
    move-exception v1

    iget-object v3, p0, Lcom/c/cz;->b:Lcom/c/bp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/c/cz;->f:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/cz;->d:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/c/cz;->e:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/c/cz;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
