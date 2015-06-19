.class final Lcom/c/a/ct;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static final h:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/c/a/dj;

.field private final c:Lcom/c/a/dj;

.field private final d:Lcom/c/a/dj;

.field private final e:Lcom/c/bp;

.field private final f:Lcom/c/a/ch;

.field private final g:Lcom/c/a/dm;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v10, 0x1e

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v11, v2, [Ljava/lang/String;

    const-string v2, "N\u007f\u0005y>R\u007f@{lTn\u0001irB,\u0017jrPe\u000el"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_d7

    move v4, v1

    :cond_15
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_1a
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_da

    move v7, v10

    :goto_22
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2e

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1a

    :cond_2e
    move v3, v2

    move-object v2, v5

    :goto_30
    if-gt v3, v4, :cond_15

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const-string v2, "N\u007f\u0005y>R\u007f@{lTn\u0001irB,\rdhRb\u0007+mWc\u0017gg\u001b$\u0002jm^h@dp\u001b\u007f\u0003jp\u001bc\u0002x{Iz\u0001\u007fwTbI"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_d5

    move v4, v1

    :cond_47
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_4c
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_e6

    move v7, v10

    :goto_54
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_60

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_4c

    :cond_60
    move v3, v2

    move-object v2, v5

    :goto_62
    if-gt v3, v4, :cond_47

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    const/4 v12, 0x2

    const-string v2, "N\u007f\u0005y>R\u007f@{lTn\u0001irB,\u0013\u007f\u007fOe\u000fe\u007fIu@#|Z\u007f\u0005o>Tb@x}Zb@d|Hi\u0012}\u007fOe\u000fe7"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_d3

    move v4, v1

    :cond_7a
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_7f
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_f2

    move v7, v10

    :goto_87
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_93

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_7f

    :cond_93
    move v3, v2

    move-object v2, v5

    :goto_95
    if-gt v3, v4, :cond_7a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    sput-object v11, Lcom/c/a/ct;->h:[Ljava/lang/String;

    const-class v2, Lcom/c/a/ct;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_af

    :goto_ac
    sput-boolean v0, Lcom/c/a/ct;->a:Z

    return-void

    :cond_af
    move v0, v1

    goto :goto_ac

    :pswitch_b1
    const/16 v7, 0x3b

    goto/16 :goto_22

    :pswitch_b5
    move v7, v8

    goto/16 :goto_22

    :pswitch_b8
    const/16 v7, 0x60

    goto/16 :goto_22

    :pswitch_bc
    move v7, v9

    goto/16 :goto_22

    :pswitch_bf
    const/16 v7, 0x3b

    goto :goto_54

    :pswitch_c2
    move v7, v8

    goto :goto_54

    :pswitch_c4
    const/16 v7, 0x60

    goto :goto_54

    :pswitch_c7
    move v7, v9

    goto :goto_54

    :pswitch_c9
    const/16 v7, 0x3b

    goto :goto_87

    :pswitch_cc
    move v7, v8

    goto :goto_87

    :pswitch_ce
    const/16 v7, 0x60

    goto :goto_87

    :pswitch_d1
    move v7, v9

    goto :goto_87

    :cond_d3
    move v4, v1

    goto :goto_95

    :cond_d5
    move v4, v1

    goto :goto_62

    :cond_d7
    move v4, v1

    goto/16 :goto_30

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_b5
        :pswitch_b8
        :pswitch_bc
    .end packed-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_c2
        :pswitch_c4
        :pswitch_c7
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_cc
        :pswitch_ce
        :pswitch_d1
    .end packed-switch
.end method

.method constructor <init>(Lcom/c/a/ch;Lcom/c/a/dm;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/c/a/cx;

    invoke-direct {v0, p0}, Lcom/c/a/cx;-><init>(Lcom/c/a/ct;)V

    iput-object v0, p0, Lcom/c/a/ct;->b:Lcom/c/a/dj;

    new-instance v0, Lcom/c/a/db;

    invoke-direct {v0, p0}, Lcom/c/a/db;-><init>(Lcom/c/a/ct;)V

    iput-object v0, p0, Lcom/c/a/ct;->c:Lcom/c/a/dj;

    new-instance v0, Lcom/c/a/df;

    invoke-direct {v0, p0}, Lcom/c/a/df;-><init>(Lcom/c/a/ct;)V

    iput-object v0, p0, Lcom/c/a/ct;->d:Lcom/c/a/dj;

    const-class v0, Lcom/c/a/ct;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ct;->e:Lcom/c/bp;

    iput-object p1, p0, Lcom/c/a/ct;->f:Lcom/c/a/ch;

    iput-object p2, p0, Lcom/c/a/ct;->g:Lcom/c/a/dm;

    return-void
.end method

.method static synthetic a(DD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/c/a/ct;->b(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;)V
    .registers 10

    invoke-virtual {p0}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-interface {p4, v0, v1, p1, p2}, Lcom/c/a/dj;->a(DD)D

    move-result-wide v0

    sget-boolean v2, Lcom/c/a/ct;->a:Z

    if-nez v2, :cond_23

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-gez v2, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;Ljava/util/List;)V
    .registers 13

    invoke-virtual {p0}, Lcom/c/a/cg;->q()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/c/a/cg;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/c/a/ct;->a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method private static a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 14

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/c/a/ct;->a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/c/a/cg;->c()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/c/a/cg;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b(DD)D
    .registers 6

    const-wide/high16 v0, 0x4000

    div-double v0, p2, v0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_9

    :goto_8
    return-wide p0

    :cond_9
    sub-double p0, p2, p0

    goto :goto_8
.end method


# virtual methods
.method a(Lcom/c/a/cg;Lcom/c/a/cg;)V
    .registers 14

    sget-boolean v6, Lcom/c/a/d;->h_:Z

    invoke-virtual {p1}, Lcom/c/a/cg;->u()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/c/a/ct;->g:Lcom/c/a/dm;

    invoke-virtual {v0}, Lcom/c/a/dm;->c()Lcom/c/a/cg;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/c/a/cg;->u()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/c/a/ci;->U()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/c/a/cg;->j()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-virtual {v0}, Lcom/c/a/cg;->j()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0

    sub-double v0, v9, v1

    mul-double/2addr v0, v7

    add-double/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lcom/c/a/cg;->d(D)V

    :cond_2c
    iget-object v0, p0, Lcom/c/a/ct;->f:Lcom/c/a/ch;

    invoke-virtual {v0}, Lcom/c/a/ch;->c()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/c/a/ct;->f:Lcom/c/a/ch;

    invoke-virtual {v0}, Lcom/c/a/ch;->f()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/c/a/ct;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/a/ct;->h:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/c/a/cg;->u()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {p1}, Lcom/c/a/cg;->j()D

    move-result-wide v0

    invoke-static {}, Lcom/c/a/ci;->V()D

    move-result-wide v2

    invoke-static {}, Lcom/c/a/ci;->W()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/c/ad;->a(DDD)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/c/a/cg;->d(D)V

    if-eqz v6, :cond_b1

    :cond_61
    iget-object v0, p0, Lcom/c/a/ct;->f:Lcom/c/a/ch;

    invoke-virtual {v0}, Lcom/c/a/ch;->a()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/c/a/ct;->f:Lcom/c/a/ch;

    invoke-virtual {v0}, Lcom/c/a/ch;->d()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/c/a/ct;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/a/ct;->h:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/c/a/cg;->d(D)V

    if-eqz v6, :cond_b1

    :cond_82
    iget-object v0, p0, Lcom/c/a/ct;->f:Lcom/c/a/ch;

    invoke-virtual {v0}, Lcom/c/a/ch;->b()Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/c/a/ct;->f:Lcom/c/a/ch;

    invoke-virtual {v0}, Lcom/c/a/ch;->e()Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/c/a/ct;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/a/ct;->h:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/c/a/cg;->u()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {p1}, Lcom/c/a/cg;->j()D

    move-result-wide v0

    invoke-static {}, Lcom/c/a/ci;->X()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/c/a/cg;->d(D)V

    :cond_b1
    return-void
.end method

.method a(Lcom/c/a/cg;Lcom/c/a/cg;Lcom/c/ba;)V
    .registers 15

    sget-boolean v10, Lcom/c/a/d;->h_:Z

    iget-object v0, p0, Lcom/c/a/ct;->g:Lcom/c/a/dm;

    invoke-virtual {v0}, Lcom/c/a/dm;->c()Lcom/c/a/cg;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/c/a/cg;->u()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/c/a/cg;->B()Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_17
    const/4 v0, 0x1

    move v2, v0

    :goto_19
    if-eqz v2, :cond_8d

    invoke-static {}, Lcom/c/a/ci;->S()J

    move-result-wide v0

    move-wide v8, v0

    :goto_20
    invoke-virtual {p1}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_93

    iget-object v4, p0, Lcom/c/a/ct;->c:Lcom/c/a/dj;

    :goto_3f
    long-to-double v0, v8

    const-wide v2, 0x408f400000000000L

    div-double v1, v0, v2

    move-object v0, p1

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/c/a/ct;->a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/c/a/ct;->g:Lcom/c/a/dm;

    invoke-virtual {v0, p3, v8, v9}, Lcom/c/a/dm;->b(Lcom/c/ba;J)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_56
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/cg;

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/c/a/ct;->a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    if-eqz v10, :cond_56

    :cond_68
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    invoke-static {v5, v7}, Lcom/c/ad;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v6, v7}, Lcom/c/ad;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/c/a/cg;->a(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/c/a/cg;->b(D)V

    goto :goto_a

    :cond_8a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_19

    :cond_8d
    invoke-static {}, Lcom/c/a/ci;->R()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_20

    :cond_93
    iget-object v4, p0, Lcom/c/a/ct;->b:Lcom/c/a/dj;

    goto :goto_3f
.end method

.method b(Lcom/c/a/cg;Lcom/c/a/cg;Lcom/c/ba;)V
    .registers 14

    sget-boolean v7, Lcom/c/a/d;->h_:Z

    invoke-static {}, Lcom/c/a/ci;->T()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    long-to-double v0, v8

    const-wide v2, 0x408f400000000000L

    div-double v1, v0, v2

    iget-object v4, p0, Lcom/c/a/ct;->d:Lcom/c/a/dj;

    move-object v0, p1

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/c/a/ct;->a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/c/a/ct;->g:Lcom/c/a/dm;

    invoke-virtual {v0, p3, v8, v9}, Lcom/c/a/dm;->b(Lcom/c/ba;J)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/cg;

    iget-object v4, p0, Lcom/c/a/ct;->d:Lcom/c/a/dj;

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/c/a/ct;->a(Lcom/c/a/cg;DLcom/c/ba;Lcom/c/a/dj;Ljava/util/List;Ljava/util/List;)V

    if-eqz v7, :cond_36

    :cond_4a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    invoke-static {v5, v0}, Lcom/c/j;->a(Ljava/util/List;Z)V

    invoke-static {v5, v6}, Lcom/c/ad;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/c/j;->a(DZ)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/c/a/cg;->e(D)V

    goto :goto_12
.end method
