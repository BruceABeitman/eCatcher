.class public Lcom/b/a/a/a/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a/n;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/a/n;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a/a/o;II)F
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/a/a/o;->b(II)F

    move-result v0

    return v0
.end method

.method private b(II)F
    .registers 6

    const/high16 v2, 0x437f

    const/16 v0, 0x80

    if-le p1, v0, :cond_14

    const/high16 v0, 0x4000

    rsub-int v1, p2, 0xff

    int-to-float v1, v1

    mul-float/2addr v0, v1

    rsub-int v1, p1, 0xff

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    sub-float v0, v2, v0

    :goto_13
    return v0

    :cond_14
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_13
.end method


# virtual methods
.method public a(II)F
    .registers 6

    const/high16 v2, 0x437f

    const/16 v0, 0x80

    if-le p1, v0, :cond_12

    rsub-int v0, p1, 0xff

    add-int/lit8 v1, p2, -0x80

    rsub-int v1, v1, 0xff

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float v0, v2, v0

    :goto_11
    return v0

    :cond_12
    add-int/lit16 v0, p2, 0x80

    mul-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_11
.end method

.method public a(Lcom/b/a/a/a/a/n;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/o$1;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/o$1;-><init>(Lcom/b/a/a/a/a/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public a(Lcom/b/a/a/a/a/n;Lcom/b/a/a/a/a/a;)V
    .registers 14

    invoke-static {p1}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;)[I

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;

    invoke-static {v0}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;)[I

    move-result-object v2

    iget-object v0, p0, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;

    invoke-static {v0}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I

    move-result v0

    iget-object v3, p0, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;

    invoke-static {v3}, Lcom/b/a/a/a/a/n;->c(Lcom/b/a/a/a/a/n;)I

    move-result v3

    mul-int/2addr v3, v0

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v3, :cond_5f

    mul-int/lit8 v4, v0, 0x4

    new-instance v5, Lcom/b/a/a/a/a/m;

    aget v6, v1, v4

    add-int/lit8 v7, v4, 0x1

    aget v7, v1, v7

    add-int/lit8 v8, v4, 0x2

    aget v8, v1, v8

    add-int/lit8 v9, v4, 0x3

    aget v9, v1, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/b/a/a/a/a/m;-><init>(IIII)V

    new-instance v6, Lcom/b/a/a/a/a/m;

    aget v7, v2, v4

    add-int/lit8 v8, v4, 0x1

    aget v8, v2, v8

    add-int/lit8 v9, v4, 0x2

    aget v9, v2, v9

    add-int/lit8 v10, v4, 0x3

    aget v10, v2, v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/b/a/a/a/a/m;-><init>(IIII)V

    invoke-virtual {p2, v5, v6}, Lcom/b/a/a/a/a/a;->a(Lcom/b/a/a/a/a/m;Lcom/b/a/a/a/a/m;)Lcom/b/a/a/a/a/m;

    move-result-object v5

    iget v6, v5, Lcom/b/a/a/a/a/m;->a:I

    aput v6, v2, v4

    add-int/lit8 v6, v4, 0x1

    iget v7, v5, Lcom/b/a/a/a/a/m;->b:I

    aput v7, v2, v6

    add-int/lit8 v6, v4, 0x2

    iget v7, v5, Lcom/b/a/a/a/a/m;->c:I

    aput v7, v2, v6

    add-int/lit8 v4, v4, 0x3

    iget v5, v5, Lcom/b/a/a/a/a/m;->d:I

    aput v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_5f
    return-void
.end method

.method public b(Lcom/b/a/a/a/a/n;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/o$2;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/o$2;-><init>(Lcom/b/a/a/a/a/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public c(Lcom/b/a/a/a/a/n;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/o$3;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/o$3;-><init>(Lcom/b/a/a/a/a/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public d(Lcom/b/a/a/a/a/n;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/o$4;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/o$4;-><init>(Lcom/b/a/a/a/a/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public e(Lcom/b/a/a/a/a/n;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/o$5;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/o$5;-><init>(Lcom/b/a/a/a/a/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public f(Lcom/b/a/a/a/a/n;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/o$6;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/o$6;-><init>(Lcom/b/a/a/a/a/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;Lcom/b/a/a/a/a/a;)V

    return-void
.end method

.method public g(Lcom/b/a/a/a/a/n;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/a/o$7;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/o$7;-><init>(Lcom/b/a/a/a/a/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;Lcom/b/a/a/a/a/a;)V

    return-void
.end method
