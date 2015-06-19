.class public final Lcom/c/a/b;
.super Lcom/c/a/d;


# static fields
.field private static final g:J = -0x26323bc8c3492f05L

.field private static final h:[Ljava/lang/String;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/c/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v8, 0x3c

    const/16 v7, 0x29

    const/16 v9, 0x8

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "\u0005_"

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

    const-string v0, "\tE"

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

    sput-object v10, Lcom/c/a/b;->h:[Ljava/lang/String;

    return-void

    :pswitch_71
    move v6, v7

    goto :goto_22

    :pswitch_73
    const/16 v6, 0x7f

    goto :goto_22

    :pswitch_76
    move v6, v8

    goto :goto_22

    :pswitch_78
    const/16 v6, 0x63

    goto :goto_22

    :pswitch_7b
    move v5, v7

    goto :goto_53

    :pswitch_7d
    const/16 v5, 0x7f

    goto :goto_53

    :pswitch_80
    move v5, v8

    goto :goto_53

    :pswitch_82
    const/16 v5, 0x63

    goto :goto_53

    :cond_85
    move v2, v3

    goto :goto_30

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_71
        :pswitch_73
        :pswitch_76
        :pswitch_78
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_7d
        :pswitch_80
        :pswitch_82
    .end packed-switch
.end method

.method constructor <init>(DDJLjava/lang/String;Lcom/c/a/f;)V
    .registers 9

    invoke-direct/range {p0 .. p6}, Lcom/c/a/d;-><init>(DDJ)V

    iput-object p7, p0, Lcom/c/a/b;->a:Ljava/lang/String;

    iput-object p8, p0, Lcom/c/a/b;->b:Lcom/c/a/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/c/a/f;
    .registers 2

    iget-object v0, p0, Lcom/c/a/b;->b:Lcom/c/a/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/c/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/c/a/b;->h:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/b;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/c/a/b;->h:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/b;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/c/a/b;->b:Lcom/c/a/f;

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/c/a/b;->b:Lcom/c/a/f;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_51
    const-string v0, ""

    goto :goto_48
.end method
