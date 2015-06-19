.class public abstract Lcom/spotify/mobile/android/spotlets/browse/a/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field final a:Lcom/spotify/mobile/android/a/b;

.field final b:I


# direct methods
.method public constructor <init>(ILcom/spotify/mobile/android/a/b;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "contextUriProvider must not be null!"

    invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p1, :cond_15

    const/4 v0, 0x1

    :goto_b
    const-string v1, "itemsPerRow must be larger than 0!"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/d;->b:I

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/a/d;->a:Lcom/spotify/mobile/android/a/b;

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final a(ILjava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/d;->b:I

    mul-int v1, p1, v0

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/d;->b:I

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_11

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :cond_11
    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Playable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Don\'t call updateStateForPlayingItems with null current context URI"

    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Don\'t call updateStateForPlayingItems with null current track URI"

    invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Don\'t call setCurrentPlayingContext with null items"

    invoke-static {p3, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/a/d;->a:Lcom/spotify/mobile/android/a/b;

    invoke-interface {v3}, Lcom/spotify/mobile/android/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/a/d;->a:Lcom/spotify/mobile/android/a/b;

    invoke-interface {v3}, Lcom/spotify/mobile/android/a/b;->c()Z

    move-result v3

    if-eqz v3, :cond_3c

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    :goto_38
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;->a(Z)V

    goto :goto_13

    :cond_3c
    const/4 v1, 0x0

    goto :goto_38

    :cond_3e
    return-void
.end method

.method public final b(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/d;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/d;->b:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method
