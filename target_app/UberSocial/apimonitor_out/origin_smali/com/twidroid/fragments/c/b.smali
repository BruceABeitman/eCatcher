.class public Lcom/twidroid/fragments/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Lcom/twidroid/b/a/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/fragments/c/b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/twidroid/fragments/c/b;->b:Ljava/util/List;

    return-void
.end method

.method private a(J)Z
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/fragments/c/b;->a:Ljava/util/List;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/twidroid/fragments/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iget-wide v3, v0, Lcom/twidroid/model/twitter/User;->b:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_21
    move v0, v1

    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/ubermedia/a/g;)Lcom/ubermedia/a/g;
    .registers 7

    iget-object v0, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->k()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->h()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/twidroid/fragments/c/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_29
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2d
    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, p1, v1}, Lcom/ubermedia/a/g;-><init>(Lcom/ubermedia/a/g;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Lcom/ubermedia/a/g;)Lcom/ubermedia/a/g;
    .registers 7

    iget-object v0, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->h()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/twidroid/fragments/c/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2c
    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->k()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_36
    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, p1, v1}, Lcom/ubermedia/a/g;-><init>(Lcom/ubermedia/a/g;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Lcom/ubermedia/a/g;)Lcom/ubermedia/a/g;
    .registers 7

    iget-object v0, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->k()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->h()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/twidroid/fragments/c/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_29
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_30
    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, p1, v1}, Lcom/ubermedia/a/g;-><init>(Lcom/ubermedia/a/g;Ljava/lang/Object;)V

    return-object v0
.end method
