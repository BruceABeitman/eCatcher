.class public abstract Lcom/c/ct;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x18

    const/4 v8, 0x7

    const/4 v10, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v11, v8, [Ljava/lang/String;

    const-string v2, "\'N%#"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1e8

    move v4, v1

    :cond_12
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_17
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1ec

    const/16 v7, 0x1a

    :goto_20
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2c

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_17

    :cond_2c
    move v3, v2

    move-object v2, v5

    :goto_2e
    if-gt v3, v4, :cond_12

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const-string v2, "f\u0007lfww\u0007}g:s\u001c8vibS|fxr\u00145nuc\u00168eoi\u0010ljuiSojno\u001cmw:f\u0000kfhsS}m{e\u001f}g"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1e5

    move v4, v1

    :cond_45
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_4a
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1f8

    const/16 v7, 0x1a

    :goto_53
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_5f

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_4a

    :cond_5f
    move v3, v2

    move-object v2, v5

    :goto_61
    if-gt v3, v4, :cond_45

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    const/4 v12, 0x2

    const-string v2, "\'R%#"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1e2

    move v4, v1

    :cond_79
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_7e
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_204

    const/16 v7, 0x1a

    :goto_87
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_93

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_7e

    :cond_93
    move v3, v2

    move-object v2, v5

    :goto_95
    if-gt v3, v4, :cond_79

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const-string v2, ".S$#"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1df

    move v4, v1

    :cond_ac
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_b1
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_210

    const/16 v7, 0x1a

    :goto_ba
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_c6

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_b1

    :cond_c6
    move v3, v2

    move-object v2, v5

    :goto_c8
    if-gt v3, v4, :cond_ac

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v10

    const/4 v12, 0x4

    const-string v2, "f\u0011k+"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1dc

    move v4, v1

    :cond_e0
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_e5
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_21c

    const/16 v7, 0x1a

    :goto_ee
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_fa

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_e5

    :cond_fa
    move v3, v2

    move-object v2, v5

    :goto_fc
    if-gt v3, v4, :cond_e0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x5

    const-string v2, "\'^8"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1d9

    move v4, v1

    :cond_114
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_119
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_228

    const/16 v7, 0x1a

    :goto_122
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_12e

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_119

    :cond_12e
    move v3, v2

    move-object v2, v5

    :goto_130
    if-gt v3, v4, :cond_114

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x6

    const-string v2, "\'O8"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1d7

    move v4, v1

    :cond_148
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_14d
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_234

    const/16 v7, 0x1a

    :goto_156
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_162

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_14d

    :cond_162
    move v3, v2

    move-object v2, v5

    :goto_164
    if-gt v3, v4, :cond_148

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    sput-object v11, Lcom/c/ct;->b:[Ljava/lang/String;

    const-class v2, Lcom/c/ct;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_17e

    :goto_17b
    sput-boolean v0, Lcom/c/ct;->a:Z

    return-void

    :cond_17e
    move v0, v1

    goto :goto_17b

    :pswitch_180
    move v7, v8

    goto/16 :goto_20

    :pswitch_183
    const/16 v7, 0x73

    goto/16 :goto_20

    :pswitch_187
    move v7, v9

    goto/16 :goto_20

    :pswitch_18a
    move v7, v10

    goto/16 :goto_20

    :pswitch_18d
    move v7, v8

    goto/16 :goto_53

    :pswitch_190
    const/16 v7, 0x73

    goto/16 :goto_53

    :pswitch_194
    move v7, v9

    goto/16 :goto_53

    :pswitch_197
    move v7, v10

    goto/16 :goto_53

    :pswitch_19a
    move v7, v8

    goto/16 :goto_87

    :pswitch_19d
    const/16 v7, 0x73

    goto/16 :goto_87

    :pswitch_1a1
    move v7, v9

    goto/16 :goto_87

    :pswitch_1a4
    move v7, v10

    goto/16 :goto_87

    :pswitch_1a7
    move v7, v8

    goto/16 :goto_ba

    :pswitch_1aa
    const/16 v7, 0x73

    goto/16 :goto_ba

    :pswitch_1ae
    move v7, v9

    goto/16 :goto_ba

    :pswitch_1b1
    move v7, v10

    goto/16 :goto_ba

    :pswitch_1b4
    move v7, v8

    goto/16 :goto_ee

    :pswitch_1b7
    const/16 v7, 0x73

    goto/16 :goto_ee

    :pswitch_1bb
    move v7, v9

    goto/16 :goto_ee

    :pswitch_1be
    move v7, v10

    goto/16 :goto_ee

    :pswitch_1c1
    move v7, v8

    goto/16 :goto_122

    :pswitch_1c4
    const/16 v7, 0x73

    goto/16 :goto_122

    :pswitch_1c8
    move v7, v9

    goto/16 :goto_122

    :pswitch_1cb
    move v7, v10

    goto/16 :goto_122

    :pswitch_1ce
    move v7, v8

    goto :goto_156

    :pswitch_1d0
    const/16 v7, 0x73

    goto :goto_156

    :pswitch_1d3
    move v7, v9

    goto :goto_156

    :pswitch_1d5
    move v7, v10

    goto :goto_156

    :cond_1d7
    move v4, v1

    goto :goto_164

    :cond_1d9
    move v4, v1

    goto/16 :goto_130

    :cond_1dc
    move v4, v1

    goto/16 :goto_fc

    :cond_1df
    move v4, v1

    goto/16 :goto_c8

    :cond_1e2
    move v4, v1

    goto/16 :goto_95

    :cond_1e5
    move v4, v1

    goto/16 :goto_61

    :cond_1e8
    move v4, v1

    goto/16 :goto_2e

    nop

    :pswitch_data_1ec
    .packed-switch 0x0
        :pswitch_180
        :pswitch_183
        :pswitch_187
        :pswitch_18a
    .end packed-switch

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_18d
        :pswitch_190
        :pswitch_194
        :pswitch_197
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
        :pswitch_1a7
        :pswitch_1aa
        :pswitch_1ae
        :pswitch_1b1
    .end packed-switch

    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_1b4
        :pswitch_1b7
        :pswitch_1bb
        :pswitch_1be
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_1c1
        :pswitch_1c4
        :pswitch_1c8
        :pswitch_1cb
    .end packed-switch

    :pswitch_data_234
    .packed-switch 0x0
        :pswitch_1ce
        :pswitch_1d0
        :pswitch_1d3
        :pswitch_1d5
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)V
    .registers 8

    cmpl-double v0, p0, p2

    if-lez v0, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/ct;->b:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_24
    return-void
.end method

.method public static a(DDD)V
    .registers 10

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, p4

    if-lez v0, :cond_40

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/ct;->b:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/ct;->b:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/ct;->b:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_40
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_27

    :cond_5
    if-ne p0, p1, :cond_8

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/ct;->b:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_27
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/ct;->b:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Z)V
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Z)V

    throw v0

    :cond_8
    return-void
.end method

.method public static a(ZLjava/lang/Object;)V
    .registers 3

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_8
    return-void
.end method

.method public static a()Z
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/c/ct;->a:Z

    if-nez v2, :cond_c

    move v2, v0

    :goto_7
    if-ne v2, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_c
    move v2, v1

    goto :goto_7
.end method

.method public static b()V
    .registers 3

    invoke-static {}, Lcom/c/ct;->a()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/c/ct;->b:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v3, 0x2

    if-eqz p0, :cond_5

    if-nez p1, :cond_27

    :cond_5
    if-eq p0, p1, :cond_8

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/ct;->b:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_27
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/ct;->b:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
