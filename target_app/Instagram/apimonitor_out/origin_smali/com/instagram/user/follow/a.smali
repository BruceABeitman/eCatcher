.class public Lcom/instagram/user/follow/a;
.super Lcom/instagram/api/j/g;
.source "FetchBulkFollowingStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "I",
            "Lcom/instagram/api/j/f",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/instagram/user/follow/a;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_33
    const-string v0, "user_ids"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/user/follow/a;->a:Ljava/lang/Iterable;

    invoke-virtual {p0}, Lcom/instagram/user/follow/a;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/q",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "friendship_statuses"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    :cond_b
    :goto_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_2c

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p0}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/b;)V

    goto :goto_b

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected b_()Ljava/lang/String;
    .registers 2

    const-string v0, "friendships/show_many/"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
