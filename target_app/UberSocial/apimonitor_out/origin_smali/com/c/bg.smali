.class public final enum Lcom/c/bg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/c/bg;

.field public static final enum b:Lcom/c/bg;

.field public static final enum c:Lcom/c/bg;

.field private static final d:[Lcom/c/bg;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v7, 0x10

    const/16 v8, 0xd

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "EXuQBGX"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v11, :cond_103

    move v2, v3

    :cond_14
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_19
    aget-char v10, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_106

    move v6, v8

    :goto_21
    xor-int/2addr v6, v10

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_2d

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_19

    :cond_2d
    move v1, v0

    move-object v0, v4

    :goto_2f
    if-gt v1, v2, :cond_14

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    const-string v0, "RWjKHBO"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v11, :cond_100

    move v2, v3

    :cond_46
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_4b
    aget-char v10, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_112

    move v6, v8

    :goto_53
    xor-int/2addr v6, v10

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_5f

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4b

    :cond_5f
    move v1, v0

    move-object v0, v4

    :goto_61
    if-gt v1, v2, :cond_46

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v11

    const-string v0, "UNjZ_^Wr"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v11, :cond_fe

    move v2, v3

    :cond_78
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_7d
    aget-char v10, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_11e

    move v6, v8

    :goto_85
    xor-int/2addr v6, v10

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_91

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_7d

    :cond_91
    move v1, v0

    move-object v0, v4

    :goto_93
    if-gt v1, v2, :cond_78

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    sput-object v9, Lcom/c/bg;->e:[Ljava/lang/String;

    new-instance v0, Lcom/c/bg;

    sget-object v1, Lcom/c/bg;->e:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-direct {v0, v1, v3}, Lcom/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/bg;->a:Lcom/c/bg;

    new-instance v0, Lcom/c/bg;

    sget-object v1, Lcom/c/bg;->e:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-direct {v0, v1, v11}, Lcom/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/bg;->b:Lcom/c/bg;

    new-instance v0, Lcom/c/bg;

    sget-object v1, Lcom/c/bg;->e:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1, v12}, Lcom/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/bg;->c:Lcom/c/bg;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/bg;

    sget-object v1, Lcom/c/bg;->a:Lcom/c/bg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/bg;->b:Lcom/c/bg;

    aput-object v1, v0, v11

    sget-object v1, Lcom/c/bg;->c:Lcom/c/bg;

    aput-object v1, v0, v12

    sput-object v0, Lcom/c/bg;->d:[Lcom/c/bg;

    return-void

    :pswitch_d5
    move v6, v7

    goto/16 :goto_21

    :pswitch_d8
    const/16 v6, 0x16

    goto/16 :goto_21

    :pswitch_dc
    const/16 v6, 0x3e

    goto/16 :goto_21

    :pswitch_e0
    const/16 v6, 0x1f

    goto/16 :goto_21

    :pswitch_e4
    move v6, v7

    goto/16 :goto_53

    :pswitch_e7
    const/16 v6, 0x16

    goto/16 :goto_53

    :pswitch_eb
    const/16 v6, 0x3e

    goto/16 :goto_53

    :pswitch_ef
    const/16 v6, 0x1f

    goto/16 :goto_53

    :pswitch_f3
    move v6, v7

    goto :goto_85

    :pswitch_f5
    const/16 v6, 0x16

    goto :goto_85

    :pswitch_f8
    const/16 v6, 0x3e

    goto :goto_85

    :pswitch_fb
    const/16 v6, 0x1f

    goto :goto_85

    :cond_fe
    move v2, v3

    goto :goto_93

    :cond_100
    move v2, v3

    goto/16 :goto_61

    :cond_103
    move v2, v3

    goto/16 :goto_2f

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_d8
        :pswitch_dc
        :pswitch_e0
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_e7
        :pswitch_eb
        :pswitch_ef
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_f3
        :pswitch_f5
        :pswitch_f8
        :pswitch_fb
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/bg;
    .registers 2

    const-class v0, Lcom/c/bg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/bg;

    return-object v0
.end method

.method public static values()[Lcom/c/bg;
    .registers 1

    sget-object v0, Lcom/c/bg;->d:[Lcom/c/bg;

    invoke-virtual {v0}, [Lcom/c/bg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/bg;

    return-object v0
.end method
