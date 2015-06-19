.class final Lcom/c/a/ac;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Comparator;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v8, 0x3d

    const/16 v7, 0x15

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "{\u0019G_cf\u0013GhPYV\u0006Kc|\u001a\u0006_np"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_111

    move v2, v3

    :cond_14
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_19
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_114

    move v6, v9

    :goto_21
    xor-int/2addr v6, v11

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

    aput-object v0, v10, v3

    const-string v0, "v\u0017\t\u001av5\u0011\u0002I\"a\u001e\u0002\u001d`t\u0005\u0002\u001dWG:G[mgV\u0006\u001dd|\u001a\u0002"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_10e

    move v2, v3

    :cond_46
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_4b
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_120

    move v6, v9

    :goto_53
    xor-int/2addr v6, v11

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

    aput-object v0, v10, v12

    const-string v0, "v\u0017\t\u001av5\u0011\u0002I\"a\u001e\u0002\u001dd|\u001a\u0002\u001drt\u0002\u000f\u001ddz\u0004G\\\"@$+"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_10c

    move v2, v3

    :cond_78
    move-object v4, v0

    move v5, v2

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_7d
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_12c

    move v6, v9

    :goto_85
    xor-int/2addr v6, v11

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

    aput-object v0, v10, v9

    const/4 v6, 0x3

    const-string v0, "v\u0017\t\u001av5\u0011\u0002I\"a\u001e\u0002\u001dmeV\u0001Rp5\u0017G[ky\u0013"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v12, :cond_c5

    :cond_aa
    move-object v2, v0

    move v4, v3

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_af
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_138

    move v5, v9

    :goto_b7
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_c3

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_af

    :cond_c3
    move v1, v0

    move-object v0, v2

    :cond_c5
    if-gt v1, v3, :cond_aa

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/a/ac;->g:[Ljava/lang/String;

    new-instance v0, Lcom/c/a/ah;

    invoke-direct {v0}, Lcom/c/a/ah;-><init>()V

    sput-object v0, Lcom/c/a/ac;->a:Ljava/util/Comparator;

    return-void

    :pswitch_dc
    move v6, v7

    goto/16 :goto_21

    :pswitch_df
    const/16 v6, 0x76

    goto/16 :goto_21

    :pswitch_e3
    const/16 v6, 0x67

    goto/16 :goto_21

    :pswitch_e7
    move v6, v8

    goto/16 :goto_21

    :pswitch_ea
    move v6, v7

    goto/16 :goto_53

    :pswitch_ed
    const/16 v6, 0x76

    goto/16 :goto_53

    :pswitch_f1
    const/16 v6, 0x67

    goto/16 :goto_53

    :pswitch_f5
    move v6, v8

    goto/16 :goto_53

    :pswitch_f8
    move v6, v7

    goto :goto_85

    :pswitch_fa
    const/16 v6, 0x76

    goto :goto_85

    :pswitch_fd
    const/16 v6, 0x67

    goto :goto_85

    :pswitch_100
    move v6, v8

    goto :goto_85

    :pswitch_102
    move v5, v7

    goto :goto_b7

    :pswitch_104
    const/16 v5, 0x76

    goto :goto_b7

    :pswitch_107
    const/16 v5, 0x67

    goto :goto_b7

    :pswitch_10a
    move v5, v8

    goto :goto_b7

    :cond_10c
    move v2, v3

    goto :goto_93

    :cond_10e
    move v2, v3

    goto/16 :goto_61

    :cond_111
    move v2, v3

    goto/16 :goto_2f

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_df
        :pswitch_e3
        :pswitch_e7
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_ed
        :pswitch_f1
        :pswitch_f5
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_fa
        :pswitch_fd
        :pswitch_100
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_102
        :pswitch_104
        :pswitch_107
        :pswitch_10a
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/c/a/ac;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/c/a/ac;->f:Z

    iput p2, p0, Lcom/c/a/ac;->c:I

    iput-wide p3, p0, Lcom/c/a/ac;->d:J

    return-void
.end method

.method static a(Ljava/lang/String;IJLjava/lang/String;)Lcom/c/a/ac;
    .registers 12

    new-instance v0, Lcom/c/a/ac;

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/c/a/ac;-><init>(Ljava/lang/String;IJLjava/lang/String;Z)V

    return-object v0
.end method

.method static a(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/c/a/ac;
    .registers 13

    new-instance v0, Lcom/c/a/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/c/a/ac;-><init>(Ljava/lang/String;IJLjava/lang/String;Z)V

    return-object v0
.end method

.method static b(Ljava/lang/String;IJLjava/lang/String;)Lcom/c/a/ac;
    .registers 12

    new-instance v0, Lcom/c/a/ac;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/c/a/ac;-><init>(Ljava/lang/String;IJLjava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/c/a/ac;)Z
    .registers 4

    iget-object v0, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_17

    iget-object v0, p1, Lcom/c/a/ac;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_16
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/c/a/ac;->c:I

    return v0
.end method

.method b(Lcom/c/a/ac;)Z
    .registers 4

    iget-object v0, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    iget-object v0, p1, Lcom/c/a/ac;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method c()J
    .registers 3

    iget-wide v0, p0, Lcom/c/a/ac;->d:J

    return-wide v0
.end method

.method d()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/c/a/ac;->f:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    sget-object v2, Lcom/c/a/ac;->g:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object v1, p0, Lcom/c/a/ac;->e:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method e()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/c/a/ac;->f:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/a/ac;->g:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p0}, Lcom/c/a/ac;->d()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/a/ac;->g:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lcom/c/a/ac;->e:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    check-cast p1, Lcom/c/a/ac;

    iget-boolean v1, p0, Lcom/c/a/ac;->f:Z

    iget-boolean v2, p1, Lcom/c/a/ac;->f:Z

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/c/a/ac;->c:I

    iget v2, p1, Lcom/c/a/ac;->c:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/c/a/ac;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/a/ac;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_23} :catch_28

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :catch_28
    move-exception v1

    goto :goto_3
.end method

.method f()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/c/a/ac;->f:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/a/ac;->g:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p0}, Lcom/c/a/ac;->d()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/c/a/ac;->e:Ljava/lang/String;

    :goto_17
    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/c/a/ac;->e:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_17
.end method

.method g()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/c/a/ac;->f:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/a/ac;->g:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/c/a/ac;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/c/a/ac;->f:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    :goto_5
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/c/a/ac;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lcom/c/a/ac;->d:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/c/a/ac;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_25
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/c/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/c/a/ac;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
