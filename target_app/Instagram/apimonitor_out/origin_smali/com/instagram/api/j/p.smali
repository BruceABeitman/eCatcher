.class final Lcom/instagram/api/j/p;
.super Lcom/instagram/common/m/a;
.source "StreamingApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/m/a",
        "<",
        "Lcom/instagram/api/j/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic n:Lcom/instagram/api/j/o;


# direct methods
.method constructor <init>(Lcom/instagram/api/j/o;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-direct {p0, p2}, Lcom/instagram/common/m/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/instagram/api/j/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/common/m/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private u()Lcom/instagram/api/j/q;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/q",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-static {}, Lcom/instagram/api/d/a;->a()V

    new-instance v0, Lcom/instagram/api/j/q;

    invoke-virtual {p0}, Lcom/instagram/api/j/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/api/j/q;-><init>(Landroid/content/Context;)V

    :try_start_d
    iget-object v1, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v1}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/j/g;->f()V
    :try_end_16
    .catch Lcom/instagram/api/j/e; {:try_start_d .. :try_end_16} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_b8

    :goto_16
    :try_start_16
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_b8

    move-result-object v2

    const/4 v1, 0x0

    :try_start_1b
    iget-object v4, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v4}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    iget-object v4, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v4}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/instagram/api/j/g;->a(Lch/boye/httpclientandroidlib/HttpResponse;)V

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    iget-object v2, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v2}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/api/j/g;->g()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_52

    new-instance v2, Lcom/instagram/api/j/m;

    iget-object v5, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v5}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/api/j/g;->g()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/instagram/api/j/m;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    move-object v4, v2

    :cond_52
    sget-object v2, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v5

    :cond_58
    :goto_58
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v6, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v6, :cond_152

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "status"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d6

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/api/j/q;->e(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_76} :catch_77

    goto :goto_58

    :catch_77
    move-exception v0

    :try_start_78
    const-string v2, "StreamingApiRequestLoaderCallbacks"

    const-string v4, "Caught exception performing/parsing streaming request"

    invoke-static {v2, v4, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/instagram/api/j/p;->f()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/facebook/az;->network_error:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/q;->d(Ljava/lang/String;)Lcom/instagram/api/j/q;

    move-result-object v0

    :goto_8d
    if-eqz v1, :cond_96

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/q;->a(Lch/boye/httpclientandroidlib/StatusLine;)V

    :cond_96
    invoke-virtual {v0}, Lcom/instagram/api/j/q;->g()Z

    move-result v1

    if-eqz v1, :cond_163

    invoke-virtual {v0}, Lcom/instagram/api/j/q;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_163

    iget-object v1, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_a4} :catch_b8

    :goto_a4
    invoke-virtual {v0, v3}, Lcom/instagram/api/j/q;->a(Z)V

    return-object v0

    :catch_a8
    move-exception v1

    :try_start_a9
    invoke-virtual {p0}, Lcom/instagram/api/j/p;->f()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/j/q;->d(Ljava/lang/String;)Lcom/instagram/api/j/q;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b6} :catch_b8

    goto/16 :goto_16

    :catch_b8
    move-exception v0

    const-string v1, "StreamingApiRequestLoaderCallbacks"

    const-string v2, "Caught unhandled exception in streaming request"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "StreamingApiRequestLoaderCallbacks"

    const-string v1, "Unexpected networking exception"

    invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/api/j/p;->f()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/q;->d(Ljava/lang/String;)Lcom/instagram/api/j/q;

    move-result-object v0

    goto :goto_a4

    :cond_d6
    :try_start_d6
    const-string v6, "message"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e9

    iget-object v2, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v5}, Lcom/instagram/api/j/o;->a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/api/j/q;->a(Ljava/lang/String;)V

    goto/16 :goto_58

    :cond_e9
    const-string v6, "_messages"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fd

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v5}, Lcom/instagram/api/b/b;->a(Lcom/fasterxml/jackson/a/l;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/api/j/q;->a(Ljava/util/Collection;)V

    goto/16 :goto_58

    :cond_fd
    const-string v6, "checkpoint_url"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_111

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/api/j/q;->f(Ljava/lang/String;)V

    goto/16 :goto_58

    :cond_111
    const-string v6, "lock"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12a

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v2

    if-nez v2, :cond_128

    move v2, v3

    :goto_123
    invoke-virtual {v0, v2}, Lcom/instagram/api/j/q;->b(Z)V

    goto/16 :goto_58

    :cond_128
    const/4 v2, 0x0

    goto :goto_123

    :cond_12a
    iget-object v6, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v6}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v0}, Lcom/instagram/api/j/g;->a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z

    move-result v6

    if-nez v6, :cond_58

    if-eqz v2, :cond_58

    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-eq v6, v7, :cond_144

    sget-object v7, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v6, v7, :cond_149

    :cond_144
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto/16 :goto_58

    :cond_149
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/instagram/api/j/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58

    :cond_152
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    iget-object v2, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v2}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/api/j/g;->a(Lcom/instagram/api/j/q;)V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_161} :catch_77

    goto/16 :goto_8d

    :cond_163
    :try_start_163
    iget-object v1, p0, Lcom/instagram/api/j/p;->n:Lcom/instagram/api/j/o;

    invoke-static {v1}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/j/g;->n()V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_16c} :catch_b8

    goto/16 :goto_a4
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/api/j/j;

    invoke-direct {p0, p1}, Lcom/instagram/api/j/p;->a(Lcom/instagram/api/j/j;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/j/p;->u()Lcom/instagram/api/j/q;

    move-result-object v0

    return-object v0
.end method

.method protected final l()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/common/m/a;->l()V

    return-void
.end method
