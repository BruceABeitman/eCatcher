.class public abstract Lcom/c/ci;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = null

.field public static final b:Z = false

.field public static final c:Z = false

.field public static final d:Lcom/c/aj; = null

.field public static final e:Ljava/lang/String; = null

.field public static final f:Z = false

.field public static final g:Ljava/lang/String; = null

.field public static final h:Z = false

.field public static final i:Z = true

.field public static final j:Z = true

.field public static final k:Ljava/lang/String; = null

.field public static final l:Ljava/lang/String; = null

.field public static final m:J = 0x7d0L

.field public static final n:Z

.field public static final o:Z

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field private static final r:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v7, 0x17

    const/16 v9, 0xf

    const/16 v8, 0xb

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "8x.VneoeB\u007fdg%R!cs>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_301

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

    packed-switch v6, :pswitch_data_304

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

    sput-object v0, Lcom/c/ci;->g:Ljava/lang/String;

    const-string v0, "3p(@f{odV`ym#Rzej>\\`yv"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2fe

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

    packed-switch v6, :pswitch_data_310

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

    sput-object v0, Lcom/c/ci;->a:Ljava/lang/String;

    const-string v0, "SN\u0008`H"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2fb

    move v2, v3

    :cond_7a
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_7f
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_31c

    move v6, v9

    :goto_87
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_93

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_7f

    :cond_93
    move v1, v0

    move-object v0, v4

    :goto_95
    if-gt v1, v2, :cond_7a

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/ci;->e:Ljava/lang/String;

    const-string v0, ";+$ZHgx\u001aG`ab.P}^e Plcb%[2"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2f8

    move v2, v3

    :cond_ac
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_b1
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_328

    move v6, v9

    :goto_b9
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_c5

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_b1

    :cond_c5
    move v1, v0

    move-object v0, v4

    :goto_c7
    if-gt v1, v2, :cond_ac

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    const-string v0, ";+.\\|vi&PX~m#|iTd$[jt\u007f/Q2"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2f5

    move v2, v3

    :cond_de
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_e3
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_334

    move v6, v9

    :goto_eb
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_f7

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_e3

    :cond_f7
    move v1, v0

    move-object v0, v4

    :goto_f9
    if-gt v1, v2, :cond_de

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    const/4 v11, 0x2

    const-string v0, ";+&ZhQb&P_v\u007f\"\u0008 do)T}s$=E|{d-\u001b{o\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2f2

    move v2, v3

    :cond_111
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_116
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_340

    move v6, v9

    :goto_11e
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_12a

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_116

    :cond_12a
    move v1, v0

    move-object v0, v4

    :goto_12c
    if-gt v1, v2, :cond_111

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x3

    const-string v0, ";+?FjPd%RcrM+Ycuj)^2"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2ef

    move v2, v3

    :cond_144
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_149
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_34c

    move v6, v9

    :goto_151
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_15d

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_149

    :cond_15d
    move v1, v0

    move-object v0, v4

    :goto_15f
    if-gt v1, v2, :cond_144

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x4

    const-string v0, ";+$Z\\v\u007f\u0003Raxy/ejeb%Q2"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2ec

    move v2, v3

    :cond_177
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_17c
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_358

    move v6, v9

    :goto_184
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_190

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_17c

    :cond_190
    move v1, v0

    move-object v0, v4

    :goto_192
    if-gt v1, v2, :cond_177

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x5

    const-string v0, "Li?\\cs%)Zaqb-@}v\u007f#Za*/1Wz~g.\u001blxe,\\hby+Afxe7\u0019/vg&ZxDn>e}x\u007f%Avgn9\u0008ivg9P#7~9PHgx\u001aZc{n8\u0008ivg9P#7g%Rhry\u001eL\u007fr6"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2e9

    move v2, v3

    :cond_1aa
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1af
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_364

    move v6, v9

    :goto_1b7
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_1c3

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1af

    :cond_1c3
    move v1, v0

    move-object v0, v4

    :goto_1c5
    if-gt v1, v2, :cond_1aa

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x6

    const-string v0, ";+\'\\a[d-yjan&\u0008"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2e6

    move v2, v3

    :cond_1dd
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1e2
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_370

    move v6, v9

    :goto_1ea
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_1f6

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1e2

    :cond_1f6
    move v1, v0

    move-object v0, v4

    :goto_1f8
    if-gt v1, v2, :cond_1dd

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v6, 0x7

    const-string v0, ";+,Z}tn\u000f[nug/bfqbw"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_22a

    :cond_20f
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_214
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_37c

    move v5, v9

    :goto_21c
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_228

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_214

    :cond_228
    move v1, v0

    move-object v0, v2

    :cond_22a
    if-gt v1, v3, :cond_20f

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/ci;->r:[Ljava/lang/String;

    sget-object v0, Lcom/c/aj;->c:Lcom/c/aj;

    sput-object v0, Lcom/c/ci;->d:Lcom/c/aj;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/ci;->k:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/ci;->l:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v0, Lcom/c/ci;->p:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/c/ci;->q:Ljava/lang/String;

    return-void

    :pswitch_24c
    move v6, v7

    goto/16 :goto_23

    :pswitch_24f
    move v6, v8

    goto/16 :goto_23

    :pswitch_252
    const/16 v6, 0x4a

    goto/16 :goto_23

    :pswitch_256
    const/16 v6, 0x35

    goto/16 :goto_23

    :pswitch_25a
    move v6, v7

    goto/16 :goto_55

    :pswitch_25d
    move v6, v8

    goto/16 :goto_55

    :pswitch_260
    const/16 v6, 0x4a

    goto/16 :goto_55

    :pswitch_264
    const/16 v6, 0x35

    goto/16 :goto_55

    :pswitch_268
    move v6, v7

    goto/16 :goto_87

    :pswitch_26b
    move v6, v8

    goto/16 :goto_87

    :pswitch_26e
    const/16 v6, 0x4a

    goto/16 :goto_87

    :pswitch_272
    const/16 v6, 0x35

    goto/16 :goto_87

    :pswitch_276
    move v6, v7

    goto/16 :goto_b9

    :pswitch_279
    move v6, v8

    goto/16 :goto_b9

    :pswitch_27c
    const/16 v6, 0x4a

    goto/16 :goto_b9

    :pswitch_280
    const/16 v6, 0x35

    goto/16 :goto_b9

    :pswitch_284
    move v6, v7

    goto/16 :goto_eb

    :pswitch_287
    move v6, v8

    goto/16 :goto_eb

    :pswitch_28a
    const/16 v6, 0x4a

    goto/16 :goto_eb

    :pswitch_28e
    const/16 v6, 0x35

    goto/16 :goto_eb

    :pswitch_292
    move v6, v7

    goto/16 :goto_11e

    :pswitch_295
    move v6, v8

    goto/16 :goto_11e

    :pswitch_298
    const/16 v6, 0x4a

    goto/16 :goto_11e

    :pswitch_29c
    const/16 v6, 0x35

    goto/16 :goto_11e

    :pswitch_2a0
    move v6, v7

    goto/16 :goto_151

    :pswitch_2a3
    move v6, v8

    goto/16 :goto_151

    :pswitch_2a6
    const/16 v6, 0x4a

    goto/16 :goto_151

    :pswitch_2aa
    const/16 v6, 0x35

    goto/16 :goto_151

    :pswitch_2ae
    move v6, v7

    goto/16 :goto_184

    :pswitch_2b1
    move v6, v8

    goto/16 :goto_184

    :pswitch_2b4
    const/16 v6, 0x4a

    goto/16 :goto_184

    :pswitch_2b8
    const/16 v6, 0x35

    goto/16 :goto_184

    :pswitch_2bc
    move v6, v7

    goto/16 :goto_1b7

    :pswitch_2bf
    move v6, v8

    goto/16 :goto_1b7

    :pswitch_2c2
    const/16 v6, 0x4a

    goto/16 :goto_1b7

    :pswitch_2c6
    const/16 v6, 0x35

    goto/16 :goto_1b7

    :pswitch_2ca
    move v6, v7

    goto/16 :goto_1ea

    :pswitch_2cd
    move v6, v8

    goto/16 :goto_1ea

    :pswitch_2d0
    const/16 v6, 0x4a

    goto/16 :goto_1ea

    :pswitch_2d4
    const/16 v6, 0x35

    goto/16 :goto_1ea

    :pswitch_2d8
    move v5, v7

    goto/16 :goto_21c

    :pswitch_2db
    move v5, v8

    goto/16 :goto_21c

    :pswitch_2de
    const/16 v5, 0x4a

    goto/16 :goto_21c

    :pswitch_2e2
    const/16 v5, 0x35

    goto/16 :goto_21c

    :cond_2e6
    move v2, v3

    goto/16 :goto_1f8

    :cond_2e9
    move v2, v3

    goto/16 :goto_1c5

    :cond_2ec
    move v2, v3

    goto/16 :goto_192

    :cond_2ef
    move v2, v3

    goto/16 :goto_15f

    :cond_2f2
    move v2, v3

    goto/16 :goto_12c

    :cond_2f5
    move v2, v3

    goto/16 :goto_f9

    :cond_2f8
    move v2, v3

    goto/16 :goto_c7

    :cond_2fb
    move v2, v3

    goto/16 :goto_95

    :cond_2fe
    move v2, v3

    goto/16 :goto_63

    :cond_301
    move v2, v3

    goto/16 :goto_31

    :pswitch_data_304
    .packed-switch 0x0
        :pswitch_24c
        :pswitch_24f
        :pswitch_252
        :pswitch_256
    .end packed-switch

    :pswitch_data_310
    .packed-switch 0x0
        :pswitch_25a
        :pswitch_25d
        :pswitch_260
        :pswitch_264
    .end packed-switch

    :pswitch_data_31c
    .packed-switch 0x0
        :pswitch_268
        :pswitch_26b
        :pswitch_26e
        :pswitch_272
    .end packed-switch

    :pswitch_data_328
    .packed-switch 0x0
        :pswitch_276
        :pswitch_279
        :pswitch_27c
        :pswitch_280
    .end packed-switch

    :pswitch_data_334
    .packed-switch 0x0
        :pswitch_284
        :pswitch_287
        :pswitch_28a
        :pswitch_28e
    .end packed-switch

    :pswitch_data_340
    .packed-switch 0x0
        :pswitch_292
        :pswitch_295
        :pswitch_298
        :pswitch_29c
    .end packed-switch

    :pswitch_data_34c
    .packed-switch 0x0
        :pswitch_2a0
        :pswitch_2a3
        :pswitch_2a6
        :pswitch_2aa
    .end packed-switch

    :pswitch_data_358
    .packed-switch 0x0
        :pswitch_2ae
        :pswitch_2b1
        :pswitch_2b4
        :pswitch_2b8
    .end packed-switch

    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_2bc
        :pswitch_2bf
        :pswitch_2c2
        :pswitch_2c6
    .end packed-switch

    :pswitch_data_370
    .packed-switch 0x0
        :pswitch_2ca
        :pswitch_2cd
        :pswitch_2d0
        :pswitch_2d4
    .end packed-switch

    :pswitch_data_37c
    .packed-switch 0x0
        :pswitch_2d8
        :pswitch_2db
        :pswitch_2de
        :pswitch_2e2
    .end packed-switch
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/c/ba;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/c/ci;->r:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/ci;->d:Lcom/c/aj;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/ci;->r:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/ci;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/c/ci;->d:Lcom/c/aj;

    sget-object v5, Lcom/c/aj;->b:Lcom/c/aj;

    if-ne v0, v5, :cond_8b

    sget-object v0, Lcom/c/ci;->r:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v0, v0, v5

    :goto_32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/ci;->r:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/ci;->r:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/ci;->r:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/ci;->r:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/ci;->r:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_8a

    sget-boolean v0, Lcom/c/bp;->b:Z

    if-eqz v0, :cond_8e

    move v0, v1

    :goto_88
    sput-boolean v0, Lcom/c/bp;->b:Z

    :cond_8a
    return-object v4

    :cond_8b
    const-string v0, ""

    goto :goto_32

    :cond_8e
    move v0, v2

    goto :goto_88
.end method
