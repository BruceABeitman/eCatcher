.class public abstract Lcom/spotify/music/spotlets/situationalcontent/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/a/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    :cond_10
    return-void
.end method
