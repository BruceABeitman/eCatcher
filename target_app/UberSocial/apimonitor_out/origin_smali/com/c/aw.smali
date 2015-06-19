.class final Lcom/c/aw;
.super Lcom/c/am;


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field private final c:Landroid/hardware/SensorEventListener;

.field private final d:Lcom/c/bp;

.field private final e:Landroid/content/Context;

.field private f:Landroid/hardware/SensorManager;

.field private final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v7, 0x1c

    const/16 v9, 0x1b

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/16 v8, 0x28

    const/4 v0, 0x6

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "iF(yDy\u0008=t\u0008nM.r[hM;;I\u007fK,wMnG$~\\yZiwAo\\,uMn"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_193

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

    packed-switch v6, :pswitch_data_196

    move v6, v8

    :goto_22
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_2e

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1a

    :cond_2e
    move v1, v0

    move-object v0, v4

    :goto_30
    if-gt v1, v2, :cond_15

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    const-string v0, "rGizK\u007fM%~ZsE,oMn\u0008 u\u0008h@,;Du[=;Gz\u0008:~FoG;h"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_190

    move v2, v3

    :cond_47
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_4c
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_1a2

    move v6, v8

    :goto_54
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_60

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4c

    :cond_60
    move v1, v0

    move-object v0, v4

    :goto_62
    if-gt v1, v2, :cond_47

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    const/4 v11, 0x2

    const-string v0, "}K*~DyZ&vMhM;;IxI9oMn\u0008(wZyI-b\u0008sX,u"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_18d

    move v2, v3

    :cond_7a
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_7f
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_1ae

    move v6, v8

    :goto_87
    xor-int/2addr v6, v12

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

    aput-object v0, v10, v11

    const/4 v11, 0x3

    const-string v0, "\u007fG<wL<F&o\u0008{M=;I\u007fK,wMnG$~\\yZivIrI.~Z<[,i^uK,"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_18a

    move v2, v3

    :cond_ad
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_b2
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_1ba

    move v6, v8

    :goto_ba
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_c6

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_b2

    :cond_c6
    move v1, v0

    move-object v0, v4

    :goto_c8
    if-gt v1, v2, :cond_ad

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x4

    const-string v0, "\u007fD&hArOizL}X=~Z"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_187

    move v2, v3

    :cond_e0
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_e5
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_1c6

    move v6, v8

    :goto_ed
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_f9

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_e5

    :cond_f9
    move v1, v0

    move-object v0, v4

    :goto_fb
    if-gt v1, v2, :cond_e0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v6, 0x5

    const-string v0, "}F-iGuL\u0007z\\u^,!i\u007fK,wMnG$~\\yZ\u0008\u007fIl\\,iaqX%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_12d

    :cond_112
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_117
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_1d2

    move v5, v8

    :goto_11f
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_12b

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_117

    :cond_12b
    move v1, v0

    move-object v0, v2

    :cond_12d
    if-gt v1, v3, :cond_112

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/aw;->i:[Ljava/lang/String;

    return-void

    :pswitch_13d
    move v6, v7

    goto/16 :goto_22

    :pswitch_140
    move v6, v8

    goto/16 :goto_22

    :pswitch_143
    const/16 v6, 0x49

    goto/16 :goto_22

    :pswitch_147
    move v6, v9

    goto/16 :goto_22

    :pswitch_14a
    move v6, v7

    goto/16 :goto_54

    :pswitch_14d
    move v6, v8

    goto/16 :goto_54

    :pswitch_150
    const/16 v6, 0x49

    goto/16 :goto_54

    :pswitch_154
    move v6, v9

    goto/16 :goto_54

    :pswitch_157
    move v6, v7

    goto/16 :goto_87

    :pswitch_15a
    move v6, v8

    goto/16 :goto_87

    :pswitch_15d
    const/16 v6, 0x49

    goto/16 :goto_87

    :pswitch_161
    move v6, v9

    goto/16 :goto_87

    :pswitch_164
    move v6, v7

    goto/16 :goto_ba

    :pswitch_167
    move v6, v8

    goto/16 :goto_ba

    :pswitch_16a
    const/16 v6, 0x49

    goto/16 :goto_ba

    :pswitch_16e
    move v6, v9

    goto/16 :goto_ba

    :pswitch_171
    move v6, v7

    goto/16 :goto_ed

    :pswitch_174
    move v6, v8

    goto/16 :goto_ed

    :pswitch_177
    const/16 v6, 0x49

    goto/16 :goto_ed

    :pswitch_17b
    move v6, v9

    goto/16 :goto_ed

    :pswitch_17e
    move v5, v7

    goto :goto_11f

    :pswitch_180
    move v5, v8

    goto :goto_11f

    :pswitch_182
    const/16 v5, 0x49

    goto :goto_11f

    :pswitch_185
    move v5, v9

    goto :goto_11f

    :cond_187
    move v2, v3

    goto/16 :goto_fb

    :cond_18a
    move v2, v3

    goto/16 :goto_c8

    :cond_18d
    move v2, v3

    goto/16 :goto_95

    :cond_190
    move v2, v3

    goto/16 :goto_62

    :cond_193
    move v2, v3

    goto/16 :goto_30

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_13d
        :pswitch_140
        :pswitch_143
        :pswitch_147
    .end packed-switch

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_14a
        :pswitch_14d
        :pswitch_150
        :pswitch_154
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_157
        :pswitch_15a
        :pswitch_15d
        :pswitch_161
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_164
        :pswitch_167
        :pswitch_16a
        :pswitch_16e
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_171
        :pswitch_174
        :pswitch_177
        :pswitch_17b
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_17e
        :pswitch_180
        :pswitch_182
        :pswitch_185
    .end packed-switch
.end method

.method public constructor <init>(Lcom/c/b;)V
    .registers 3

    invoke-direct {p0}, Lcom/c/am;-><init>()V

    new-instance v0, Lcom/c/ab;

    invoke-direct {v0, p0}, Lcom/c/ab;-><init>(Lcom/c/aw;)V

    iput-object v0, p0, Lcom/c/aw;->c:Landroid/hardware/SensorEventListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/aw;->f:Landroid/hardware/SensorManager;

    const-class v0, Lcom/c/aw;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/c/aw;->d:Lcom/c/bp;

    check-cast p1, Lcom/c/cm;

    invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/c/aw;->e:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/aw;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/c/aw;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/c/aw;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/c/aw;)Z
    .registers 2

    invoke-direct {p0}, Lcom/c/aw;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/c/aw;)Lcom/c/bp;
    .registers 2

    iget-object v0, p0, Lcom/c/aw;->d:Lcom/c/bp;

    return-object v0
