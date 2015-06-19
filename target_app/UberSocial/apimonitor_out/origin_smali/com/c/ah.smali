.class public final Lcom/c/ah;
.super Lcom/c/ac;


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/c/bp;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Lcom/c/bg;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x5b

    const/16 v8, 0x4a

    const/16 v7, 0x2d

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "\u0005_\u0005%)@X\u00198>\u0007D\u0004>>\u0012D\u0019-{\u0012H\u0014/2\u0016H\u0005"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_10c

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

    packed-switch v6, :pswitch_data_110

    move v6, v9

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

    const-string v0, "\u0001A\u0005/:\u0004TW)7\u000f^\u0012."

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_109

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

    packed-switch v6, :pswitch_data_11c

    move v6, v9

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

    const-string v0, "\u0001C\u001384\tIY#5\u0014H\u0019>u\u0001N\u0003#4\u000e\u00035\u000b\u000f4h%\u0013\u0004#e6\u0004\u001c%i"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_107

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

    packed-switch v6, :pswitch_data_128

    move v6, v9

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

    const/4 v6, 0x3

    const-string v0, "\u0001A\u0005/:\u0004TW%+\u0005C"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_c7

    :cond_ac
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_b1
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_134

    move v5, v9

    :goto_b9
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_c5

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_b1

    :cond_c5
    move v1, v0

    move-object v0, v2

    :cond_c7
    if-gt v1, v3, :cond_ac

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/ah;->f:[Ljava/lang/String;

    return-void

    :pswitch_d7
    const/16 v6, 0x60

    goto/16 :goto_22

    :pswitch_db
    move v6, v7

    goto/16 :goto_22

    :pswitch_de
    const/16 v6, 0x77

    goto/16 :goto_22

    :pswitch_e2
    move v6, v8

    goto/16 :goto_22

    :pswitch_e5
    const/16 v6, 0x60

    goto/16 :goto_54

    :pswitch_e9
    move v6, v7

    goto/16 :goto_54

    :pswitch_ec
    const/16 v6, 0x77

    goto/16 :goto_54

    :pswitch_f0
    move v6, v8

    goto/16 :goto_54

    :pswitch_f3
    const/16 v6, 0x60

    goto :goto_87

    :pswitch_f6
    move v6, v7

    goto :goto_87

    :pswitch_f8
    const/16 v6, 0x77

    goto :goto_87

    :pswitch_fb
    move v6, v8

    goto :goto_87

    :pswitch_fd
    const/16 v5, 0x60

    goto :goto_b9

    :pswitch_100
    move v5, v7

    goto :goto_b9

    :pswitch_102
    const/16 v5, 0x77

    goto :goto_b9

    :pswitch_105
    move v5, v8

    goto :goto_b9

    :cond_107
    move v2, v3

    goto :goto_95

    :cond_109
    move v2, v3

    goto/16 :goto_62

    :cond_10c
    move v2, v3

    goto/16 :goto_30

    nop

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_db
        :pswitch_de
        :pswitch_e2
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_e9
        :pswitch_ec
        :pswitch_f0
    .end packed-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_f3
        :pswitch_f6
        :pswitch_f8
        :pswitch_fb
    .end packed-switch

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_100
        :pswitch_102
        :pswitch_105
    .end packed-switch
.end method

.method public constructor <init>(Lcom/c/b;)V
    .registers 4

    sget v0, Lcom/c/ac;->a:I

    invoke-direct {p0}, Lcom/c/ac;-><init>()V

    const-class v1, Lcom/c/ah;

    invoke-static {v1}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v1

    iput-object v1, p0, Lcom/c/ah;->b:Lcom/c/bp;

    check-cast p1, Lcom/c/cm;

    invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/c/ah;->c:Landroid/content/Context;

    sget-object v1, Lcom/c/bg;->c:Lcom/c/bg;

    iput-object v1, p0, Lcom/c/ah;->e:Lcom/c/bg;

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/c/bp;->b:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    :goto_20
    sput-boolean v0, Lcom/c/bp;->b:Z

    :cond_22
    return-void

    :cond_23
    const/4 v0, 0x1

    goto :goto_20
.end method

.method static synthetic a(Lcom/c/ah;Lcom/c/bg;)Lcom/c/bg;
    .registers 2

    iput-object p1, p0, Lcom/c/ah;->e:Lcom/c/bg;

    return-object p1
.end method

.method static synthetic a(Lcom/c/ah;)Lcom/c/bp;
    .registers 2

    iget-object v0, p0, Lcom/c/ah;->b:Lcom/c/bp;

    return-object v0
.end method

.method static synthetic b(Lcom/c/ah;)Lcom/c/bg;
    .registers 2

    iget-object v0, p0, Lcom/c/ah;->e:Lcom/c/bg;

    return-object v0
.end method

.method static synthetic c(Lcom/c/ah;)V
    .registers 1

    invoke-virtual {p0}, Lcom/c/ah;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/b;)Lcom/c/ac;
    .registers 3

    new-instance v0, Lcom/c/ah;

    invoke-direct {v0, p1}, Lcom/c/ah;-><init>(Lcom/c/b;)V

    return-object v0
.end method

.method public b()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/c/ah;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/c/ah;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/ah;->f:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/c/ah;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/c/ah;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_30
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_1e

    iput-object v4, p0, Lcom/c/ah;->d:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/c/bg;->c:Lcom/c/bg;

    iput-object v0, p0, Lcom/c/ah;->e:Lcom/c/bg;

    goto :goto_f

    :catch_1e
    move-exception v0

    :try_start_1f
    iget-object v1, p0, Lcom/c/ah;->b:Lcom/c/bp;

    sget-object v2, Lcom/c/ah;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_30

    iput-object v4, p0, Lcom/c/ah;->d:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/c/bg;->c:Lcom/c/bg;

    iput-object v0, p0, Lcom/c/ah;->e:Lcom/c/bg;

    goto :goto_f

    :catchall_30
    move-exception v0

    iput-object v4, p0, Lcom/c/ah;->d:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/c/bg;->c:Lcom/c/bg;

    iput-object v1, p0, Lcom/c/ah;->e:Lcom/c/bg;

    throw v0
.end method

.method public declared-synchronized c()Lcom/c/bg;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/ah;->e:Lcom/c/bg;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m_()V
    .registers 4

    iget-object v0, p0, Lcom/c/ah;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/ah;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/ah;->f:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    new-instance v0, Lcom/c/f;

    invoke-direct {v0, p0}, Lcom/c/f;-><init>(Lcom/c/ah;)V

    iput-object v0, p0, Lcom/c/ah;->d:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/c/bg;->c:Lcom/c/bg;

    iput-object v0, p0, Lcom/c/ah;->e:Lcom/c/bg;

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/c/ah;->f:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/c/ah;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_e
.end method
