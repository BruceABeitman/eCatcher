.class final Lcom/c/cn;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[C

.field private static c:I

.field private static d:Ljava/io/File;

.field private static e:J

.field private static f:Lcom/c/bc;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x28

    const/16 v7, 0x13

    const/16 v8, 0xa

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "D7r~ID jy\\\u000e><fG\u00082gcG\u0005|kz[D xs@\u0004<xFG\u000c}peF\r"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_126

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

    packed-switch v6, :pswitch_data_12a

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

    const-string v0, "E|`aQ\u0003<|ad\u00044=iG\u00055"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_123

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

    packed-switch v6, :pswitch_data_136

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

    const-string v0, "D wiI\u00197<yC\u0012;|eC\'<t$K\u0004=u"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_120

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

    packed-switch v6, :pswitch_data_142

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

    const/4 v11, 0x3

    const-string v0, "D>}~\u0007\u00187pkZ\u000f|`aQ\u0003<|ad\u00044=iG\u00055"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_11e

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

    packed-switch v6, :pswitch_data_14e

    move v6, v9

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

    sput-object v10, Lcom/c/cn;->a:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [C

    sput-object v0, Lcom/c/cn;->b:[C

    sput v3, Lcom/c/cn;->c:I

    const/4 v0, 0x0

    sput-object v0, Lcom/c/cn;->d:Ljava/io/File;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/c/cn;->e:J

    const/4 v0, 0x0

    sput-object v0, Lcom/c/cn;->f:Lcom/c/bc;

    return-void

    :pswitch_ea
    const/16 v6, 0x6b

    goto/16 :goto_22

    :pswitch_ee
    const/16 v6, 0x53

    goto/16 :goto_22

    :pswitch_f2
    move v6, v7

    goto/16 :goto_22

    :pswitch_f5
    move v6, v8

    goto/16 :goto_22

    :pswitch_f8
    const/16 v6, 0x6b

    goto/16 :goto_54

    :pswitch_fc
    const/16 v6, 0x53

    goto/16 :goto_54

    :pswitch_100
    move v6, v7

    goto/16 :goto_54

    :pswitch_103
    move v6, v8

    goto/16 :goto_54

    :pswitch_106
    const/16 v6, 0x6b

    goto/16 :goto_87

    :pswitch_10a
    const/16 v6, 0x53

    goto/16 :goto_87

    :pswitch_10e
    move v6, v7

    goto/16 :goto_87

    :pswitch_111
    move v6, v8

    goto/16 :goto_87

    :pswitch_114
    const/16 v6, 0x6b

    goto :goto_ba

    :pswitch_117
    const/16 v6, 0x53

    goto :goto_ba

    :pswitch_11a
    move v6, v7

    goto :goto_ba

    :pswitch_11c
    move v6, v8

    goto :goto_ba

    :cond_11e
    move v2, v3

    goto :goto_c8

    :cond_120
    move v2, v3

    goto/16 :goto_95

    :cond_123
    move v2, v3

    goto/16 :goto_62

    :cond_126
    move v2, v3

    goto/16 :goto_30

    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_ee
        :pswitch_f2
        :pswitch_f5
    .end packed-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_fc
        :pswitch_100
        :pswitch_103
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_106
        :pswitch_10a
        :pswitch_10e
        :pswitch_111
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_114
        :pswitch_117
        :pswitch_11a
        :pswitch_11c
    .end packed-switch
.end method

.method static a(Lcom/c/bc;)Z
    .registers 2

    invoke-static {p0}, Lcom/c/cn;->b(Lcom/c/bc;)Z

    move-result v0

    return v0
.end method

.method private static final declared-synchronized b(Lcom/c/bc;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-class v3, Lcom/c/cn;

    monitor-enter v3

    :try_start_5
    sget v1, Lcom/c/cn;->c:I

    add-int/lit8 v4, v1, 0x1

    sput v4, Lcom/c/cn;->c:I

    and-int/lit16 v1, v1, 0x3ff

    if-nez v1, :cond_3e

    sget-object v1, Lcom/c/cn;->d:Ljava/io/File;

    if-nez v1, :cond_28

    sget-object v4, Lcom/c/cn;->a:[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    :goto_17
    if-ge v1, v5, :cond_28

    aget-object v6, v4, v1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4d

    sput-object v7, Lcom/c/cn;->d:Ljava/io/File;

    :cond_28
    sget-object v1, Lcom/c/cn;->d:Ljava/io/File;

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/c/cn;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x0

    sput-object v1, Lcom/c/cn;->d:Ljava/io/File;

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/c/cn;->e:J

    const/4 v1, 0x0

    sput-object v1, Lcom/c/cn;->f:Lcom/c/bc;

    :cond_3e
    :goto_3e
    sget-object v1, Lcom/c/cn;->f:Lcom/c/bc;

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/c/cn;->f:Lcom/c/bc;

    invoke-virtual {v1, p0}, Lcom/c/bc;->compareTo(Ljava/lang/Enum;)I
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_9b

    move-result v1

    if-gtz v1, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    monitor-exit v3

    return v0

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_50
    :try_start_50
    sget-object v1, Lcom/c/cn;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sget-wide v6, Lcom/c/cn;->e:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_3e

    sget-object v1, Lcom/c/cn;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sput-wide v4, Lcom/c/cn;->e:J
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_9b

    :try_start_64
    new-instance v1, Ljava/io/FileReader;

    sget-object v4, Lcom/c/cn;->d:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_93
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6b} :catch_89

    :try_start_6b
    sget-object v2, Lcom/c/cn;->b:[C

    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v2

    if-lez v2, :cond_81

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/c/cn;->b:[C

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v4}, Lcom/c/bc;->valueOf(Ljava/lang/String;)Lcom/c/bc;

    move-result-object v2

    sput-object v2, Lcom/c/cn;->f:Lcom/c/bc;
    :try_end_81
    .catchall {:try_start_6b .. :try_end_81} :catchall_a0
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_81} :catch_a2

    :cond_81
    if-eqz v1, :cond_3e

    :try_start_83
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_9b
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_3e

    :catch_87
    move-exception v1

    goto :goto_3e

    :catch_89
    move-exception v1

    move-object v1, v2

    :goto_8b
    if-eqz v1, :cond_3e

    :try_start_8d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_9b
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_3e

    :catch_91
    move-exception v1

    goto :goto_3e

    :catchall_93
    move-exception v0

    move-object v1, v2

    :goto_95
    if-eqz v1, :cond_9a

    :try_start_97
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9a} :catch_9e

    :cond_9a
    :goto_9a
    :try_start_9a
    throw v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_9e
    move-exception v1

    goto :goto_9a

    :catchall_a0
    move-exception v0

    goto :goto_95

    :catch_a2
    move-exception v2

    goto :goto_8b
.end method
