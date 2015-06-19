.class public Lorg/apache/b/a/e/i;
.super Lorg/apache/b/a/e/f;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/e/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/b/a/e/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/b/a/e/i;-><init>(Ljava/io/InputStream;Lorg/apache/b/a/f/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/b/a/f/h;)V
    .registers 5

    invoke-direct {p0}, Lorg/apache/b/a/e/f;-><init>()V

    new-instance v0, Lorg/apache/b/a/f/j;

    invoke-direct {v0, p2}, Lorg/apache/b/a/f/j;-><init>(Lorg/apache/b/a/f/h;)V

    new-instance v1, Lorg/apache/b/a/e/j;

    invoke-direct {v1, p0}, Lorg/apache/b/a/e/j;-><init>(Lorg/apache/b/a/e/f;)V

    invoke-virtual {v0, v1}, Lorg/apache/b/a/f/j;->a(Lorg/apache/b/a/f/c;)V

    invoke-virtual {v0, p1}, Lorg/apache/b/a/f/j;->a(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public i()Lorg/apache/b/a/c/q;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/b/a/e/i;->c()Lorg/apache/b/a/e/g;

    move-result-object v0

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/q;

    return-object v0
.end method
