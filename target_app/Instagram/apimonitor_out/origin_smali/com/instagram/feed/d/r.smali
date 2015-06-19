.class public final Lcom/instagram/feed/d/r;
.super Ljava/lang/Object;
.source "MediaLikesMutator.java"


# direct methods
.method public static a(Lcom/instagram/feed/d/l;)V
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/instagram/feed/d/o;->b:I

    :goto_8
    invoke-static {p0, v0}, Lcom/instagram/feed/d/r;->a(Lcom/instagram/feed/d/l;I)V

    return-void

    :cond_c
    sget v0, Lcom/instagram/feed/d/o;->a:I

    goto :goto_8
.end method

.method public static a(Lcom/instagram/feed/d/l;I)V
    .registers 4

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    iget v1, p0, Lcom/instagram/feed/d/l;->c:I

    if-eq v1, p1, :cond_34

    iput p1, p0, Lcom/instagram/feed/d/l;->c:I

    iget-object v1, p0, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->q()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_1d
    sget v0, Lcom/instagram/feed/d/o;->a:I

    if-ne p1, v0, :cond_3b

    iget v0, p0, Lcom/instagram/feed/d/l;->a:I

    add-int/lit8 v0, v0, 0x1

    :goto_25
    iput v0, p0, Lcom/instagram/feed/d/l;->a:I

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ai()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0}, Lcom/instagram/feed/d/s;->a(Lcom/instagram/feed/d/l;)V

    :cond_30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    :cond_34
    return-void

    :cond_35
    iget-object v1, p0, Lcom/instagram/feed/d/l;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3b
    iget v0, p0, Lcom/instagram/feed/d/l;->a:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_25
.end method
