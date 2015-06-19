.class public final Lcom/instagram/api/k/a/g;
.super Ljava/lang/Object;
.source "IgAutogenResponse__JsonHelper.java"


# direct methods
.method public static final a(Lcom/instagram/api/k/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "status"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_16

    :goto_12
    iput-object v0, p0, Lcom/instagram/api/k/a/e;->k:Ljava/lang/String;

    move v0, v1

    :goto_15
    return v0

    :cond_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_1b
    const-string v2, "_messages"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_42

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_30
    :goto_30
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_42

    invoke-static {p2}, Lcom/instagram/api/b/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/b/b;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_42
    iput-object v0, p0, Lcom/instagram/api/k/a/e;->f:Ljava/util/List;

    move v0, v1

    goto :goto_15

    :cond_46
    const-string v2, "error_title"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_5a

    :goto_56
    iput-object v0, p0, Lcom/instagram/api/k/a/e;->i:Ljava/lang/String;

    move v0, v1

    goto :goto_15

    :cond_5a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    :cond_5f
    const-string v2, "lock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/api/k/a/e;->l:Z

    move v0, v1

    goto :goto_15

    :cond_6f
    const-string v2, "checkpoint_url"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_83

    :goto_7f
    iput-object v0, p0, Lcom/instagram/api/k/a/e;->j:Ljava/lang/String;

    move v0, v1

    goto :goto_15

    :cond_83
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    :cond_88
    const-string v0, "message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p0, p2}, Lcom/instagram/api/k/a/e;->a(Lcom/fasterxml/jackson/a/l;)V

    move v0, v1

    goto :goto_15

    :cond_95
    const/4 v0, 0x0

    goto/16 :goto_15
.end method
