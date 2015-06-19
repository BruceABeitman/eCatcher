.class final Lcom/c/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field final a:Lcom/c/x;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x6a

    const/16 v7, 0x60

    const/16 v8, 0x19

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "\u000fw:\u0008\u0017\u0016p\u000e\u001f\n%w\u000b\u0018\u0014\u0005}B"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_223

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

    packed-switch v6, :pswitch_data_226

    const/16 v6, 0x78

    :goto_24
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_30

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1b

    :cond_30
    move v1, v0

    move-object v0, v4

    :goto_32
    if-gt v1, v2, :cond_16

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    const-string v0, "\u000fw9\u000e\u0019\u0014l\u00199\u0010\u0001w\r\u001f\u001cH"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_220

    move v2, v3

    :cond_49
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_4e
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_232

    const/16 v6, 0x78

    :goto_57
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_63

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4e

    :cond_63
    move v1, v0

    move-object v0, v4

    :goto_65
    if-gt v1, v2, :cond_49

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    const/4 v11, 0x2

    const-string v0, "\u000fw:\u0008\u0017\u0016p\u000e\u001f\n$p\u0019\u001b\u001a\u000c|\u000eR"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_21d

    move v2, v3

    :cond_7d
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_82
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_23e

    const/16 v6, 0x78

    :goto_8b
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_97

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_82

    :cond_97
    move v1, v0

    move-object v0, v4

    :goto_99
    if-gt v1, v2, :cond_7d

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x3

    const-string v0, "\t~\u0004\u0015\n\tw\rZ\u0016\u000fwG\u001d\u0008\u00139\u0006\u0015\u001b\u0001m\u0003\u0015\u0016@p\u0004Z\u0008\u000fn\u000f\u0008X\u0013x\u001c\u0013\u0016\u00079\u0007\u0015\u001c\u0005"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_21a

    move v2, v3

    :cond_b1
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_b6
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_24a

    const/16 v6, 0x78

    :goto_bf
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_cb

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_b6

    :cond_cb
    move v1, v0

    move-object v0, v4

    :goto_cd
    if-gt v1, v2, :cond_b1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x4

    const-string v0, "\u0007i\u0019"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_217

    move v2, v3

    :cond_e5
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_ea
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_256

    const/16 v6, 0x78

    :goto_f3
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_ff

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_ea

    :cond_ff
    move v1, v0

    move-object v0, v4

    :goto_101
    if-gt v1, v2, :cond_e5

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x5

    const-string v0, "\t~\u0004\u0015\n\tw\rZHMj\u000b\u000eX\u0006p\u0012"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_214

    move v2, v3

    :cond_119
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_11e
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_262

    const/16 v6, 0x78

    :goto_127
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_133

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_11e

    :cond_133
    move v1, v0

    move-object v0, v4

    :goto_135
    if-gt v1, v2, :cond_119

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x6

    const-string v0, "\t~\u0004\u0015\n\tw\rZ\u0011\u000eo\u000b\u0016\u0011\u00049\u0006\u0015\u001b\u0001m\u0003\u0015\u0016"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_211

    move v2, v3

    :cond_14d
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_152
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_26e

    const/16 v6, 0x78

    :goto_15b
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_167

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_152

    :cond_167
    move v1, v0

    move-object v0, v4

    :goto_169
    if-gt v1, v2, :cond_14d

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v6, 0x7

    const-string v0, "\u000fw&\u0015\u001b\u0001m\u0003\u0015\u0016#q\u000b\u0014\u001f\u0005}B"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_19c

    :cond_180
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_185
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_27a

    const/16 v5, 0x78

    :goto_18e
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_19a

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_185

    :cond_19a
    move v1, v0

    move-object v0, v2

    :cond_19c
    if-gt v1, v3, :cond_180

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/bl;->b:[Ljava/lang/String;

    return-void

    :pswitch_1ac
    move v6, v7

    goto/16 :goto_24

    :pswitch_1af
    move v6, v8

    goto/16 :goto_24

    :pswitch_1b2
    move v6, v9

    goto/16 :goto_24

    :pswitch_1b5
    const/16 v6, 0x7a

    goto/16 :goto_24

    :pswitch_1b9
    move v6, v7

    goto/16 :goto_57

    :pswitch_1bc
    move v6, v8

    goto/16 :goto_57

    :pswitch_1bf
    move v6, v9

    goto/16 :goto_57

    :pswitch_1c2
    const/16 v6, 0x7a

    goto/16 :goto_57

    :pswitch_1c6
    move v6, v7

    goto/16 :goto_8b

    :pswitch_1c9
    move v6, v8

    goto/16 :goto_8b

    :pswitch_1cc
    move v6, v9

    goto/16 :goto_8b

    :pswitch_1cf
    const/16 v6, 0x7a

    goto/16 :goto_8b

    :pswitch_1d3
    move v6, v7

    goto/16 :goto_bf

    :pswitch_1d6
    move v6, v8

    goto/16 :goto_bf

    :pswitch_1d9
    move v6, v9

    goto/16 :goto_bf

    :pswitch_1dc
    const/16 v6, 0x7a

    goto/16 :goto_bf

    :pswitch_1e0
    move v6, v7

    goto/16 :goto_f3

    :pswitch_1e3
    move v6, v8

    goto/16 :goto_f3

    :pswitch_1e6
    move v6, v9

    goto/16 :goto_f3

    :pswitch_1e9
    const/16 v6, 0x7a

    goto/16 :goto_f3

    :pswitch_1ed
    move v6, v7

    goto/16 :goto_127

    :pswitch_1f0
    move v6, v8

    goto/16 :goto_127

    :pswitch_1f3
    move v6, v9

    goto/16 :goto_127

    :pswitch_1f6
    const/16 v6, 0x7a

    goto/16 :goto_127

    :pswitch_1fa
    move v6, v7

    goto/16 :goto_15b

    :pswitch_1fd
    move v6, v8

    goto/16 :goto_15b

    :pswitch_200
    move v6, v9

    goto/16 :goto_15b

    :pswitch_203
    const/16 v6, 0x7a

    goto/16 :goto_15b

    :pswitch_207
    move v5, v7

    goto :goto_18e

    :pswitch_209
    move v5, v8

    goto :goto_18e

    :pswitch_20b
    move v5, v9

    goto :goto_18e

    :pswitch_20d
    const/16 v5, 0x7a

    goto/16 :goto_18e

    :cond_211
    move v2, v3

    goto/16 :goto_169

    :cond_214
    move v2, v3

    goto/16 :goto_135

    :cond_217
    move v2, v3

    goto/16 :goto_101

    :cond_21a
    move v2, v3

    goto/16 :goto_cd

    :cond_21d
    move v2, v3

    goto/16 :goto_99

    :cond_220
    move v2, v3

    goto/16 :goto_65

    :cond_223
    move v2, v3

    goto/16 :goto_32

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_1ac
        :pswitch_1af
        :pswitch_1b2
        :pswitch_1b5
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_1b9
        :pswitch_1bc
        :pswitch_1bf
        :pswitch_1c2
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_1c6
        :pswitch_1c9
        :pswitch_1cc
        :pswitch_1cf
    .end packed-switch

    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_1d3
        :pswitch_1d6
        :pswitch_1d9
        :pswitch_1dc
    .end packed-switch

    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_1e0
        :pswitch_1e3
        :pswitch_1e6
        :pswitch_1e9
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_1ed
        :pswitch_1f0
        :pswitch_1f3
        :pswitch_1f6
    .end packed-switch

    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_1fa
        :pswitch_1fd
        :pswitch_200
        :pswitch_203
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x0
        :pswitch_207
        :pswitch_209
        :pswitch_20b
        :pswitch_20d
    .end packed-switch
.end method

.method private constructor <init>(Lcom/c/x;)V
    .registers 2

    iput-object p1, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/c/x;Lcom/c/bh;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/bl;-><init>(Lcom/c/x;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v2}, Lcom/c/x;->b(Lcom/c/x;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_43
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_64

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_64

    :cond_55
    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    sget-object v1, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_63
    return-void

    :cond_64
    iget-object v1, p0, Lcom/c/bl;->a:Lcom/c/x;

    monitor-enter v1

    :try_start_67
    invoke-static {p1}, Lcom/c/x;->a(Landroid/location/Location;)Lcom/c/a/cg;

    move-result-object v0

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/a/cg;->a(Lcom/c/ba;)V

    sget-object v2, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v3}, Lcom/c/x;->b(Lcom/c/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    iget-object v2, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v2}, Lcom/c/x;->c(Lcom/c/x;)Z

    move-result v2

    if-eqz v2, :cond_ad

    sget-object v2, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    sget-object v2, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_63

    :catchall_aa
    move-exception v0

    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_67 .. :try_end_ac} :catchall_aa

    throw v0

    :cond_ad
    :try_start_ad
    iget-object v2, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v2}, Lcom/c/x;->d(Lcom/c/x;)Lcom/c/az;

    move-result-object v2

    if-eqz v2, :cond_c2

    iget-object v2, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v2}, Lcom/c/x;->d(Lcom/c/x;)Lcom/c/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/c/az;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/c/a/cg;->d(I)V

    :cond_c2
    invoke-virtual {v0}, Lcom/c/a/cg;->p()I

    move-result v2

    if-nez v2, :cond_101

    iget-object v2, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v2}, Lcom/c/x;->e(Lcom/c/x;)Lcom/c/a/cg;

    move-result-object v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v2}, Lcom/c/x;->e(Lcom/c/x;)Lcom/c/a/cg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/c/a/cg;->p()I

    move-result v2

    if-lez v2, :cond_101

    iget-object v2, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v2}, Lcom/c/x;->e(Lcom/c/x;)Lcom/c/a/cg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/c/ba;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_101

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    sget-object v2, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_63

    :cond_101
    invoke-virtual {v0}, Lcom/c/a/cg;->w()Lcom/c/a/cg;

    move-result-object v2

    invoke-static {v2}, Lcom/c/d;->a(Lcom/c/a/cg;)V

    :cond_108
    iget-object v2, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v2, v0}, Lcom/c/x;->a(Lcom/c/x;Lcom/c/a/cg;)Lcom/c/a/cg;

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->f(Lcom/c/x;)V

    monitor-exit v1
    :try_end_113
    .catchall {:try_start_ad .. :try_end_113} :catchall_aa

    goto/16 :goto_63
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/c/bl;->a:Lcom/c/x;

    invoke-static {v0}, Lcom/c/x;->a(Lcom/c/x;)Lcom/c/bp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/bl;->b:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_45
    return-void
.end method
