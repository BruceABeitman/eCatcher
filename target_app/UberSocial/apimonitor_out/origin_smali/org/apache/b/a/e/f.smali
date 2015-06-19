.class public abstract Lorg/apache/b/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/e/e;


# instance fields
.field private a:Lorg/apache/b/a/e/g;

.field private b:Lorg/apache/b/a/e/c;

.field private c:Lorg/apache/b/a/e/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/e/f;->a:Lorg/apache/b/a/e/g;

    iput-object v0, p0, Lorg/apache/b/a/e/f;->b:Lorg/apache/b/a/e/c;

    iput-object v0, p0, Lorg/apache/b/a/e/f;->c:Lorg/apache/b/a/e/f;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/b/a/e/f;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/f;->c:Lorg/apache/b/a/e/f;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->c()Lorg/apache/b/a/e/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/b/a/e/g;->a(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->d()Lorg/apache/b/a/e/c;

    move-result-object v1

    const-string v0, "base64"

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p1}, Lorg/apache/b/a/a/e;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_1e
    invoke-interface {v1, v0, p2}, Lorg/apache/b/a/e/c;->a(Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    if-eq v0, p1, :cond_29

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_29
    return-void

    :cond_2a
    const-string v0, "quoted-printable"

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    instance-of v0, v1, Lorg/apache/b/a/e/b;

    invoke-static {p1, v0}, Lorg/apache/b/a/a/e;->a(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_1e

    :cond_3d
    move-object v0, p1

    goto :goto_1e
.end method

.method public a(Lorg/apache/b/a/e/c;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/e/f;->b:Lorg/apache/b/a/e/c;

    invoke-interface {p1, p0}, Lorg/apache/b/a/e/c;->a(Lorg/apache/b/a/e/f;)V

    return-void
.end method

.method public a(Lorg/apache/b/a/e/f;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/e/f;->c:Lorg/apache/b/a/e/f;

    return-void
.end method

.method public a(Lorg/apache/b/a/e/g;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/e/f;->a:Lorg/apache/b/a/e/g;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/f;->b:Lorg/apache/b/a/e/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/b/a/e/f;->b:Lorg/apache/b/a/e/c;

    invoke-interface {v0}, Lorg/apache/b/a/e/c;->b()V

    :cond_9
    return-void
.end method

.method public c()Lorg/apache/b/a/e/g;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/f;->a:Lorg/apache/b/a/e/g;

    return-object v0
.end method

.method public d()Lorg/apache/b/a/e/c;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/f;->b:Lorg/apache/b/a/e/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->c()Lorg/apache/b/a/e/g;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/e;

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->a()Lorg/apache/b/a/e/f;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->a()Lorg/apache/b/a/e/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/b/a/e/f;->c()Lorg/apache/b/a/e/g;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lorg/apache/b/a/e/g;->a(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v1

    check-cast v1, Lorg/apache/b/a/c/e;

    :goto_22
    invoke-static {v0, v1}, Lorg/apache/b/a/c/e;->a(Lorg/apache/b/a/c/e;Lorg/apache/b/a/c/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public f()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->c()Lorg/apache/b/a/e/g;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/e;

    invoke-static {v0}, Lorg/apache/b/a/c/e;->a(Lorg/apache/b/a/c/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->c()Lorg/apache/b/a/e/g;

    move-result-object v0

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/c;

    invoke-static {v0}, Lorg/apache/b/a/c/c;->a(Lorg/apache/b/a/c/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->c()Lorg/apache/b/a/e/g;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/e;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lorg/apache/b/a/c/e;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lorg/apache/b/a/e/f;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
