.class public final Lcom/instagram/android/h/f;
.super Ljava/lang/Object;
.source "QuickSandResponse__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/h/e;
    .registers 4

    new-instance v0, Lcom/instagram/android/h/e;

    invoke-direct {v0}, Lcom/instagram/android/h/e;-><init>()V

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

    invoke-static {v0, v1, p0}, Lcom/instagram/android/h/f;->a(Lcom/instagram/android/h/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method

.method private static a(Lcom/instagram/android/h/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 6

    const/4 v1, 0x1

    const-string v0, "size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/h/e;->d:Ljava/lang/Integer;

    move v0, v1

    :goto_14
    return v0

    :cond_15
    const-string v0, "shift"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/h/e;->c:Ljava/lang/Integer;

    move v0, v1

    goto :goto_14

    :cond_29
    const-string v0, "edges"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/h/e;->e:Ljava/lang/Integer;

    move v0, v1

    goto :goto_14

    :cond_3d
    const-string v0, "header"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_52

    const/4 v0, 0x0

    :goto_4e
    iput-object v0, p0, Lcom/instagram/android/h/e;->a:Ljava/lang/String;

    move v0, v1

    goto :goto_14

    :cond_52
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_57
    const-string v0, "iterations"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/h/e;->b:Ljava/lang/Integer;

    move v0, v1

    goto :goto_14

    :cond_6b
    invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/g;->a(Lcom/instagram/api/k/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto :goto_14
.end method
