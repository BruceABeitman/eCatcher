.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 7

    const-class v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cosmos album data loader failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel",
            "<",
            "Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->getItems()[Lcom/spotify/mobile/android/cosmos/JacksonModel;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_a

    :cond_15
    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    goto :goto_a

    :cond_1d
    array-length v2, v0

    if-lez v2, :cond_31

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getCollectionUri()Ljava/lang/String;

    move-result-object v3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a([Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->getItems()[Lcom/spotify/mobile/android/cosmos/JacksonModel;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;

    array-length v0, v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->isEmptyWithFilter()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;IZ)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    :cond_55
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_6a
    const/4 v0, 0x1

    goto :goto_a
.end method
