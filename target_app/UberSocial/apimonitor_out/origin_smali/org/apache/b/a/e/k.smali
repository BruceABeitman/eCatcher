.class public Lorg/apache/b/a/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/e/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Lorg/apache/b/a/e/f;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/b/a/e/k;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/b/a/e/k;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/e/k;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/b/a/e/k;->d:Lorg/apache/b/a/e/f;

    iput-object p1, p0, Lorg/apache/b/a/e/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/b/a/e/f;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/k;->d:Lorg/apache/b/a/e/f;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 8

    invoke-virtual {p0}, Lorg/apache/b/a/e/k;->a()Lorg/apache/b/a/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/b/a/e/f;->c()Lorg/apache/b/a/e/g;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/e;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/apache/b/a/c/e;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    :cond_18
    new-instance v0, Lorg/apache/b/a/a;

    const-string v1, "Multipart boundary not specified"

    invoke-direct {v0, v1}, Lorg/apache/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-virtual {v0}, Lorg/apache/b/a/c/e;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_80

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lorg/apache/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Lorg/apache/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/b/a/g/c;->e(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_37
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v0, 0x2000

    invoke-direct {v3, v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {p0}, Lorg/apache/b/a/e/k;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/b/a/e/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_83

    const-string v0, "--"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/e/d;

    invoke-virtual {v0, p1, p2}, Lorg/apache/b/a/e/d;->a(Ljava/io/OutputStream;I)V

    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    :cond_7d
    sget-object v0, Lorg/apache/b/a/g/f;->e:Ljava/nio/charset/Charset;

    goto :goto_37

    :cond_80
    sget-object v0, Lorg/apache/b/a/g/f;->f:Ljava/nio/charset/Charset;

    goto :goto_37

    :cond_83
    const-string v0, "--"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "--"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/b/a/e/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/e/k;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lorg/apache/b/a/e/k;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/e/d;

    iget-object v2, p0, Lorg/apache/b/a/e/k;->d:Lorg/apache/b/a/e/f;

    invoke-virtual {v0, v2}, Lorg/apache/b/a/e/d;->a(Lorg/apache/b/a/e/f;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public a(Lorg/apache/b/a/e/d;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/e/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/b/a/e/k;->d:Lorg/apache/b/a/e/f;

    invoke-virtual {p1, v0}, Lorg/apache/b/a/e/d;->a(Lorg/apache/b/a/e/f;)V

    return-void
.end method

.method public a(Lorg/apache/b/a/e/f;)V
    .registers 4

    iput-object p1, p0, Lorg/apache/b/a/e/k;->d:Lorg/apache/b/a/e/f;

    iget-object v0, p0, Lorg/apache/b/a/e/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/e/d;

    invoke-virtual {v0, p1}, Lorg/apache/b/a/e/d;->a(Lorg/apache/b/a/e/f;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/e/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/e/d;

    invoke-virtual {v0}, Lorg/apache/b/a/e/d;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/e/k;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/e/k;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/k;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/k;->a:Ljava/lang/String;

    return-object v0
.end method
