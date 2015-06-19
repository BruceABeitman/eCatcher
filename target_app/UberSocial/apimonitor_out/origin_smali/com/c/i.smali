.class public abstract Lcom/c/i;
.super Lcom/c/co;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Lcom/c/i;

.field public static e:I

.field private static f:Lcom/c/i;

.field private static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/16 v8, 0x6b

    const/16 v9, 0x67

    const/16 v7, 0x43

    const/4 v11, 0x1

    const/4 v3, 0x0

    const-string v0, " \n\tX\u0004c\u0018\u0002\u000bP3\u0019\u0008\u000b\u001f7\u0012\u0017\u001a\u0003"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v11, :cond_10f

    move v2, v3

    :cond_12
    move-object v4, v0

    move v5, v2

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_17
    aget-char v10, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_112

    const/16 v6, 0x70

    :goto_20
    xor-int/2addr v6, v10

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_2c

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_17

    :cond_2c
    move v1, v0

    move-object v0, v4

    :goto_2e
    if-gt v1, v2, :cond_12

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/i;->h:Ljava/lang/String;

    const-string v0, "\r.3(?\u0011 "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v11, :cond_10c

    move v2, v3

    :cond_45
    move-object v4, v0

    move v5, v2

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_4a
    aget-char v10, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_11e

    const/16 v6, 0x70

    :goto_53
    xor-int/2addr v6, v10

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_5f

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4a

    :cond_5f
    move v1, v0

    move-object v0, v4

    :goto_61
    if-gt v1, v2, :cond_45

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/i;->b:Ljava/lang/String;

    const-string v0, "\u0004;4"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v11, :cond_10a

    move v2, v3

    :cond_78
    move-object v4, v0

    move v5, v2

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_7d
    aget-char v10, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_12a

    const/16 v6, 0x70

    :goto_86
    xor-int/2addr v6, v10

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_92

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_7d

    :cond_92
    move v1, v0

    move-object v0, v4

    :goto_94
    if-gt v1, v2, :cond_78

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/i;->a:Ljava/lang/String;

    const-string v0, "\u0000/*>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v11, :cond_c6

    :cond_aa
    move-object v2, v0

    move v4, v3

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_af
    aget-char v6, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_136

    const/16 v5, 0x70

    :goto_b8
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_c4

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_af

    :cond_c4
    move v1, v0

    move-object v0, v2

    :cond_c6
    if-gt v1, v3, :cond_aa

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/i;->c:Ljava/lang/String;

    new-instance v0, Lcom/c/s;

    invoke-direct {v0}, Lcom/c/s;-><init>()V

    sput-object v0, Lcom/c/i;->d:Lcom/c/i;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/i;->f:Lcom/c/i;

    return-void

    :pswitch_de
    move v6, v7

    goto/16 :goto_20

    :pswitch_e1
    move v6, v8

    goto/16 :goto_20

    :pswitch_e4
    move v6, v9

    goto/16 :goto_20

    :pswitch_e7
    const/16 v6, 0x7f

    goto/16 :goto_20

    :pswitch_eb
    move v6, v7

    goto/16 :goto_53

    :pswitch_ee
    move v6, v8

    goto/16 :goto_53

    :pswitch_f1
    move v6, v9

    goto/16 :goto_53

    :pswitch_f4
    const/16 v6, 0x7f

    goto/16 :goto_53

    :pswitch_f8
    move v6, v7

    goto :goto_86

    :pswitch_fa
    move v6, v8

    goto :goto_86

    :pswitch_fc
    move v6, v9

    goto :goto_86

    :pswitch_fe
    const/16 v6, 0x7f

    goto :goto_86

    :pswitch_101
    move v5, v7

    goto :goto_b8

    :pswitch_103
    move v5, v8

    goto :goto_b8

    :pswitch_105
    move v5, v9

    goto :goto_b8

    :pswitch_107
    const/16 v5, 0x7f

    goto :goto_b8

    :cond_10a
    move v2, v3

    goto :goto_94

    :cond_10c
    move v2, v3

    goto/16 :goto_61

    :cond_10f
    move v2, v3

    goto/16 :goto_2e

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_de
        :pswitch_e1
        :pswitch_e4
        :pswitch_e7
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_ee
        :pswitch_f1
        :pswitch_f4
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_fa
        :pswitch_fc
        :pswitch_fe
    .end packed-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_101
        :pswitch_103
        :pswitch_105
        :pswitch_107
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/c/co;-><init>()V

    return-void
.end method

.method public static a(Lcom/c/i;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/i;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/c/b;Ljava/lang/String;)Lcom/c/i;
    .registers 3

    sget-object v0, Lcom/c/i;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/c/n;

    invoke-direct {v0, p0}, Lcom/c/n;-><init>(Lcom/c/b;)V

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/c/i;->f:Lcom/c/i;

    if-nez v0, :cond_18

    new-instance v0, Lcom/c/x;

    invoke-direct {v0, p0, p1}, Lcom/c/x;-><init>(Lcom/c/b;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    sget-object v0, Lcom/c/i;->f:Lcom/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/c/i;->a(Lcom/c/b;Ljava/lang/String;)Lcom/c/i;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method protected abstract a(Lcom/c/b;Ljava/lang/String;)Lcom/c/i;
.end method

.method public abstract a(J)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public abstract d()Lcom/c/a/cg;
.end method
