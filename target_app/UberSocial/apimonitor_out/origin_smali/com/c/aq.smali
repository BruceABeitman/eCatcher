.class final Lcom/c/aq;
.super Lcom/c/ag;


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private final d:Lcom/c/bp;

.field private final e:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x38

    const/16 v8, 0x36

    const/16 v7, 0x28

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "X\u0016Y\u001a]\u0008\u0010Y\u0000\u0018N\u0011C\u001a\\"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1dd

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

    packed-switch v6, :pswitch_data_1e0

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

    const-string v0, "X\u0016Y\u001a]"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1da

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

    packed-switch v6, :pswitch_data_1ec

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

    const-string v0, "I\u0010R\u0006WA\u001ax\u0015LA\u0008SNlM\u0012S\u0004PG\u0010O9YF\u001fQ\u0011Ja\u0013F\u0018"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1d7

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

    packed-switch v6, :pswitch_data_1f8

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

    const-string v0, "\\\u001bZ\u0011H@\u0011X\r\u0018L\u001b@\u001d[M^\u007f0\u0002\u0008"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1d4

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

    packed-switch v6, :pswitch_data_204

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

    const/4 v11, 0x4

    const-string v0, "K\u001fXSL\u0008\u001aS\u0000]Z\u0013_\u001a]\u0008\u001aS\u0002QK\u001b\u0016=|"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1d1

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

    packed-switch v6, :pswitch_data_210

    move v6, v9

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

    const/4 v11, 0x5

    const-string v0, "N\u001f_\u0018]L^B\u001b\u0018O\u001bBT\\M\u0008_\u0017]\u00087r"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1ce

    move v2, v3

    :cond_113
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_118
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_21c

    move v6, v9

    :goto_120
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_12c

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_118

    :cond_12c
    move v1, v0

    move-object v0, v4

    :goto_12e
    if-gt v1, v2, :cond_113

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v6, 0x6

    const-string v0, "A\u0010@\u0015TA\u001a\u0016\u0010]^\u0017U\u0011\u0018a:\u000cT"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_160

    :cond_145
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_14a
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_228

    move v5, v9

    :goto_152
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_15e

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_14a

    :cond_15e
    move v1, v0

    move-object v0, v2

    :cond_160
    if-gt v1, v3, :cond_145

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/aq;->f:[Ljava/lang/String;

    return-void

    :pswitch_170
    move v6, v7

    goto/16 :goto_22

    :pswitch_173
    const/16 v6, 0x7e

    goto/16 :goto_22

    :pswitch_177
    move v6, v8

    goto/16 :goto_22

    :pswitch_17a
    const/16 v6, 0x74

    goto/16 :goto_22

    :pswitch_17e
    move v6, v7

    goto/16 :goto_54

    :pswitch_181
    const/16 v6, 0x7e

    goto/16 :goto_54

    :pswitch_185
    move v6, v8

    goto/16 :goto_54

    :pswitch_188
    const/16 v6, 0x74

    goto/16 :goto_54

    :pswitch_18c
    move v6, v7

    goto/16 :goto_87

    :pswitch_18f
    const/16 v6, 0x7e

    goto/16 :goto_87

    :pswitch_193
    move v6, v8

    goto/16 :goto_87

    :pswitch_196
    const/16 v6, 0x74

    goto/16 :goto_87

    :pswitch_19a
    move v6, v7

    goto/16 :goto_ba

    :pswitch_19d
    const/16 v6, 0x7e

    goto/16 :goto_ba

    :pswitch_1a1
    move v6, v8

    goto/16 :goto_ba

    :pswitch_1a4
    const/16 v6, 0x74

    goto/16 :goto_ba

    :pswitch_1a8
    move v6, v7

    goto/16 :goto_ed

    :pswitch_1ab
    const/16 v6, 0x7e

    goto/16 :goto_ed

    :pswitch_1af
    move v6, v8

    goto/16 :goto_ed

    :pswitch_1b2
    const/16 v6, 0x74

    goto/16 :goto_ed

    :pswitch_1b6
    move v6, v7

    goto/16 :goto_120

    :pswitch_1b9
    const/16 v6, 0x7e

    goto/16 :goto_120

    :pswitch_1bd
    move v6, v8

    goto/16 :goto_120

    :pswitch_1c0
    const/16 v6, 0x74

    goto/16 :goto_120

    :pswitch_1c4
    move v5, v7

    goto :goto_152

    :pswitch_1c6
    const/16 v5, 0x7e

    goto :goto_152

    :pswitch_1c9
    move v5, v8

    goto :goto_152

    :pswitch_1cb
    const/16 v5, 0x74

    goto :goto_152

    :cond_1ce
    move v2, v3

    goto/16 :goto_12e

    :cond_1d1
    move v2, v3

    goto/16 :goto_fb

    :cond_1d4
    move v2, v3

    goto/16 :goto_c8

    :cond_1d7
    move v2, v3

    goto/16 :goto_95

    :cond_1da
    move v2, v3

    goto/16 :goto_62

    :cond_1dd
    move v2, v3

    goto/16 :goto_30

    :pswitch_data_1e0
    .packed-switch 0x0
        :pswitch_170
        :pswitch_173
        :pswitch_177
        :pswitch_17a
    .end packed-switch

    :pswitch_data_1ec
    .packed-switch 0x0
        :pswitch_17e
        :pswitch_181
        :pswitch_185
        :pswitch_188
    .end packed-switch

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_18c
        :pswitch_18f
        :pswitch_193
        :pswitch_196
    .end packed-switch

    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_19a
        :pswitch_19d
        :pswitch_1a1
        :pswitch_1a4
    .end packed-switch

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_1a8
        :pswitch_1ab
        :pswitch_1af
        :pswitch_1b2
    .end packed-switch

    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_1b6
        :pswitch_1b9
        :pswitch_1bd
        :pswitch_1c0
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_1c4
        :pswitch_1c6
        :pswitch_1c9
        :pswitch_1cb
    .end packed-switch
.end method

.method public constructor <init>(Lcom/c/b;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v3, Lcom/c/ag;->c:I

    invoke-direct {p0}, Lcom/c/ag;-><init>()V

    check-cast p1, Lcom/c/cm;

    invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/c/aq;

    invoke-static {v4}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v4

    iput-object v4, p0, Lcom/c/aq;->d:Lcom/c/bp;

    sget-object v4, Lcom/c/aq;->f:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/c/aq;->e:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/c/aq;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/c/bw;

    sget-object v2, Lcom/c/aq;->f:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-direct {v0, v1}, Lcom/c/bw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    if-eqz v3, :cond_38

    sget-boolean v0, Lcom/c/bp;->b:Z

    if-eqz v0, :cond_39

    move v0, v1

    :goto_36
    sput-boolean v0, Lcom/c/bp;->b:Z

    :cond_38
    return-void

    :cond_39
    move v0, v2

    goto :goto_36
.end method


# virtual methods
.method protected a(Lcom/c/b;)Lcom/c/ag;
    .registers 3

    new-instance v0, Lcom/c/aq;

    invoke-direct {v0, p1}, Lcom/c/aq;-><init>(Lcom/c/b;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/c/aq;->f:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/c/aq;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_16

    move-result-object v1

    if-nez v1, :cond_25

    :try_start_a
    iget-object v1, p0, Lcom/c/aq;->d:Lcom/c/bp;

    sget-object v2, Lcom/c/aq;->f:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->e(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_22

    :goto_14
    monitor-exit p0

    return-object v0

    :catch_16
    move-exception v1

    :try_start_17
    iget-object v2, p0, Lcom/c/aq;->d:Lcom/c/bp;

    sget-object v3, Lcom/c/aq;->f:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    goto :goto_14

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_49

    iget-object v2, p0, Lcom/c/aq;->d:Lcom/c/bp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/c/aq;->f:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/c/bp;->e(Ljava/lang/String;)V

    goto :goto_14

    :cond_49
    iget-object v0, p0, Lcom/c/aq;->d:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/c/aq;->d:Lcom/c/bp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/aq;->f:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_25 .. :try_end_6c} :catchall_22

    :cond_6c
    move-object v0, v1

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/c/aq;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
