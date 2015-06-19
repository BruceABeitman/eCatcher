.class public final Lcom/instagram/f/b/b;
.super Ljava/lang/Object;
.source "InboxCountInfo__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/b/a;
    .registers 4

    new-instance v0, Lcom/instagram/f/b/a;

    invoke-direct {v0}, Lcom/instagram/f/b/a;-><init>()V

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

    invoke-static {v0, v1, p0}, Lcom/instagram/f/b/b;->a(Lcom/instagram/f/b/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method

.method private static a(Lcom/instagram/f/b/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 6

    const/4 v0, 0x1

    const-string v1, "ts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/instagram/f/b/a;->b:J

    :goto_f
    return v0

    :cond_10
    const-string v1, "count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v1

    iput v1, p0, Lcom/instagram/f/b/a;->a:I

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f
.end method
