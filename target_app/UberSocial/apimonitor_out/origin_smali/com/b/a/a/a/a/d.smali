.class public Lcom/b/a/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a/c;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/a/d;->a:Lcom/b/a/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a/a/d;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/a/a/d;->b(II)I

    move-result v0

    return v0
.end method

.method private b(II)I
    .registers 5

    const/16 v0, 0x80

    if-le p1, v0, :cond_10

    rsub-int v0, p2, 0xff

    mul-int/lit8 v0, v0, 0x2

    rsub-int v1, p1, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    :goto_f
    return v0

    :cond_10
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0xff

    goto :goto_f
.end method


# virtual methods
.method public a(II)I
    .registers 5

    const/16 v0, 0x80

    if-le p1, v0, :cond_10

    rsub-int v0, p1, 0xff

    add-int/lit8 v1, p2, -0x80

    rsub-int v1, v1, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    :goto_f
    return v0

    :cond_10
    add-int/lit16 v0, p2, 0x80

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    goto :goto_f
.end method

.method public a(Lcom/b/a/a/a/a/c;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/d$1;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/d$1;-><init>(Lcom/b/a/a/a/a/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/d;->a(Lcom/b/a/a/a/a/c;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public a(Lcom/b/a/a/a/a/c;Lcom/b/a/a/a/a/a;)V
    .registers 15

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/b/a/a/a/a/c;->d()[I

    move-result-object v3

    iget-object v0, p0, Lcom/b/a/a/a/a/d;->a:Lcom/b/a/a/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/a/a/c;->a(Lcom/b/a/a/a/a/c;)[I

    move-result-object v4

    move v0, v1

    :goto_c
    iget-object v2, p0, Lcom/b/a/a/a/a/d;->a:Lcom/b/a/a/a/a/c;

    invoke-static {v2}, Lcom/b/a/a/a/a/c;->b(Lcom/b/a/a/a/a/c;)I

    move-result v2

    if-ge v0, v2, :cond_8b

    move v2, v1

    :goto_15
    iget-object v5, p0, Lcom/b/a/a/a/a/d;->a:Lcom/b/a/a/a/a/c;

    invoke-static {v5}, Lcom/b/a/a/a/a/c;->c(Lcom/b/a/a/a/a/c;)I

    move-result v5

    if-ge v2, v5, :cond_88

    iget-object v5, p0, Lcom/b/a/a/a/a/d;->a:Lcom/b/a/a/a/a/c;

    invoke-static {v5}, Lcom/b/a/a/a/a/c;->c(Lcom/b/a/a/a/a/c;)I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    new-instance v6, Lcom/b/a/a/a/a/m;

    aget v7, v3, v5

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    aget v8, v3, v8

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x2

    aget v9, v3, v9

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x3

    aget v10, v3, v10

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/b/a/a/a/a/m;-><init>(IIII)V

    new-instance v7, Lcom/b/a/a/a/a/m;

    aget v8, v4, v5

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    aget v9, v4, v9

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v10, v4, v10

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    add-int/lit8 v11, v5, 0x3

    aget v11, v4, v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/b/a/a/a/a/m;-><init>(IIII)V

    invoke-virtual {p2, v6, v7}, Lcom/b/a/a/a/a/a;->a(Lcom/b/a/a/a/a/m;Lcom/b/a/a/a/a/m;)Lcom/b/a/a/a/a/m;

    move-result-object v6

    iget v7, v6, Lcom/b/a/a/a/a/m;->a:I

    aput v7, v4, v5

    add-int/lit8 v7, v5, 0x1

    iget v8, v6, Lcom/b/a/a/a/a/m;->b:I

    aput v8, v4, v7

    add-int/lit8 v7, v5, 0x2

    iget v8, v6, Lcom/b/a/a/a/a/m;->c:I

    aput v8, v4, v7

    add-int/lit8 v5, v5, 0x3

    iget v6, v6, Lcom/b/a/a/a/a/m;->d:I

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_8b
    return-void
.end method

.method public b(Lcom/b/a/a/a/a/c;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/d$2;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/d$2;-><init>(Lcom/b/a/a/a/a/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/d;->a(Lcom/b/a/a/a/a/c;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public c(Lcom/b/a/a/a/a/c;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/d$3;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/d$3;-><init>(Lcom/b/a/a/a/a/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/d;->a(Lcom/b/a/a/a/a/c;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public d(Lcom/b/a/a/a/a/c;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/d$4;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/d$4;-><init>(Lcom/b/a/a/a/a/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/d;->a(Lcom/b/a/a/a/a/c;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public e(Lcom/b/a/a/a/a/c;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/d$5;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/d$5;-><init>(Lcom/b/a/a/a/a/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/d;->a(Lcom/b/a/a/a/a/c;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public f(Lcom/b/a/a/a/a/c;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/d$6;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/d$6;-><init>(Lcom/b/a/a/a/a/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/d;->a(Lcom/b/a/a/a/a/c;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public g(Lcom/b/a/a/a/a/c;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/d$7;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/d$7;-><init>(Lcom/b/a/a/a/a/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/d;->a(Lcom/b/a/a/a/a/c;Lcom/b/a/a/a/a/a;)V

    return-void
.end method