.end method

.method static synthetic d(Lcom/c/aw;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/c/aw;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/c/aw;)V
    .registers 1

    invoke-virtual {p0}, Lcom/c/aw;->a()V

    return-void
.end method

.method private e()Z
    .registers 2

    iget-object v0, p0, Lcom/c/aw;->f:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected a(Lcom/c/b;)Lcom/c/am;
    .registers 3

    new-instance v0, Lcom/c/aw;

    invoke-direct {v0, p1}, Lcom/c/aw;-><init>(Lcom/c/b;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/c/aw;->i:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/c/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/c/aw;->d:Lcom/c/bp;

    sget-object v1, Lcom/c/aw;->i:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_33

    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    new-instance v0, Lcom/c/w;

    invoke-direct {v0, p0}, Lcom/c/w;-><init>(Lcom/c/aw;)V

    invoke-static {v0}, Lcom/c/cq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_33
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_26} :catch_36

    if-nez v0, :cond_42

    :try_start_28
    new-instance v0, Lcom/c/bs;

    sget-object v1, Lcom/c/aw;->i:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/c/bs;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_36
    move-exception v0

    :try_start_37
    new-instance v1, Lcom/c/bs;

    sget-object v2, Lcom/c/aw;->i:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Lcom/c/bs;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_58

    new-instance v0, Lcom/c/bs;

    sget-object v1, Lcom/c/aw;->i:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/c/bs;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    iget-object v2, p0, Lcom/c/aw;->c:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-nez v1, :cond_73

    new-instance v0, Lcom/c/bs;

    sget-object v1, Lcom/c/aw;->i:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/c/bs;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    iput-object v0, p0, Lcom/c/aw;->f:Landroid/hardware/SensorManager;
    :try_end_75
    .catchall {:try_start_37 .. :try_end_75} :catchall_33

    goto :goto_11
.end method

.method public declared-synchronized c()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/c/aw;->e()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/c/aw;->d:Lcom/c/bp;

    sget-object v1, Lcom/c/aw;->i:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/aw;->f:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/c/aw;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/aw;->f:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/c/aw;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_23

    goto :goto_7

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/c/aw;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/c/aw;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/c/aw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
