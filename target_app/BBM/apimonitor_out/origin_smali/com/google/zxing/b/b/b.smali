.class public final Lcom/google/zxing/b/b/b;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field public final a:[I

.field private final b:Lcom/google/zxing/b/b/a;


# direct methods
.method public constructor <init>(Lcom/google/zxing/b/b/a;[I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p2

    if-nez v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    array-length v1, p2

    if-le v1, v0, :cond_39

    aget v2, p2, v3

    if-nez v2, :cond_39

    :goto_17
    if-ge v0, v1, :cond_20

    aget v2, p2, v0

    if-nez v2, :cond_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_20
    if-ne v0, v1, :cond_2b

    invoke-virtual {p1}, Lcom/google/zxing/b/b/a;->b()Lcom/google/zxing/b/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/zxing/b/b/b;->a:[I

    iput-object v0, p0, Lcom/google/zxing/b/b/b;->a:[I

    :goto_2a
    return-void

    :cond_2b
    sub-int/2addr v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/b/b/b;->a:[I

    iget-object v1, p0, Lcom/google/zxing/b/b/b;->a:[I

    iget-object v2, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v2, v2

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    :cond_39
    iput-object p2, p0, Lcom/google/zxing/b/b/b;->a:[I

    goto :goto_2a
.end method


# virtual methods
.method final a(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->a:[I

    iget-object v1, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public final a(II)Lcom/google/zxing/b/b/b;
    .registers 8

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    if-nez p2, :cond_11

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v0}, Lcom/google/zxing/b/b/a;->b()Lcom/google/zxing/b/b/b;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v1, v0

    add-int v0, v1, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_2a

    iget-object v3, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    iget-object v4, p0, Lcom/google/zxing/b/b/b;->a:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/b/b/a;->c(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2a
    new-instance v0, Lcom/google/zxing/b/b/b;

    iget-object v1, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V

    goto :goto_10
.end method

.method final a(Lcom/google/zxing/b/b/b;)Lcom/google/zxing/b/b/b;
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    iget-object v1, p1, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/b/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    return-object p1

    :cond_1a
    invoke-virtual {p1}, Lcom/google/zxing/b/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    move-object p1, p0

    goto :goto_19

    :cond_22
    iget-object v1, p0, Lcom/google/zxing/b/b/b;->a:[I

    iget-object v0, p1, Lcom/google/zxing/b/b/b;->a:[I

    array-length v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_4f

    :goto_2a
    array-length v2, v1

    new-array v4, v2, [I

    array-length v2, v1

    array-length v3, v0

    sub-int v3, v2, v3

    invoke-static {v1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    :goto_35
    array-length v5, v1

    if-ge v2, v5, :cond_47

    sub-int v5, v2, v3

    aget v5, v0, v5

    aget v6, v1, v2

    invoke-static {v5, v6}, Lcom/google/zxing/b/b/a;->b(II)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_47
    new-instance p1, Lcom/google/zxing/b/b/b;

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-direct {p1, v0, v4}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V

    goto :goto_19

    :cond_4f
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2a
.end method

.method final a()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/zxing/b/b/b;->a:[I

    aget v1, v1, v0

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final b(I)I
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    invoke-virtual {p0, v1}, Lcom/google/zxing/b/b/b;->a(I)I

    move-result v0

    :cond_8
    return v0

    :cond_9
    iget-object v2, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v3, v2

    if-ne p1, v0, :cond_1d

    iget-object v2, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v3, v2

    move v0, v1

    :goto_12
    if-ge v1, v3, :cond_8

    aget v4, v2, v1

    invoke-static {v0, v4}, Lcom/google/zxing/b/b/a;->b(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1d
    iget-object v2, p0, Lcom/google/zxing/b/b/b;->a:[I

    aget v1, v2, v1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_24
    if-ge v1, v3, :cond_8

    iget-object v2, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v2, p1, v0}, Lcom/google/zxing/b/b/a;->c(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/b/b/b;->a:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Lcom/google/zxing/b/b/a;->b(II)I

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_24
.end method

.method final b(Lcom/google/zxing/b/b/b;)Lcom/google/zxing/b/b/b;
    .registers 15

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    iget-object v2, p1, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/b/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/google/zxing/b/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1f
    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v0}, Lcom/google/zxing/b/b/a;->b()Lcom/google/zxing/b/b/b;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    iget-object v3, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v4, v3

    iget-object v5, p1, Lcom/google/zxing/b/b/b;->a:[I

    array-length v6, v5

    add-int v0, v4, v6

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [I

    move v2, v1

    :goto_33
    if-ge v2, v4, :cond_55

    aget v8, v3, v2

    move v0, v1

    :goto_38
    if-ge v0, v6, :cond_51

    add-int v9, v2, v0

    add-int v10, v2, v0

    aget v10, v7, v10

    iget-object v11, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    aget v12, v5, v0

    invoke-virtual {v11, v8, v12}, Lcom/google/zxing/b/b/a;->c(II)I

    move-result v11

    invoke-static {v10, v11}, Lcom/google/zxing/b/b/a;->b(II)I

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_51
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_33

    :cond_55
    new-instance v0, Lcom/google/zxing/b/b/b;

    iget-object v1, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V

    goto :goto_25
.end method

.method final c(I)Lcom/google/zxing/b/b/b;
    .registers 7

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v0}, Lcom/google/zxing/b/b/a;->b()Lcom/google/zxing/b/b/b;

    move-result-object p0

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v1, v0

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_23

    iget-object v3, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    iget-object v4, p0, Lcom/google/zxing/b/b/b;->a:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/b/b/a;->c(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_23
    new-instance v0, Lcom/google/zxing/b/b/b;

    iget-object v1, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/b/b/a;[I)V

    move-object p0, v0

    goto :goto_8
.end method

.method public final c(Lcom/google/zxing/b/b/b;)[Lcom/google/zxing/b/b/b;
    .registers 9

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    iget-object v1, p1, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-virtual {p1}, Lcom/google/zxing/b/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v0}, Lcom/google/zxing/b/b/a;->b()Lcom/google/zxing/b/b/b;

    move-result-object v0

    iget-object v1, p1, Lcom/google/zxing/b/b/b;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/google/zxing/b/b/b;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v2, v1}, Lcom/google/zxing/b/b/a;->c(I)I

    move-result v2

    move-object v1, v0

    move-object v0, p0

    :goto_37
    iget-object v3, v0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p1, Lcom/google/zxing/b/b/b;->a:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_76

    invoke-virtual {v0}, Lcom/google/zxing/b/b/b;->a()Z

    move-result v3

    if-nez v3, :cond_76

    iget-object v3, v0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p1, Lcom/google/zxing/b/b/b;->a:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    iget-object v5, v0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lcom/google/zxing/b/b/b;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/google/zxing/b/b/a;->c(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/b/b/b;->a(II)Lcom/google/zxing/b/b/b;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v6, v3, v4}, Lcom/google/zxing/b/b/a;->a(II)Lcom/google/zxing/b/b/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/b/b/b;->a(Lcom/google/zxing/b/b/b;)Lcom/google/zxing/b/b/b;

    move-result-object v1

    invoke-virtual {v0, v5}, Lcom/google/zxing/b/b/b;->a(Lcom/google/zxing/b/b/b;)Lcom/google/zxing/b/b/b;

    move-result-object v0

    goto :goto_37

    :cond_76
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/zxing/b/b/b;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/google/zxing/b/b/b;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_13
    if-ltz v1, :cond_67

    invoke-virtual {p0, v1}, Lcom/google/zxing/b/b/b;->a(I)I

    move-result v0

    if-eqz v0, :cond_3d

    if-gez v0, :cond_41

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v0

    :cond_23
    :goto_23
    if-eqz v1, :cond_27

    if-eq v0, v4, :cond_34

    :cond_27
    iget-object v3, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/b/b/a;

    invoke-virtual {v3, v0}, Lcom/google/zxing/b/b/a;->b(I)I

    move-result v0

    if-nez v0, :cond_4d

    const/16 v0, 0x31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_34
    :goto_34
    if-eqz v1, :cond_3d

    if-ne v1, v4, :cond_5e

    const/16 v0, 0x78

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_13

    :cond_41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_23

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_4d
    if-ne v0, v4, :cond_55

    const/16 v0, 0x61

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_55
    const-string v3, "a^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_5e
    const-string v0, "x^"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
