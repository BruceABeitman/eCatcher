.class public Lcom/c/d;
.super Lcom/c/co;


# static fields
.field private static final d:Lcom/c/bp;

.field private static final e:Ljava/util/WeakHashMap;

.field private static final f:Lcom/c/o;

.field private static h:Lcom/c/a/cg;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/c/b;

.field private b:Z

.field private c:Lcom/c/a/cg;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x43

    const/16 v8, 0x36

    const/16 v7, 0x20

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "\u0003XU&\u001d\u0012IY-M\u000fN@,\u0006\u000fNQc\u001d\tLZ&\u001f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1ab

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

    packed-switch v6, :pswitch_data_1ae

    const/16 v6, 0x6d

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

    const-string v0, "\nOU\"\u0019\u000fOXc\u0005\u0007S\u0016-\u0002FAQ&AFIQ-\u0002\u0014IX$"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1a8

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

    packed-switch v6, :pswitch_data_1ba

    const/16 v6, 0x6d

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

    const-string v0, "\u0003SB*\u0000\u0007TS\'M\nOU\"\u0019\u000fOXc\u000c\u0001E\u0016!\u000c\u0015ERc\u0002\u0008\u0000F1\u0008\u0010IY6\u001eFLY \u000c\u0012IY-WF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1a5

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

    packed-switch v6, :pswitch_data_1c6

    const/16 v6, 0x6d

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

    const-string v0, "\nOU\"\u0019\u000fOXc\u0004\u0015\u0000X,\u0019FA\u0016%\u0004\u001e\u000c\u0016*\n\u0008OD*\u0003\u0001"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_1a2

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

    packed-switch v6, :pswitch_data_1d2

    const/16 v6, 0x6d

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

    const-string v0, "\u0007DR\u000f\u0002\u0005AB*\u0002\u0008\u0008"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_19f

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

    packed-switch v6, :pswitch_data_1de

    const/16 v6, 0x6d

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

    const/4 v6, 0x5

    const-string v0, "\u0003SB*\u0000\u0007TS\'M\u0007GSc\u0004\u0015\u0000F1\u0002\u0004AT/\u0014FTY,M\u000fNW \u000e\u0013RW7\u0008J\u0000_$\u0003\tR_-\nFLY \u000c\u0012IY-"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_133

    :cond_117
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_11c
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_1ea

    const/16 v5, 0x6d

    :goto_125
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_131

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_11c

    :cond_131
    move v1, v0

    move-object v0, v2

    :cond_133
    if-gt v1, v3, :cond_117

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/d;->i:[Ljava/lang/String;

    const-class v0, Lcom/c/d;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v0

    sput-object v0, Lcom/c/d;->d:Lcom/c/bp;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/c/d;->e:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/d;->f:Lcom/c/o;

    return-void

    :pswitch_155
    const/16 v6, 0x66

    goto/16 :goto_23

    :pswitch_159
    move v6, v7

    goto/16 :goto_23

    :pswitch_15c
    move v6, v8

    goto/16 :goto_23

    :pswitch_15f
    move v6, v9

    goto/16 :goto_23

    :pswitch_162
    const/16 v6, 0x66

    goto/16 :goto_56

    :pswitch_166
    move v6, v7

    goto/16 :goto_56

    :pswitch_169
    move v6, v8

    goto/16 :goto_56

    :pswitch_16c
    move v6, v9

    goto/16 :goto_56

    :pswitch_16f
    const/16 v6, 0x66

    goto/16 :goto_8a

    :pswitch_173
    move v6, v7

    goto/16 :goto_8a

    :pswitch_176
    move v6, v8

    goto/16 :goto_8a

    :pswitch_179
    move v6, v9

    goto/16 :goto_8a

    :pswitch_17c
    const/16 v6, 0x66

    goto/16 :goto_be

    :pswitch_180
    move v6, v7

    goto/16 :goto_be

    :pswitch_183
    move v6, v8

    goto/16 :goto_be

    :pswitch_186
    move v6, v9

    goto/16 :goto_be

    :pswitch_189
    const/16 v6, 0x66

    goto/16 :goto_f2

    :pswitch_18d
    move v6, v7

    goto/16 :goto_f2

    :pswitch_190
    move v6, v8

    goto/16 :goto_f2

    :pswitch_193
    move v6, v9

    goto/16 :goto_f2

    :pswitch_196
    const/16 v5, 0x66

    goto :goto_125

    :pswitch_199
    move v5, v7

    goto :goto_125

    :pswitch_19b
    move v5, v8

    goto :goto_125

    :pswitch_19d
    move v5, v9

    goto :goto_125

    :cond_19f
    move v2, v3

    goto/16 :goto_100

    :cond_1a2
    move v2, v3

    goto/16 :goto_cc

    :cond_1a5
    move v2, v3

    goto/16 :goto_98

    :cond_1a8
    move v2, v3

    goto/16 :goto_64

    :cond_1ab
    move v2, v3

    goto/16 :goto_31

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_155
        :pswitch_159
        :pswitch_15c
        :pswitch_15f
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_162
        :pswitch_166
        :pswitch_169
        :pswitch_16c
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_16f
        :pswitch_173
        :pswitch_176
        :pswitch_179
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_17c
        :pswitch_180
        :pswitch_183
        :pswitch_186
    .end packed-switch

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_189
        :pswitch_18d
        :pswitch_190
        :pswitch_193
    .end packed-switch

    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_196
        :pswitch_199
        :pswitch_19b
        :pswitch_19d
    .end packed-switch
.end method

.method public constructor <init>(Lcom/c/b;)V
    .registers 3

    invoke-direct {p0}, Lcom/c/co;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/d;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/d;->c:Lcom/c/a/cg;

    iput-object p1, p0, Lcom/c/d;->a:Lcom/c/b;

    return-void
.end method

.method public static a(Lcom/c/a/cg;)V
    .registers 12

    const-wide/16 v9, 0x0

    sget v1, Lcom/c/i;->e:I

    sget-object v0, Lcom/c/d;->d:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/c/d;->d:Lcom/c/bp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/d;->i:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_2d
    const-class v2, Lcom/c/d;

    monitor-enter v2

    :try_start_30
    sget-object v0, Lcom/c/d;->h:Lcom/c/a/cg;

    if-eqz v0, :cond_9a

    invoke-virtual {p0}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    if-nez v0, :cond_bf

    sget-object v0, Lcom/c/d;->h:Lcom/c/a/cg;

    invoke-virtual {v0}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/ba;->a()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/c/a/cg;->e()J

    move-result-wide v5

    sget-object v0, Lcom/c/d;->h:Lcom/c/a/cg;

    invoke-virtual {v0}, Lcom/c/a/cg;->e()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    sget-object v0, Lcom/c/d;->d:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Lcom/c/d;->d:Lcom/c/bp;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/c/d;->i:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_73
    const-wide/16 v5, -0x7d0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_7f

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    if-lez v0, :cond_8b

    :cond_7f
    sget-object v0, Lcom/c/d;->d:Lcom/c/bp;

    sget-object v1, Lcom/c/d;->i:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    monitor-exit v2

    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/c/ba;->a(J)Lcom/c/ba;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/cg;->a(Lcom/c/ba;)V

    if-eqz v1, :cond_bf

    :cond_9a
    invoke-virtual {p0}, Lcom/c/a/cg;->c()D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-nez v0, :cond_aa

    invoke-virtual {p0}, Lcom/c/a/cg;->d()D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-eqz v0, :cond_b0

    :cond_aa
    invoke-virtual {p0}, Lcom/c/a/cg;->n()Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_b0
    sget-object v0, Lcom/c/d;->d:Lcom/c/bp;

    sget-object v1, Lcom/c/d;->i:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_8a

    :catchall_bc
    move-exception v0

    monitor-exit v2
    :try_end_be
    .catchall {:try_start_30 .. :try_end_be} :catchall_bc

    throw v0

    :cond_bf
    :try_start_bf
    invoke-virtual {p0}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    if-nez v0, :cond_d1

    sget-object v0, Lcom/c/d;->d:Lcom/c/bp;

    sget-object v1, Lcom/c/d;->i:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_8a

    :cond_d1
    sput-object p0, Lcom/c/d;->h:Lcom/c/a/cg;

    sget-object v0, Lcom/c/d;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_dd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/d;

    invoke-direct {v0, p0}, Lcom/c/d;->b(Lcom/c/a/cg;)V

    if-eqz v1, :cond_dd

    :cond_ee
    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_bf .. :try_end_ef} :catchall_bc

    sget-boolean v0, Lcom/c/bp;->b:Z

    if-eqz v0, :cond_8a

    add-int/lit8 v0, v1, 0x1

    sput v0, Lcom/c/i;->e:I

    goto :goto_8a
