.class public final Lcom/instagram/n/b/m;
.super Ljava/lang/Object;
.source "AutoUpdateResponse__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/n/b/j;
    .registers 4

    new-instance v0, Lcom/instagram/n/b/j;

    invoke-direct {v0}, Lcom/instagram/n/b/j;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    const/4 v0, 0x0

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v0, v1, p0}, Lcom/instagram/n/b/m;->a(Lcom/instagram/n/b/j;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method

.method private static a(Lcom/instagram/n/b/j;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 4

    const-string v0, "client_config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p2}, Lcom/instagram/n/b/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/n/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/n/b/j;->a:Lcom/instagram/n/b/k;

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
