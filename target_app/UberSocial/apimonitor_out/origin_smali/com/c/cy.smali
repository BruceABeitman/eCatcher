.class public Lcom/c/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/dg;


# static fields
.field private static final c:Lcom/c/bp;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v7, 0x24

    const/16 v9, 0x13

    const/16 v8, 0xe

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "_K\u001dgg]V\u0016j3AP\u0012zvA\u001eS"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_d0

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

    packed-switch v6, :pswitch_data_d4

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

    const-string v0, "\u007fK\u001dgg]V\u0016j3AP\u0012zv\u0012W\u001baf^@S`|F\u0004\u0011k3\\Q\u001fb"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_ce

    move v2, v3

    :cond_47
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_4c
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_e0

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

    aput-object v0, v10, v12

    const/4 v6, 0x2

    const-string v0, "QK\u001d`vQP\u001aa}\u0012I\u0012zpZM\u001di3TM\u001fzv@\u001eS"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_94

    :cond_79
    move-object v2, v0

    move v4, v3

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_7e
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_ec

    move v5, v9

    :goto_86
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_92

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_7e

    :cond_92
    move v1, v0

    move-object v0, v2

    :cond_94
    if-gt v1, v3, :cond_79

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/cy;->d:[Ljava/lang/String;

    const-class v0, Lcom/c/cy;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v0

    sput-object v0, Lcom/c/cy;->c:Lcom/c/bp;

    return-void

    :pswitch_ac
    const/16 v6, 0x32

    goto/16 :goto_22

    :pswitch_b0
    move v6, v7

    goto/16 :goto_22

    :pswitch_b3
    const/16 v6, 0x73

    goto/16 :goto_22

    :pswitch_b7
    move v6, v8

    goto/16 :goto_22

    :pswitch_ba
    const/16 v6, 0x32

    goto :goto_54

    :pswitch_bd
    move v6, v7

    goto :goto_54

    :pswitch_bf
    const/16 v6, 0x73

    goto :goto_54

    :pswitch_c2
    move v6, v8

    goto :goto_54

    :pswitch_c4
    const/16 v5, 0x32

    goto :goto_86

    :pswitch_c7
    move v5, v7

    goto :goto_86

    :pswitch_c9
    const/16 v5, 0x73

    goto :goto_86

    :pswitch_cc
    move v5, v8

    goto :goto_86

    :cond_ce
    move v2, v3

    goto :goto_62

    :cond_d0
    move v2, v3

    goto/16 :goto_30

    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_b0
        :pswitch_b3
        :pswitch_b7
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_bd
        :pswitch_bf
        :pswitch_c2
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_c7
        :pswitch_c9
        :pswitch_cc
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/c/at;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/c/cy;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/c/cu;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/c/cy;->b:Ljava/util/Map;

    if-nez p1, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lcom/c/cy;->d:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-object p1, p0, Lcom/c/cy;->a:Ljava/util/Set;

    sget-object v3, Lcom/c/cy;->c:Lcom/c/bp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/c/cy;->d:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-boolean v3, Lcom/c/bp;->b:Z

    if-eqz v3, :cond_3e

    if-eqz v2, :cond_3f

    :goto_3c
    sput-boolean v0, Lcom/c/cu;->a:Z

    :cond_3e
    return-void

    :cond_3f
    move v0, v1

    goto :goto_3c
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Z
    .registers 12

    const/4 v0, 0x0

    sget-boolean v2, Lcom/c/cu;->a:Z

    if-nez p1, :cond_b

    iget-object v1, p0, Lcom/c/cy;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :goto_a
    return v0

    :cond_b
    sget-object v1, Lcom/c/cy;->c:Lcom/c/bp;

    invoke-virtual {v1}, Lcom/c/bp;->b()Z

    move-result v3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/cu;

    invoke-virtual {v0}, Lcom/c/cu;->c()Lcom/c/at;

    move-result-object v5

    iget-object v6, p0, Lcom/c/cy;->a:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/c/cy;->b:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_54

    const/4 v1, 0x1

    if-eqz v3, :cond_54

    sget-object v6, Lcom/c/cy;->c:Lcom/c/bp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/c/cy;->d:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_54
    iget-object v6, p0, Lcom/c/cy;->b:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_16

    :cond_5b
    move v0, v1

    goto :goto_a
.end method
