.class Lcom/c/cc;
.super Ljava/lang/Object;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field final a:Lcom/c/bj;

.field private b:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x37

    const/16 v8, 0x2c

    const/16 v7, 0xd

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "2h@)V3hHl@)kEl[/nG"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2f5

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

    packed-switch v6, :pswitch_data_2f8

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

    const-string v0, "#bY S.*XlE%aI-D%-@#T+"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2f2

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

    packed-switch v6, :pswitch_data_304

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

    const-string v0, "#bY S.*Xl^.{C\'R`zE*^`aC/\\`zE8_`Ze\n~\u001f@c\u0008r\u001f^o\ry\u001fBb\u0000n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2ef

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

    packed-switch v6, :pswitch_data_310

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

    const-string v0, "\u0013fU$X/f\u000c\u0014g\u0013-{%Q)-`#T+"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2ec

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

    packed-switch v6, :pswitch_data_31c

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

    const-string v0, "#\u007fI-C%i\u000c;^&d\u000c X#f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2e9

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

    packed-switch v6, :pswitch_data_328

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

    const-string v0, "#bY S.*XlT2hM8R`l\u000c;^&d\u000c X#f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2e6

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

    packed-switch v6, :pswitch_data_334

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

    const-string v0, "#\u007fI-C%ZE*^\u000cbO\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2e3

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

    packed-switch v6, :pswitch_data_340

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

    const-string v0, "#\u007fI-C%i\u000c\u001b~\u0006Ds\u0001x\u0004Hs\u001ft\u0001Cs\u0003y\u000cT\u000c;^&d\u000c X#f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2e0

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

    packed-switch v6, :pswitch_data_34c

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

    const-string v0, "#bY S.*XlF5h^5\u0017,bO\'\u00173yM8B3"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2dd

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

    packed-switch v6, :pswitch_data_358

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

    const-string v0, "#bY S.*XlV#|Y%E%-@#T+"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_2da

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

    packed-switch v6, :pswitch_data_364

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

    const/16 v6, 0xa

    const-string v0, "!n]9^2hHl@)kEl[/nG"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_230

    :cond_215
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_21a
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_370

    move v5, v9

    :goto_222
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_22e

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_21a

    :cond_22e
    move v1, v0

    move-object v0, v2

    :cond_230
    if-gt v1, v3, :cond_215

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/cc;->c:[Ljava/lang/String;

    return-void

    :pswitch_240
    const/16 v6, 0x40

    goto/16 :goto_23

    :pswitch_244
    move v6, v7

    goto/16 :goto_23

    :pswitch_247
    move v6, v8

    goto/16 :goto_23

    :pswitch_24a
    const/16 v6, 0x4c

    goto/16 :goto_23

    :pswitch_24e
    const/16 v6, 0x40

    goto/16 :goto_55

    :pswitch_252
    move v6, v7

    goto/16 :goto_55

    :pswitch_255
    move v6, v8

    goto/16 :goto_55

    :pswitch_258
    const/16 v6, 0x4c

    goto/16 :goto_55

    :pswitch_25c
    const/16 v6, 0x40

    goto/16 :goto_88

    :pswitch_260
    move v6, v7

    goto/16 :goto_88

    :pswitch_263
    move v6, v8

    goto/16 :goto_88

    :pswitch_266
    const/16 v6, 0x4c

    goto/16 :goto_88

    :pswitch_26a
    const/16 v6, 0x40

    goto/16 :goto_bb

    :pswitch_26e
    move v6, v7

    goto/16 :goto_bb

    :pswitch_271
    move v6, v8

    goto/16 :goto_bb

    :pswitch_274
    const/16 v6, 0x4c

    goto/16 :goto_bb

    :pswitch_278
    const/16 v6, 0x40

    goto/16 :goto_ee

    :pswitch_27c
    move v6, v7

    goto/16 :goto_ee

    :pswitch_27f
    move v6, v8

    goto/16 :goto_ee

    :pswitch_282
    const/16 v6, 0x4c

    goto/16 :goto_ee

    :pswitch_286
    const/16 v6, 0x40

    goto/16 :goto_121

    :pswitch_28a
    move v6, v7

    goto/16 :goto_121

    :pswitch_28d
    move v6, v8

    goto/16 :goto_121

    :pswitch_290
    const/16 v6, 0x4c

    goto/16 :goto_121

    :pswitch_294
    const/16 v6, 0x40

    goto/16 :goto_154

    :pswitch_298
    move v6, v7

    goto/16 :goto_154

    :pswitch_29b
    move v6, v8

    goto/16 :goto_154

    :pswitch_29e
    const/16 v6, 0x4c

    goto/16 :goto_154

    :pswitch_2a2
    const/16 v6, 0x40

    goto/16 :goto_187

    :pswitch_2a6
    move v6, v7

    goto/16 :goto_187

    :pswitch_2a9
    move v6, v8

    goto/16 :goto_187

    :pswitch_2ac
    const/16 v6, 0x4c

    goto/16 :goto_187

    :pswitch_2b0
    const/16 v6, 0x40

    goto/16 :goto_1bb

    :pswitch_2b4
    move v6, v7

    goto/16 :goto_1bb

    :pswitch_2b7
    move v6, v8

    goto/16 :goto_1bb

    :pswitch_2ba
    const/16 v6, 0x4c

    goto/16 :goto_1bb

    :pswitch_2be
    const/16 v6, 0x40

    goto/16 :goto_1ef

    :pswitch_2c2
    move v6, v7

    goto/16 :goto_1ef

    :pswitch_2c5
    move v6, v8

    goto/16 :goto_1ef

    :pswitch_2c8
    const/16 v6, 0x4c

    goto/16 :goto_1ef

    :pswitch_2cc
    const/16 v5, 0x40

    goto/16 :goto_222

    :pswitch_2d0
    move v5, v7

    goto/16 :goto_222

    :pswitch_2d3
    move v5, v8

    goto/16 :goto_222

    :pswitch_2d6
    const/16 v5, 0x4c

    goto/16 :goto_222

    :cond_2da
    move v2, v3

    goto/16 :goto_1fd

    :cond_2dd
    move v2, v3

    goto/16 :goto_1c9

    :cond_2e0
    move v2, v3

    goto/16 :goto_195

    :cond_2e3
    move v2, v3

    goto/16 :goto_162

    :cond_2e6
    move v2, v3

    goto/16 :goto_12f

    :cond_2e9
    move v2, v3

    goto/16 :goto_fc

    :cond_2ec
    move v2, v3

    goto/16 :goto_c9

    :cond_2ef
    move v2, v3

    goto/16 :goto_96

    :cond_2f2
    move v2, v3

    goto/16 :goto_63

    :cond_2f5
    move v2, v3

    goto/16 :goto_31

    :pswitch_data_2f8
    .packed-switch 0x0
        :pswitch_240
        :pswitch_244
        :pswitch_247
        :pswitch_24a
    .end packed-switch

    :pswitch_data_304
    .packed-switch 0x0
        :pswitch_24e
        :pswitch_252
        :pswitch_255
        :pswitch_258
    .end packed-switch

    :pswitch_data_310
    .packed-switch 0x0
        :pswitch_25c
        :pswitch_260
        :pswitch_263
        :pswitch_266
    .end packed-switch

    :pswitch_data_31c
    .packed-switch 0x0
        :pswitch_26a
        :pswitch_26e
        :pswitch_271
        :pswitch_274
    .end packed-switch

    :pswitch_data_328
    .packed-switch 0x0
        :pswitch_278
        :pswitch_27c
        :pswitch_27f
        :pswitch_282
    .end packed-switch

    :pswitch_data_334
    .packed-switch 0x0
        :pswitch_286
        :pswitch_28a
        :pswitch_28d
        :pswitch_290
    .end packed-switch

    :pswitch_data_340
    .packed-switch 0x0
        :pswitch_294
        :pswitch_298
        :pswitch_29b
        :pswitch_29e
    .end packed-switch

    :pswitch_data_34c
    .packed-switch 0x0
        :pswitch_2a2
        :pswitch_2a6
        :pswitch_2a9
        :pswitch_2ac
    .end packed-switch

    :pswitch_data_358
    .packed-switch 0x0
        :pswitch_2b0
        :pswitch_2b4
        :pswitch_2b7
        :pswitch_2ba
    .end packed-switch

    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_2be
        :pswitch_2c2
        :pswitch_2c5
        :pswitch_2c8
    .end packed-switch

    :pswitch_data_370
    .packed-switch 0x0
        :pswitch_2cc
        :pswitch_2d0
        :pswitch_2d3
        :pswitch_2d6
    .end packed-switch
.end method

.method constructor <init>(Lcom/c/bj;Landroid/net/wifi/WifiManager;)V
    .registers 8

    iput-object p1, p0, Lcom/c/cc;->a:Lcom/c/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_5
    const-class v0, Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    iput-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {p1}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v0

    sget-object v1, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_44} :catch_4b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_44} :catch_70

    :goto_44
    :try_start_44
    iget-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    :goto_4a
    return-void

    :catch_4b
    move-exception v0

    invoke-static {p1}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v0

    sget-object v1, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {p1}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v0

    sget-object v1, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_6f} :catch_70

    goto :goto_44

    :catch_70
    move-exception v0

    invoke-static {p1}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v1

    sget-object v2, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_4a
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_18

    :try_start_4
    iget-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    iget-object v0, p0, Lcom/c/cc;->a:Lcom/c/bj;

    invoke-static {v0}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v0

    sget-object v1, Lcom/c/cc;->c:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    iget-object v1, p0, Lcom/c/cc;->a:Lcom/c/bj;

    invoke-static {v1}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v1

    sget-object v2, Lcom/c/cc;->c:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public b()V
    .registers 5

    invoke-virtual {p0}, Lcom/c/cc;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_6
    iget-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iget-object v0, p0, Lcom/c/cc;->a:Lcom/c/bj;

    invoke-static {v0}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v0

    sget-object v1, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    iget-object v1, p0, Lcom/c/cc;->a:Lcom/c/bj;

    invoke-static {v1}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v1

    sget-object v2, Lcom/c/cc;->c:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public c()Z
    .registers 5

    iget-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1b

    :try_start_4
    iget-object v0, p0, Lcom/c/cc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    iget-object v1, p0, Lcom/c/cc;->a:Lcom/c/bj;

    invoke-static {v1}, Lcom/c/bj;->b(Lcom/c/bj;)Lcom/c/bp;

    move-result-object v1

    sget-object v2, Lcom/c/cc;->c:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    const/4 v0, 0x0

    goto :goto_a
.end method
