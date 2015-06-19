.class final Lcom/google/zxing/g/a/a;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field final a:Lcom/google/zxing/b/b;

.field private b:Lcom/google/zxing/g/a/q;

.field private c:Lcom/google/zxing/g/a/o;


# direct methods
.method constructor <init>(Lcom/google/zxing/b/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/zxing/b/b;->b:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    :cond_e
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0

    :cond_13
    iput-object p1, p0, Lcom/google/zxing/g/a/a;->a:Lcom/google/zxing/b/b;

    return-void
.end method

.method private a(III)I
    .registers 5

    iget-object v0, p0, Lcom/google/zxing/g/a/a;->a:Lcom/google/zxing/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_d

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    shl-int/lit8 v0, p3, 0x1

    goto :goto_c
.end method


# virtual methods
.method final a()Lcom/google/zxing/g/a/o;
    .registers 7

    const/4 v4, 0x7

    const/4 v1, 0x0

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/google/zxing/g/a/a;->c:Lcom/google/zxing/g/a/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/zxing/g/a/a;->c:Lcom/google/zxing/g/a/o;

    :goto_a
    return-object v0

    :cond_b
    move v0, v1

    move v2, v1

    :goto_d
    const/4 v3, 0x6

    if-ge v0, v3, :cond_17

    invoke-direct {p0, v0, v5, v2}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    invoke-direct {p0, v4, v5, v2}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v0

    invoke-direct {p0, v5, v5, v0}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v0

    invoke-direct {p0, v5, v4, v0}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v2

    const/4 v0, 0x5

    :goto_24
    if-ltz v0, :cond_2d

    invoke-direct {p0, v5, v0, v2}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_2d
    iget-object v0, p0, Lcom/google/zxing/g/a/a;->a:Lcom/google/zxing/b/b;

    iget v3, v0, Lcom/google/zxing/b/b;->b:I

    add-int/lit8 v4, v3, -0x7

    add-int/lit8 v0, v3, -0x1

    :goto_35
    if-lt v0, v4, :cond_3e

    invoke-direct {p0, v5, v0, v1}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    :cond_3e
    add-int/lit8 v0, v3, -0x8

    :goto_40
    if-ge v0, v3, :cond_49

    invoke-direct {p0, v0, v5, v1}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_49
    invoke-static {v2, v1}, Lcom/google/zxing/g/a/o;->b(II)Lcom/google/zxing/g/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/g/a/a;->c:Lcom/google/zxing/g/a/o;

    iget-object v0, p0, Lcom/google/zxing/g/a/a;->c:Lcom/google/zxing/g/a/o;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/google/zxing/g/a/a;->c:Lcom/google/zxing/g/a/o;

    goto :goto_a

    :cond_56
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0
.end method

.method final b()Lcom/google/zxing/g/a/q;
    .registers 8

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/g/a/a;->b:Lcom/google/zxing/g/a/q;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/zxing/g/a/a;->b:Lcom/google/zxing/g/a/q;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/zxing/g/a/a;->a:Lcom/google/zxing/b/b;

    iget v5, v0, Lcom/google/zxing/b/b;->b:I

    add-int/lit8 v0, v5, -0x11

    shr-int/lit8 v0, v0, 0x2

    const/4 v3, 0x6

    if-gt v0, v3, :cond_19

    invoke-static {v0}, Lcom/google/zxing/g/a/q;->b(I)Lcom/google/zxing/g/a/q;

    move-result-object v0

    goto :goto_8

    :cond_19
    add-int/lit8 v6, v5, -0xb

    move v4, v1

    move v3, v2

    :goto_1d
    if-ltz v4, :cond_2e

    add-int/lit8 v0, v5, -0x9

    :goto_21
    if-lt v0, v6, :cond_2a

    invoke-direct {p0, v0, v4, v3}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_2a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1d

    :cond_2e
    invoke-static {v3}, Lcom/google/zxing/g/a/q;->c(I)Lcom/google/zxing/g/a/q;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/google/zxing/g/a/q;->a()I

    move-result v3

    if-ne v3, v5, :cond_3d

    iput-object v0, p0, Lcom/google/zxing/g/a/a;->b:Lcom/google/zxing/g/a/q;

    goto :goto_8

    :cond_3d
    move v0, v1

    move v1, v2

    :goto_3f
    if-ltz v0, :cond_51

    add-int/lit8 v2, v5, -0x9

    :goto_43
    if-lt v2, v6, :cond_4e

    invoke-direct {p0, v0, v2, v1}, Lcom/google/zxing/g/a/a;->a(III)I

    move-result v3

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v3

    goto :goto_43

    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    :cond_51
    invoke-static {v1}, Lcom/google/zxing/g/a/q;->c(I)Lcom/google/zxing/g/a/q;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/google/zxing/g/a/q;->a()I

    move-result v1

    if-ne v1, v5, :cond_60

    iput-object v0, p0, Lcom/google/zxing/g/a/a;->b:Lcom/google/zxing/g/a/q;

    goto :goto_8

    :cond_60
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0
.end method
