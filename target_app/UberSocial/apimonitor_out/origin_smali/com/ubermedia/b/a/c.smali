.class Lcom/ubermedia/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/ubermedia/b/a/a;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/ubermedia/b/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    invoke-static {v0}, Lcom/ubermedia/b/a/a;->b(Lcom/ubermedia/b/a/a;)I

    move-result v0

    iput v0, p0, Lcom/ubermedia/b/a/c;->b:I

    iget-object v0, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    invoke-static {v0}, Lcom/ubermedia/b/a/a;->a(Lcom/ubermedia/b/a/a;)I

    move-result v0

    iput v0, p0, Lcom/ubermedia/b/a/c;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubermedia/b/a/c;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubermedia/b/a/a;Lcom/ubermedia/b/a/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/b/a/c;-><init>(Lcom/ubermedia/b/a/a;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/ubermedia/b/a/c;->b:I

    iget v1, p0, Lcom/ubermedia/b/a/c;->c:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/ubermedia/b/a/c;->b:I

    iget v1, p0, Lcom/ubermedia/b/a/c;->c:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lcom/ubermedia/b/a/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    invoke-static {v1}, Lcom/ubermedia/b/a/a;->c(Lcom/ubermedia/b/a/a;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ubermedia/b/a/c;->b:I

    iget-object v0, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    invoke-static {v0}, Lcom/ubermedia/b/a/a;->c(Lcom/ubermedia/b/a/a;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/ubermedia/b/a/c;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    invoke-static {v1}, Lcom/ubermedia/b/a/a;->a(Lcom/ubermedia/b/a/a;)I

    move-result v1

    iget v2, p0, Lcom/ubermedia/b/a/c;->c:I

    if-ne v1, v2, :cond_32

    if-nez v0, :cond_38

    :cond_32
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_38
    iget v1, p0, Lcom/ubermedia/b/a/c;->b:I

    iput v1, p0, Lcom/ubermedia/b/a/c;->d:I

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget v0, p0, Lcom/ubermedia/b/a/c;->d:I

    if-gez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    iget v1, p0, Lcom/ubermedia/b/a/c;->d:I

    invoke-static {v0, v1}, Lcom/ubermedia/b/a/a;->a(Lcom/ubermedia/b/a/a;I)Z

    move-result v0

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/ubermedia/b/a/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    invoke-static {v1}, Lcom/ubermedia/b/a/a;->c(Lcom/ubermedia/b/a/a;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ubermedia/b/a/c;->b:I

    iget-object v0, p0, Lcom/ubermedia/b/a/c;->a:Lcom/ubermedia/b/a/a;

    invoke-static {v0}, Lcom/ubermedia/b/a/a;->a(Lcom/ubermedia/b/a/a;)I

    move-result v0

    iput v0, p0, Lcom/ubermedia/b/a/c;->c:I

    :cond_2c
    const/4 v0, -0x1

    iput v0, p0, Lcom/ubermedia/b/a/c;->d:I

    return-void
.end method
