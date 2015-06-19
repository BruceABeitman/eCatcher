.class final Lcom/google/b/b/br;
.super Lcom/google/b/b/ca;
.source "LongAdder.java"

# interfaces
.implements Lcom/google/b/b/bm;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/b/b/ca;-><init>()V

    return-void
.end method

.method private d()J
    .registers 8

    iget-wide v0, p0, Lcom/google/b/b/br;->d:J

    iget-object v3, p0, Lcom/google/b/b/br;->c:[Lcom/google/b/b/cc;

    if-eqz v3, :cond_14

    array-length v4, v3

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_14

    aget-object v5, v3, v2

    if-eqz v5, :cond_11

    iget-wide v5, v5, Lcom/google/b/b/cc;->a:J

    add-long/2addr v0, v5

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-wide v0
.end method


# virtual methods
.method final a(JJ)J
    .registers 7

    add-long v0, p1, p3

    return-wide v0
.end method

.method public final a()V
    .registers 3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/b/b/br;->a(J)V

    return-void
.end method

.method public final a(J)V
    .registers 16

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/b/b/br;->c:[Lcom/google/b/b/cc;

    if-nez v1, :cond_10

    iget-wide v4, p0, Lcom/google/b/b/br;->d:J

    add-long v6, v4, p1

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/google/b/b/br;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_10
    sget-object v0, Lcom/google/b/b/br;->a:Lcom/google/b/b/ce;

    invoke-virtual {v0}, Lcom/google/b/b/ce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/cd;

    iget v4, v0, Lcom/google/b/b/cd;->b:I

    if-eqz v1, :cond_106

    array-length v5, v1

    if-lez v5, :cond_106

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aget-object v1, v1, v4

    if-eqz v1, :cond_106

    iget-wide v4, v1, Lcom/google/b/b/cc;->a:J

    add-long v6, v4, p1

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/b/b/cc;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_6d

    :goto_30
    iget v4, v0, Lcom/google/b/b/cd;->b:I

    move v5, v4

    move v6, v1

    move v4, v3

    :cond_35
    :goto_35
    iget-object v7, p0, Lcom/google/b/b/ca;->c:[Lcom/google/b/b/cc;

    if-eqz v7, :cond_c5

    array-length v8, v7

    if-lez v8, :cond_c5

    add-int/lit8 v1, v8, -0x1

    and-int/2addr v1, v5

    aget-object v1, v7, v1

    if-nez v1, :cond_7f

    iget v1, p0, Lcom/google/b/b/ca;->e:I

    if-nez v1, :cond_72

    new-instance v1, Lcom/google/b/b/cc;

    invoke-direct {v1, p1, p2}, Lcom/google/b/b/cc;-><init>(J)V

    iget v7, p0, Lcom/google/b/b/ca;->e:I

    if-nez v7, :cond_72

    invoke-virtual {p0}, Lcom/google/b/b/ca;->b()Z

    move-result v7

    if-eqz v7, :cond_72

    :try_start_56
    iget-object v7, p0, Lcom/google/b/b/ca;->c:[Lcom/google/b/b/cc;

    if-eqz v7, :cond_103

    array-length v8, v7

    if-lez v8, :cond_103

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v5

    aget-object v9, v7, v8

    if-nez v9, :cond_103

    aput-object v1, v7, v8
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_6e

    move v1, v2

    :goto_67
    iput v3, p0, Lcom/google/b/b/ca;->e:I

    if-eqz v1, :cond_35

    :cond_6b
    :goto_6b
    iput v5, v0, Lcom/google/b/b/cd;->b:I

    :cond_6d
    return-void

    :catchall_6e
    move-exception v0

    iput v3, p0, Lcom/google/b/b/ca;->e:I

    throw v0

    :cond_72
    move v1, v3

    :goto_73
    shl-int/lit8 v4, v5, 0xd

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x11

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v4, 0x5

    xor-int/2addr v4, v5

    move v5, v4

    move v4, v1

    goto :goto_35

    :cond_7f
    if-nez v6, :cond_84

    move v1, v4

    move v6, v2

    goto :goto_73

    :cond_84
    iget-wide v9, v1, Lcom/google/b/b/cc;->a:J

    invoke-virtual {p0, v9, v10, p1, p2}, Lcom/google/b/b/ca;->a(JJ)J

    move-result-wide v11

    invoke-virtual {v1, v9, v10, v11, v12}, Lcom/google/b/b/cc;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_6b

    sget v1, Lcom/google/b/b/ca;->b:I

    if-ge v8, v1, :cond_98

    iget-object v1, p0, Lcom/google/b/b/ca;->c:[Lcom/google/b/b/cc;

    if-eq v1, v7, :cond_9a

    :cond_98
    move v1, v3

    goto :goto_73

    :cond_9a
    if-nez v4, :cond_9e

    move v1, v2

    goto :goto_73

    :cond_9e
    iget v1, p0, Lcom/google/b/b/ca;->e:I

    if-nez v1, :cond_100

    invoke-virtual {p0}, Lcom/google/b/b/ca;->b()Z

    move-result v1

    if-eqz v1, :cond_100

    :try_start_a8
    iget-object v1, p0, Lcom/google/b/b/ca;->c:[Lcom/google/b/b/cc;

    if-ne v1, v7, :cond_bc

    shl-int/lit8 v1, v8, 0x1

    new-array v4, v1, [Lcom/google/b/b/cc;

    move v1, v3

    :goto_b1
    if-ge v1, v8, :cond_ba

    aget-object v9, v7, v1

    aput-object v9, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    :cond_ba
    iput-object v4, p0, Lcom/google/b/b/ca;->c:[Lcom/google/b/b/cc;
    :try_end_bc
    .catchall {:try_start_a8 .. :try_end_bc} :catchall_c1

    :cond_bc
    iput v3, p0, Lcom/google/b/b/ca;->e:I

    move v4, v3

    goto/16 :goto_35

    :catchall_c1
    move-exception v0

    iput v3, p0, Lcom/google/b/b/ca;->e:I

    throw v0

    :cond_c5
    iget v1, p0, Lcom/google/b/b/ca;->e:I

    if-nez v1, :cond_f0

    iget-object v1, p0, Lcom/google/b/b/ca;->c:[Lcom/google/b/b/cc;

    if-ne v1, v7, :cond_f0

    invoke-virtual {p0}, Lcom/google/b/b/ca;->b()Z

    move-result v1

    if-eqz v1, :cond_f0

    :try_start_d3
    iget-object v1, p0, Lcom/google/b/b/ca;->c:[Lcom/google/b/b/cc;

    if-ne v1, v7, :cond_fe

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/b/b/cc;

    and-int/lit8 v7, v5, 0x1

    new-instance v8, Lcom/google/b/b/cc;

    invoke-direct {v8, p1, p2}, Lcom/google/b/b/cc;-><init>(J)V

    aput-object v8, v1, v7

    iput-object v1, p0, Lcom/google/b/b/ca;->c:[Lcom/google/b/b/cc;
    :try_end_e5
    .catchall {:try_start_d3 .. :try_end_e5} :catchall_ec

    move v1, v2

    :goto_e6
    iput v3, p0, Lcom/google/b/b/ca;->e:I

    if-nez v1, :cond_6b

    goto/16 :goto_35

    :catchall_ec
    move-exception v0

    iput v3, p0, Lcom/google/b/b/ca;->e:I

    throw v0

    :cond_f0
    iget-wide v7, p0, Lcom/google/b/b/ca;->d:J

    invoke-virtual {p0, v7, v8, p1, p2}, Lcom/google/b/b/ca;->a(JJ)J

    move-result-wide v9

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/google/b/b/ca;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_35

    goto/16 :goto_6b

    :cond_fe
    move v1, v3

    goto :goto_e6

    :cond_100
    move v1, v4

    goto/16 :goto_73

    :cond_103
    move v1, v3

    goto/16 :goto_67

    :cond_106
    move v1, v2

    goto/16 :goto_30
.end method

.method public final doubleValue()D
    .registers 3

    invoke-direct {p0}, Lcom/google/b/b/br;->d()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public final floatValue()F
    .registers 3

    invoke-direct {p0}, Lcom/google/b/b/br;->d()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final intValue()I
    .registers 3

    invoke-direct {p0}, Lcom/google/b/b/br;->d()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .registers 3

    invoke-direct {p0}, Lcom/google/b/b/br;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/google/b/b/br;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
