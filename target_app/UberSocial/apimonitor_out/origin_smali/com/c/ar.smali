.class final Lcom/c/ar;
.super Lcom/c/am;


# static fields
.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v8, 0x64

    const/16 v9, 0x3c

    const/16 v7, 0x1b

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, ">8W(c1.X!p5?T)y$(I;}4,K0y\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_85

    move v2, v3

    :cond_15
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_1a
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_88

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

    const-string v0, "\u0013\u000cuCHP\u0002k\u0001RP#N(p/,X\'y<(I+q59^6c1)Z4h5?"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_61

    :cond_46
    move-object v2, v0

    move v4, v3

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_4b
    aget-char v6, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_94

    move v5, v9

    :goto_53
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_5f

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_4b

    :cond_5f
    move v1, v0

    move-object v0, v2

    :cond_61
    if-gt v1, v3, :cond_46

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v12

    sput-object v10, Lcom/c/ar;->c:[Ljava/lang/String;

    return-void

    :pswitch_71
    const/16 v6, 0x70

    goto :goto_22

    :pswitch_74
    const/16 v6, 0x6d

    goto :goto_22

    :pswitch_77
    move v6, v7

    goto :goto_22

    :pswitch_79
    move v6, v8

    goto :goto_22

    :pswitch_7b
    const/16 v5, 0x70

    goto :goto_53

    :pswitch_7e
    const/16 v5, 0x6d

    goto :goto_53

    :pswitch_81
    move v5, v7

    goto :goto_53

    :pswitch_83
    move v5, v8

    goto :goto_53

    :cond_85
    move v2, v3

    goto :goto_30

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_71
        :pswitch_74
        :pswitch_77
        :pswitch_79
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_83
    .end packed-switch
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/c/am;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/c/b;)Lcom/c/am;
    .registers 2

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/c/ar;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b()V
    .registers 4

    new-instance v0, Lcom/c/bs;

    sget-object v1, Lcom/c/ar;->c:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/c/bs;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
