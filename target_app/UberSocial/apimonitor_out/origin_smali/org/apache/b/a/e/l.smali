.class public abstract Lorg/apache/b/a/e/l;
.super Lorg/apache/b/a/f/a;
.source "SourceFile"


# instance fields
.field private a:Lorg/apache/b/a/e/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/b/a/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/e/l;->a:Lorg/apache/b/a/e/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/b/a/e/l;->a:Lorg/apache/b/a/e/g;

    invoke-virtual {p0, v0}, Lorg/apache/b/a/e/l;->a(Lorg/apache/b/a/e/g;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/e/l;->a:Lorg/apache/b/a/e/g;

    invoke-static {p1}, Lorg/apache/b/a/c/k;->d(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Lorg/apache/b/a/c/k;)V

    return-void
.end method

.method public final a(Lorg/apache/b/a/b/a;Ljava/io/InputStream;)V
    .registers 4

    invoke-interface {p1}, Lorg/apache/b/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/b/a/g/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lorg/apache/b/a/a/b;

    invoke-direct {v0, p2}, Lorg/apache/b/a/a/b;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/b/a/e/l;->b(Lorg/apache/b/a/b/a;Ljava/io/InputStream;)V

    :goto_12
    return-void

    :cond_13
    invoke-interface {p1}, Lorg/apache/b/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/b/a/g/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lorg/apache/b/a/a/i;

    invoke-direct {v0, p2}, Lorg/apache/b/a/a/i;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/b/a/e/l;->b(Lorg/apache/b/a/b/a;Ljava/io/InputStream;)V

    goto :goto_12

    :cond_26
    invoke-virtual {p0, p1, p2}, Lorg/apache/b/a/e/l;->b(Lorg/apache/b/a/b/a;Ljava/io/InputStream;)V

    goto :goto_12
.end method

.method public abstract a(Lorg/apache/b/a/e/g;)V
.end method

.method public abstract b(Lorg/apache/b/a/b/a;Ljava/io/InputStream;)V
.end method

.method public final d()V
    .registers 2

    new-instance v0, Lorg/apache/b/a/e/g;

    invoke-direct {v0}, Lorg/apache/b/a/e/g;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/e/l;->a:Lorg/apache/b/a/e/g;

    return-void
.end method
