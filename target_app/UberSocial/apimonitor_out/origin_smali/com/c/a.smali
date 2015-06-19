.class Lcom/c/a;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field final a:Lcom/c/cw;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v7, 0x58

    const/16 v9, 0x18

    const/16 v8, 0x12

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "=7\u00152{56\u000fw{.1\u0017{l#x\u0004d}4,AI"

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

    const-string v0, ";6\u0005`w3<Ob}(5\u0008ak37\u000f<Y\u0019\u001b$AK\u0005\u0016$FO\u0015\n*MK\u000e\u00195W"

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

    const-string v0, "4=\u0015ew(3Aal;,\u00042y9;\u0004akz1\u00122v5,Ab}(5\u0008fl?<M2k11\u0011bq4?Awn?6\u0015"

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

    const-string v0, "97\u000f|}9,\u0008dq.!"

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

    sput-object v10, Lcom/c/a;->b:[Ljava/lang/String;

    return-void

    :pswitch_d7
    const/16 v6, 0x5a

    goto/16 :goto_22

    :pswitch_db
    move v6, v7

    goto/16 :goto_22

    :pswitch_de
    const/16 v6, 0x61

    goto/16 :goto_22

    :pswitch_e2
    move v6, v8

    goto/16 :goto_22

    :pswitch_e5
    const/16 v6, 0x5a

    goto/16 :goto_54

    :pswitch_e9
    move v6, v7

    goto/16 :goto_54

    :pswitch_ec
    const/16 v6, 0x61

    goto/16 :goto_54

    :pswitch_f0
    move v6, v8

    goto/16 :goto_54

    :pswitch_f3
    const/16 v6, 0x5a

    goto :goto_87

    :pswitch_f6
    move v6, v7

    goto :goto_87

    :pswitch_f8
    const/16 v6, 0x61

    goto :goto_87

    :pswitch_fb
    move v6, v8

    goto :goto_87

    :pswitch_fd
    const/16 v5, 0x5a

    goto :goto_b9

    :pswitch_100
    move v5, v7

    goto :goto_b9

    :pswitch_102
    const/16 v5, 0x61

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

.method constructor <init>(Lcom/c/cw;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a;->a:Lcom/c/cw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-static {}, Lcom/c/cw;->e()Lcom/c/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/c/cw;->e()Lcom/c/bp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/a;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_31
    sget-object v0, Lcom/c/a;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/c/cw;->e()Lcom/c/bp;

    move-result-object v0

    sget-object v1, Lcom/c/a;->b:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_48
    return-void

    :cond_49
    sget-object v0, Lcom/c/a;->b:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/c/a;->a:Lcom/c/cw;

    invoke-static {v1, v0}, Lcom/c/cw;->a(Lcom/c/cw;Landroid/net/ConnectivityManager;)V

    goto :goto_48
.end method
