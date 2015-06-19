.class final Lcom/squareup/okhttp/internal/spdy/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lcom/squareup/okhttp/internal/spdy/d;

.field b:I

.field c:I

.field d:Lcom/squareup/okhttp/internal/a;

.field e:Lcom/squareup/okhttp/internal/a;

.field f:I

.field private final g:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/squareup/okhttp/internal/a/c;

.field private j:I


# direct methods
.method constructor <init>(ZLcom/squareup/okhttp/internal/a/p;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/d;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    new-instance v0, Lcom/squareup/okhttp/internal/b;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/b;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    new-instance v0, Lcom/squareup/okhttp/internal/b;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/b;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    if-eqz p1, :cond_3b

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->b:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    :goto_2e
    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->j:I

    invoke-static {p2}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->i:Lcom/squareup/okhttp/internal/a/c;

    return-void

    :cond_3b
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->a:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    goto :goto_2e
.end method

.method private a(II)I
    .registers 6

    and-int v0, p1, p2

    if-ge v0, p2, :cond_5

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->f()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_15

    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x7

    goto :goto_6

    :cond_15
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    goto :goto_4
.end method

.method private a(Z)Lcom/squareup/okhttp/internal/a/d;
    .registers 7

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->f()I

    move-result v1

    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_2f

    const/4 v0, 0x1

    :goto_b
    const/16 v2, 0x7f

    invoke-direct {p0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->i:Lcom/squareup/okhttp/internal/a/c;

    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/internal/a/c;->c(J)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v1

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/d;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a([B)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    :goto_28
    if-eqz p1, :cond_2e

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->d()Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    :cond_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_b

    :cond_31
    move-object v0, v1

    goto :goto_28
.end method

.method private a(Lcom/squareup/okhttp/internal/spdy/d;)V
    .registers 8

    iget v1, p1, Lcom/squareup/okhttp/internal/spdy/d;->j:I

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->j:I

    if-le v1, v0, :cond_f

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->d()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->j:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->b(I)I

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v2, v2

    if-le v0, v2, :cond_66

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v4, v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v5, v5

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    const/16 v3, 0x40

    if-ne v0, v3, :cond_4d

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    check-cast v0, Lcom/squareup/okhttp/internal/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/b;->b()Lcom/squareup/okhttp/internal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    check-cast v0, Lcom/squareup/okhttp/internal/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/b;->b()Lcom/squareup/okhttp/internal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    :cond_4d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v3, v3

    invoke-interface {v0, v3}, Lcom/squareup/okhttp/internal/a;->d(I)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v3, v3

    invoke-interface {v0, v3}, Lcom/squareup/okhttp/internal/a;->d(I)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    :cond_66
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/a;->a(I)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    aput-object p1, v2, v0

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    goto :goto_e
.end method

.method private b(I)I
    .registers 8

    const/4 v1, 0x0

    if-lez p1, :cond_4c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    if-lt v0, v2, :cond_2b

    if-lez p1, :cond_2b

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/d;->j:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/squareup/okhttp/internal/spdy/d;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a;->d(I)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a;->d(I)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    :cond_4c
    return v1
.end method

.method private c(I)I
    .registers 3

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private d(I)Lcom/squareup/okhttp/internal/a/d;
    .registers 4

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/f;->e(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/e;->a()[Lcom/squareup/okhttp/internal/spdy/d;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/f;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    goto :goto_12
.end method

.method private d()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->e()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a;->a()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a;->a()V

    return-void
.end method

.method private e(I)Z
    .registers 3

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private f()I
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->i:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method final a()V
    .registers 10

    const/16 v8, 0x80

    const/16 v7, 0x40

    const/16 v6, 0x3f

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->i:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_e3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->i:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v8, :cond_1e

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->e()V

    goto :goto_8

    :cond_1e
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v8, :cond_67

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->e(I)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/e;->a()[Lcom/squareup/okhttp/internal/spdy/d;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->j:I

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_43
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->a(Lcom/squareup/okhttp/internal/spdy/d;)V

    goto :goto_8

    :cond_47
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a;->a(I)V

    :cond_61
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a;->b(I)V

    goto :goto_8

    :cond_67
    if-ne v0, v7, :cond_7c

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/spdy/f;->a(Z)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/spdy/f;->a(Z)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Lcom/squareup/okhttp/internal/a/d;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7c
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v7, :cond_9a

    invoke-direct {p0, v0, v6}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->d(I)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/spdy/f;->a(Z)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Lcom/squareup/okhttp/internal/a/d;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_9a
    if-nez v0, :cond_ae

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/spdy/f;->a(Z)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/spdy/f;->a(Z)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Lcom/squareup/okhttp/internal/a/d;)V

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/f;->a(Lcom/squareup/okhttp/internal/spdy/d;)V

    goto/16 :goto_8

    :cond_ae
    and-int/lit16 v1, v0, 0xc0

    if-nez v1, :cond_ca

    invoke-direct {p0, v0, v6}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->d(I)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/spdy/f;->a(Z)Lcom/squareup/okhttp/internal/a/d;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Lcom/squareup/okhttp/internal/a/d;)V

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/f;->a(Lcom/squareup/okhttp/internal/spdy/d;)V

    goto/16 :goto_8

    :cond_ca
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unhandled byte: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_e3
    return-void
.end method

.method final a(I)V
    .registers 4

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/f;->j:I

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->j:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    if-ge v0, v1, :cond_f

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->j:I

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->d()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->j:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->b(I)I

    goto :goto_f
.end method

.method final b()V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:I

    if-eq v0, v1, :cond_25

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:[Lcom/squareup/okhttp/internal/spdy/d;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_25
    return-void
.end method

.method final c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:Lcom/squareup/okhttp/internal/a;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a;->a()V

    return-object v0
.end method
