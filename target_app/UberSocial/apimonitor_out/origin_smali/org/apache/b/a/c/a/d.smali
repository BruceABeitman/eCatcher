.class Lorg/apache/b/a/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lorg/apache/b/a/c/a/a/y;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lorg/apache/b/a/c/a/a/y;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/b/a/c/a/d;->a:Lorg/apache/b/a/c/a/a/y;

    invoke-virtual {p1}, Lorg/apache/b/a/c/a/a/y;->d()I

    move-result v0

    iput v0, p0, Lorg/apache/b/a/c/a/d;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/b/a/c/a/d;->b:I

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/b/a/c/a/a/v;
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/c/a/d;->a:Lorg/apache/b/a/c/a/a/y;

    iget v1, p0, Lorg/apache/b/a/c/a/d;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/b/a/c/a/d;->b:I

    invoke-virtual {v0, v1}, Lorg/apache/b/a/c/a/a/y;->a(I)Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/b/a/c/a/d;->b:I

    iget v1, p0, Lorg/apache/b/a/c/a/d;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/b/a/c/a/d;->a()Lorg/apache/b/a/c/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
