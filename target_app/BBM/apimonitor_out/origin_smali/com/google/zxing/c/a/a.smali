.class final Lcom/google/zxing/c/a/a;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field final a:Lcom/google/zxing/b/b;

.field final b:Lcom/google/zxing/b/b;

.field final c:Lcom/google/zxing/c/a/g;


# direct methods
.method constructor <init>(Lcom/google/zxing/b/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/zxing/b/b;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_11

    const/16 v1, 0x90

    if-gt v0, v1, :cond_11

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    :cond_11
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0

    :cond_16
    iget v0, p1, Lcom/google/zxing/b/b;->b:I

    iget v1, p1, Lcom/google/zxing/b/b;->a:I

    invoke-static {v0, v1}, Lcom/google/zxing/c/a/g;->a(II)Lcom/google/zxing/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->c:Lcom/google/zxing/c/a/g;

    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a;->a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->a:Lcom/google/zxing/b/b;

    new-instance v0, Lcom/google/zxing/b/b;

    iget-object v1, p0, Lcom/google/zxing/c/a/a;->a:Lcom/google/zxing/b/b;

    iget v1, v1, Lcom/google/zxing/b/b;->a:I

    iget-object v2, p0, Lcom/google/zxing/c/a/a;->a:Lcom/google/zxing/b/b;

    iget v2, v2, Lcom/google/zxing/b/b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/b/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/zxing/c/a/a;->b:Lcom/google/zxing/b/b;

    return-void
.end method

.method private a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/b;
    .registers 16

    iget-object v0, p0, Lcom/google/zxing/c/a/a;->c:Lcom/google/zxing/c/a/g;

    iget v0, v0, Lcom/google/zxing/c/a/g;->b:I

    iget-object v1, p0, Lcom/google/zxing/c/a/a;->c:Lcom/google/zxing/c/a/g;

    iget v1, v1, Lcom/google/zxing/c/a/g;->c:I

    iget v2, p1, Lcom/google/zxing/b/b;->b:I

    if-eq v2, v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dimension of bitMarix must match the version size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v2, p0, Lcom/google/zxing/c/a/a;->c:Lcom/google/zxing/c/a/g;

    iget v4, v2, Lcom/google/zxing/c/a/g;->d:I

    iget-object v2, p0, Lcom/google/zxing/c/a/a;->c:Lcom/google/zxing/c/a/g;

    iget v5, v2, Lcom/google/zxing/c/a/g;->e:I

    div-int v6, v0, v4

    div-int v7, v1, v5

    mul-int v0, v6, v4

    mul-int v1, v7, v5

    new-instance v8, Lcom/google/zxing/b/b;

    invoke-direct {v8, v1, v0}, Lcom/google/zxing/b/b;-><init>(II)V

    const/4 v0, 0x0

    move v3, v0

    :goto_2b
    if-ge v3, v6, :cond_65

    mul-int v9, v3, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_31
    if-ge v2, v7, :cond_61

    mul-int v10, v2, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_37
    if-ge v1, v4, :cond_5d

    add-int/lit8 v0, v4, 0x2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    add-int v11, v0, v1

    add-int v12, v9, v1

    const/4 v0, 0x0

    :goto_43
    if-ge v0, v5, :cond_59

    add-int/lit8 v13, v5, 0x2

    mul-int/2addr v13, v2

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v0

    invoke-virtual {p1, v13, v11}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v13

    if-eqz v13, :cond_56

    add-int v13, v10, v0

    invoke-virtual {v8, v13, v12}, Lcom/google/zxing/b/b;->b(II)V

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    :cond_5d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    :cond_61
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2b

    :cond_65
    return-object v8
.end method


# virtual methods
.method final a(IIII)Z
    .registers 8

    if-gez p1, :cond_21

    add-int v1, p1, p3

    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    :goto_b
    if-gez v0, :cond_15

    add-int/2addr v0, p4

    add-int/lit8 v2, p4, 0x4

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    :cond_15
    iget-object v2, p0, Lcom/google/zxing/c/a/a;->b:Lcom/google/zxing/b/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/b/b;->b(II)V

    iget-object v2, p0, Lcom/google/zxing/c/a/a;->a:Lcom/google/zxing/b/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v0

    return v0

    :cond_21
    move v0, p2

    move v1, p1

    goto :goto_b
.end method

.method final b(IIII)I
    .registers 8

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/c/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/c/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1a

    or-int/lit8 v0, v0, 0x1

    :cond_1a
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/c/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_28

    or-int/lit8 v0, v0, 0x1

    :cond_28
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/c/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_36

    or-int/lit8 v0, v0, 0x1

    :cond_36
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/zxing/c/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_42

    or-int/lit8 v0, v0, 0x1

    :cond_42
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/c/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4e

    or-int/lit8 v0, v0, 0x1

    :cond_4e
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/c/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5a

    or-int/lit8 v0, v0, 0x1

    :cond_5a
    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/c/a/a;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_64

    or-int/lit8 v0, v0, 0x1

    :cond_64
    return v0
.end method
