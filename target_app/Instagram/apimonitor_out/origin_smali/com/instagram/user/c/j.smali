.class public final Lcom/instagram/user/c/j;
.super Ljava/lang/Object;
.source "User_FriendshipStatus__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/d;
    .registers 4

    new-instance v0, Lcom/instagram/user/c/d;

    invoke-direct {v0}, Lcom/instagram/user/c/d;-><init>()V

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

    invoke-static {v0, v1, p0}, Lcom/instagram/user/c/j;->a(Lcom/instagram/user/c/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method

.method private static a(Lcom/instagram/user/c/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 5

    const/4 v0, 0x1

    const-string v1, "incoming_request"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/user/c/d;->c:Ljava/lang/Boolean;

    :goto_13
    return v0

    :cond_14
    const-string v1, "blocking"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/user/c/d;->d:Ljava/lang/Boolean;

    goto :goto_13

    :cond_27
    const-string v1, "is_private"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/user/c/d;->e:Ljava/lang/Boolean;

    goto :goto_13

    :cond_3a
    const-string v1, "outgoing_request"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/user/c/d;->a:Z

    goto :goto_13

    :cond_49
    const-string v1, "following"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/user/c/d;->b:Z

    goto :goto_13

    :cond_58
    const/4 v0, 0x0

    goto :goto_13
.end method
