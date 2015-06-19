.class public Lcom/instagram/api/k/a/k;
.super Ljava/lang/Object;
.source "IgStreamResponseParser.java"

# interfaces
.implements Lcom/instagram/common/a/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/instagram/common/a/a/p",
        "<",
        "Lcom/instagram/api/k/a/i",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/api/k/a/j;Lcom/fasterxml/jackson/a/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/j",
            "<TT;>;",
            "Lcom/fasterxml/jackson/a/l;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_44

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    :goto_d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_40

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_d

    :goto_2c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_d

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_3c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_d

    :cond_40
    invoke-virtual {p0, v0}, Lcom/instagram/api/k/a/j;->b(Ljava/util/List;)V

    :goto_43
    return-void

    :cond_44
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/api/k/a/j;->d(Ljava/lang/String;)V

    goto :goto_43
.end method

.method private b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/k/a/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")",
            "Lcom/instagram/api/k/a/i",
            "<TT;>;"
        }
    .end annotation

    new-instance v2, Lcom/instagram/api/k/a/j;

    invoke-direct {v2}, Lcom/instagram/api/k/a/j;-><init>()V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/instagram/api/k/a/j;->a(I)V

    const/4 v1, 0x0

    :try_start_11
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    sget-object v3, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v3, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v3, :cond_b1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "status"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/api/k/a/j;->c(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_3e

    goto :goto_1f

    :catchall_3e
    move-exception v0

    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_43
    :try_start_43
    const-string v3, "message"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v2, v1}, Lcom/instagram/api/k/a/k;->a(Lcom/instagram/api/k/a/j;Lcom/fasterxml/jackson/a/l;)V

    goto :goto_1f

    :cond_52
    const-string v3, "_messages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v1}, Lcom/instagram/api/b/b;->a(Lcom/fasterxml/jackson/a/l;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/api/k/a/j;->a(Ljava/util/List;)V

    goto :goto_1f

    :cond_65
    const-string v3, "checkpoint_url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/api/k/a/j;->b(Ljava/lang/String;)V

    goto :goto_1f

    :cond_78
    const-string v3, "lock"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v0

    if-nez v0, :cond_8e

    const/4 v0, 0x1

    :goto_8a
    invoke-virtual {v2, v0}, Lcom/instagram/api/k/a/j;->a(Z)V

    goto :goto_1f

    :cond_8e
    const/4 v0, 0x0

    goto :goto_8a

    :cond_90
    const-string v3, "error_title"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/api/k/a/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_a4
    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1}, Lcom/instagram/api/k/a/k;->a(Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto/16 :goto_1f

    :cond_b1
    invoke-virtual {p0}, Lcom/instagram/api/k/a/k;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/api/k/a/j;->a(Ljava/lang/Object;)V
    :try_end_b8
    .catchall {:try_start_43 .. :try_end_b8} :catchall_3e

    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/api/k/a/k;->b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/k/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/fasterxml/jackson/a/l;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
