.class final Lcom/millennialmedia/a/a/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/millennialmedia/a/a/b/p;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/millennialmedia/a/a/b/p;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    if-eqz v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    return-object v0
.end method

.method a(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    iput v1, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    iput v1, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    return-void
.end method

.method a(Lcom/millennialmedia/a/a/b/p;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    iput v6, p1, Lcom/millennialmedia/a/a/b/p;->i:I

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    if-lez v0, :cond_27

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_27

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    :cond_27
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    if-lez v0, :cond_4f

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->b:I

    iget v0, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    :cond_4f
    const/4 v0, 0x4

    :goto_50
    iget v1, p0, Lcom/millennialmedia/a/a/b/k;->d:I

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_99

    iget v1, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    if-nez v1, :cond_7a

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    iget-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iget-object v3, v2, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iget-object v4, v3, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v4, v2, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v2, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v3, v2, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    iput-object v1, v2, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    iget v4, v1, Lcom/millennialmedia/a/a/b/p;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/millennialmedia/a/a/b/p;->i:I

    iput-object v2, v3, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    :cond_77
    :goto_77
    mul-int/lit8 v0, v0, 0x2

    goto :goto_50

    :cond_7a
    iget v1, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    if-ne v1, v6, :cond_91

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    iget-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v2, p0, Lcom/millennialmedia/a/a/b/k;->a:Lcom/millennialmedia/a/a/b/p;

    iput-object v1, v2, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    iget v3, v1, Lcom/millennialmedia/a/a/b/p;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/millennialmedia/a/a/b/p;->i:I

    iput-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    iput v5, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    goto :goto_77

    :cond_91
    iget v1, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_77

    iput v5, p0, Lcom/millennialmedia/a/a/b/k;->c:I

    goto :goto_77

    :cond_99
    return-void
.end method
