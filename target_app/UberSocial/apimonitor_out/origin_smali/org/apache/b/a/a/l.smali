.class Lorg/apache/b/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:I

.field private b:I

.field private final c:Lorg/apache/b/a/a/k;


# direct methods
.method constructor <init>(Lorg/apache/b/a/a/k;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget v0, v0, Lorg/apache/b/a/a/k;->b:I

    iput v0, p0, Lorg/apache/b/a/a/l;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/b/a/a/l;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/b/a/a/l;->a:I

    iget-object v1, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget v1, v1, Lorg/apache/b/a/a/k;->c:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/b/a/a/l;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lorg/apache/b/a/a/l;->a:I

    iput v0, p0, Lorg/apache/b/a/a/l;->b:I

    iget-object v0, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget v1, p0, Lorg/apache/b/a/a/l;->a:I

    invoke-static {v0, v1}, Lorg/apache/b/a/a/k;->a(Lorg/apache/b/a/a/k;I)I

    move-result v0

    iput v0, p0, Lorg/apache/b/a/a/l;->a:I

    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v1, v1, Lorg/apache/b/a/a/k;->a:[B

    iget v2, p0, Lorg/apache/b/a/a/l;->b:I

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public remove()V
    .registers 7

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget v0, p0, Lorg/apache/b/a/a/l;->b:I

    if-ne v0, v5, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lorg/apache/b/a/a/l;->b:I

    iget-object v2, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget v2, v2, Lorg/apache/b/a/a/k;->b:I

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    invoke-virtual {v0}, Lorg/apache/b/a/a/k;->d()B

    iput v5, p0, Lorg/apache/b/a/a/l;->b:I

    :goto_1b
    return-void

    :cond_1c
    iget v0, p0, Lorg/apache/b/a/a/l;->b:I

    add-int/lit8 v0, v0, 0x1

    :goto_20
    iget-object v2, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget v2, v2, Lorg/apache/b/a/a/k;->c:I

    if-eq v0, v2, :cond_4e

    iget-object v2, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v2, v2, Lorg/apache/b/a/a/k;->a:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3d

    iget-object v2, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v2, v2, Lorg/apache/b/a/a/k;->a:[B

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v3, v3, Lorg/apache/b/a/a/k;->a:[B

    aget-byte v3, v3, v1

    aput-byte v3, v2, v0

    move v0, v1

    goto :goto_20

    :cond_3d
    iget-object v2, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v2, v2, Lorg/apache/b/a/a/k;->a:[B

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v4, v4, Lorg/apache/b/a/a/k;->a:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_4e
    iput v5, p0, Lorg/apache/b/a/a/l;->b:I

    iget-object v0, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v2, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v3, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget v3, v3, Lorg/apache/b/a/a/k;->c:I

    invoke-static {v2, v3}, Lorg/apache/b/a/a/k;->b(Lorg/apache/b/a/a/k;I)I

    move-result v2

    iput v2, v0, Lorg/apache/b/a/a/k;->c:I

    iget-object v0, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget-object v0, v0, Lorg/apache/b/a/a/k;->a:[B

    iget-object v2, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget v2, v2, Lorg/apache/b/a/a/k;->c:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/b/a/a/l;->c:Lorg/apache/b/a/a/k;

    iget v1, p0, Lorg/apache/b/a/a/l;->a:I

    invoke-static {v0, v1}, Lorg/apache/b/a/a/k;->b(Lorg/apache/b/a/a/k;I)I

    move-result v0

    iput v0, p0, Lorg/apache/b/a/a/l;->a:I

    goto :goto_1b
.end method
