.class public Lorg/apache/b/a/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/e/g;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/e/g;->b:Ljava/util/Map;

    new-instance v0, Lorg/apache/b/a/f/j;

    invoke-direct {v0}, Lorg/apache/b/a/f/j;-><init>()V

    new-instance v1, Lorg/apache/b/a/e/h;

    invoke-direct {v1, p0, v0}, Lorg/apache/b/a/e/h;-><init>(Lorg/apache/b/a/e/g;Lorg/apache/b/a/f/j;)V

    invoke-virtual {v0, v1}, Lorg/apache/b/a/f/j;->a(Lorg/apache/b/a/f/c;)V

    invoke-virtual {v0, p1}, Lorg/apache/b/a/f/j;->a(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/apache/b/a/c/k;
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/e/g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/k;

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 7

    const/4 v0, 0x3

    if-ne p2, v0, :cond_69

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/b/a/e/g;->a(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/e;

    if-nez v0, :cond_59

    sget-object v0, Lorg/apache/b/a/g/f;->f:Ljava/nio/charset/Charset;

    :goto_f
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v0, 0x2000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v0, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/k;

    invoke-virtual {v0}, Lorg/apache/b/a/c/k;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_6c

    invoke-static {v0}, Lorg/apache/b/a/g/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6c

    new-instance v1, Lorg/apache/b/a/a;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\' violates RFC 822"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/b/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    invoke-virtual {v0}, Lorg/apache/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_66

    if-eqz v1, :cond_66

    invoke-static {v1}, Lorg/apache/b/a/g/c;->e(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_f

    :cond_66
    sget-object v0, Lorg/apache/b/a/g/f;->e:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_69
    sget-object v0, Lorg/apache/b/a/g/f;->f:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_6c
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_21

    :cond_75
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public a(Lorg/apache/b/a/c/k;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/b/a/e/g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/b/a/c/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lorg/apache/b/a/e/g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/b/a/c/k;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/b/a/e/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_14
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_16
    return-object v0

    :cond_17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_16
.end method

.method public b(Lorg/apache/b/a/c/k;)V
    .registers 8

    const/4 v3, -0x1

    invoke-virtual {p1}, Lorg/apache/b/a/c/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/b/a/e/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_19
    invoke-virtual {p0, p1}, Lorg/apache/b/a/e/g;->a(Lorg/apache/b/a/c/k;)V

    :goto_1c
    return-void

    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v3

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/k;

    invoke-virtual {v0}, Lorg/apache/b/a/c/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/b/a/c/k;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    if-ne v2, v3, :cond_4c

    move v2, v1

    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    :cond_50
    iget-object v0, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1c
.end method

.method public c(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/b/a/e/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    iget-object v1, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/b/a/c/k;

    invoke-virtual {v1}, Lorg/apache/b/a/c/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    :cond_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/apache/b/a/g/b;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/b/a/g/b;-><init>(I)V

    iget-object v1, p0, Lorg/apache/b/a/e/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V

    goto :goto_d

    :cond_24
    invoke-virtual {v0}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