.end method

.method static a(Lcom/c/d;)V
    .registers 7

    const/4 v5, 0x0

    const-class v1, Lcom/c/d;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/c/d;->e:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/c/d;->h:Lcom/c/a/cg;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/c/d;->h:Lcom/c/a/cg;

    invoke-direct {p0, v0}, Lcom/c/d;->b(Lcom/c/a/cg;)V

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_32

    sget-object v0, Lcom/c/d;->f:Lcom/c/o;

    if-eqz v0, :cond_31

    :try_start_1c
    sget-object v0, Lcom/c/d;->f:Lcom/c/o;

    iget-object v0, v0, Lcom/c/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    sget-object v1, Lcom/c/d;->f:Lcom/c/o;

    iget-object v1, v1, Lcom/c/o;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/c/d;->a:Lcom/c/b;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_31} :catch_35

    :cond_31
    :goto_31
    return-void

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    :catch_35
    move-exception v0

    sget-object v1, Lcom/c/d;->d:Lcom/c/bp;

    sget-object v2, Lcom/c/d;->i:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method private declared-synchronized b(Lcom/c/a/cg;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/c/d;->a()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iput-object p1, p0, Lcom/c/d;->c:Lcom/c/a/cg;

    invoke-virtual {p0}, Lcom/c/d;->a()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_7

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static declared-synchronized b(Lcom/c/d;)V
    .registers 3

    const-class v1, Lcom/c/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/c/d;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/d;->c:Lcom/c/a/cg;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/d;->c:Lcom/c/a/cg;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/d;->c:Lcom/c/a/cg;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/c/d;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/c/d;->b:Z

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    invoke-static {p0}, Lcom/c/d;->a(Lcom/c/d;)V

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/c/d;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/d;->c:Lcom/c/a/cg;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_c

    invoke-static {p0}, Lcom/c/d;->b(Lcom/c/d;)V

    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method
