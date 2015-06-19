.class public final Landroid/support/v4/c/d;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/c/d;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/support/v4/c/d;->b:Z

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/support/v4/c/d;->j(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/c/d;->c:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    iput v2, p0, Landroid/support/v4/c/d;->e:I

    return-void
.end method

.method private static a([III)I
    .registers 7

    add-int/lit8 v2, p1, 0x0

    const/4 v0, -0x1

    move v1, v0

    move v0, v2

    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    aget v3, p0, v2

    if-ge v3, p2, :cond_14

    move v1, v2

    goto :goto_5

    :cond_14
    move v0, v2

    goto :goto_5

    :cond_16
    add-int/lit8 v1, p1, 0x0

    if-ne v0, v1, :cond_1f

    add-int/lit8 v0, p1, 0x0

    xor-int/lit8 v0, v0, -0x1

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    aget v1, p0, v0

    if-eq v1, p2, :cond_1e

    xor-int/lit8 v0, v0, -0x1

    goto :goto_1e
.end method

.method private c()Landroid/support/v4/c/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/c/d",
            "<TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/d;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d()V
    .registers 9

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/c/d;->e:I

    iget-object v4, p0, Landroid/support/v4/c/d;->c:[I

    iget-object v5, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    :goto_9
    if-ge v1, v3, :cond_1e

    aget-object v6, v5, v1

    sget-object v7, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1b

    if-eq v1, v0, :cond_19

    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    iput-boolean v2, p0, Landroid/support/v4/c/d;->b:Z

    iput v0, p0, Landroid/support/v4/c/d;->e:I

    return-void
.end method

.method private g(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    if-ltz v0, :cond_12

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_13
.end method

.method private h(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    :cond_1b
    return-void
.end method

.method private static i(I)I
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    :cond_10
    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static j(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/c/d;->i(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    :cond_7
    iget v0, p0, Landroid/support/v4/c/d;->e:I

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/c/d;->g(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    if-ltz v0, :cond_10

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    :goto_f
    return-void

    :cond_10
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_27

    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_f

    :cond_27
    iget-boolean v1, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v1, :cond_3f

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    iget-object v2, p0, Landroid/support/v4/c/d;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3f

    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3f
    iget v1, p0, Landroid/support/v4/c/d;->e:I

    iget-object v2, p0, Landroid/support/v4/c/d;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_66

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/c/d;->j(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/c/d;->c:[I

    iget-object v4, p0, Landroid/support/v4/c/d;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/support/v4/c/d;->c:[I

    iput-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    :cond_66
    iget v1, p0, Landroid/support/v4/c/d;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_83

    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    iget-object v2, p0, Landroid/support/v4/c/d;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/c/d;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/c/d;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_83
    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    iget v0, p0, Landroid/support/v4/c/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/d;->e:I

    goto/16 :goto_f
.end method

.method public final b()V
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/c/d;->e:I

    iget-object v3, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_e

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    iput v1, p0, Landroid/support/v4/c/d;->e:I

    iput-boolean v1, p0, Landroid/support/v4/c/d;->b:Z

    return-void
.end method

.method public final b(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/c/d;->h(I)V

    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Landroid/support/v4/c/d;->e:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_13

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V

    :goto_12
    return-void

    :cond_13
    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/support/v4/c/d;->e:I

    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    :cond_21
    iget v0, p0, Landroid/support/v4/c/d;->e:I

    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_46

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v4/c/d;->j(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/c/d;->c:[I

    iget-object v4, p0, Landroid/support/v4/c/d;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/support/v4/c/d;->c:[I

    iput-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    :cond_46
    iget-object v1, p0, Landroid/support/v4/c/d;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/d;->e:I

    goto :goto_12
.end method

.method public final c(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/c/d;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    :cond_11
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/c/d;->c()Landroid/support/v4/c/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)I
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final e(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/c/d;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final f(I)I
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/c/d;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v4/c/d;->d()V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/c/d;->c:[I

    iget v1, p0, Landroid/support/v4/c/d;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/d;->a([III)I

    move-result v0

    return v0
.end method
