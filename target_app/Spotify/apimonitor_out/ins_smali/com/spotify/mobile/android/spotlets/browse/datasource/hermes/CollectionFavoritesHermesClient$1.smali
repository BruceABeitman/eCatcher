.class  Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/CollectionFavoritesHermesClient$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;Landroid/os/Handler;Ljava/lang/Class;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/CollectionFavoritesHermesClient$1;->a:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 9
const/4 v1, 0x0
const/4 v4, 0x1
const-string v0, "Exception when fetching Hermes content: %s"
new-array v2, v4, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->name()Ljava/lang/String;
move-result-object v5
aput-object v5, v2, v3
invoke-static {p1, v0, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/CollectionFavoritesHermesClient$1;->a:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->a(Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
if-eqz v0, :cond_25
const/4 v3, -0x1
sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->d:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
move-object v2, v1
invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
:cond_25
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 15
const/4 v8, 0x1
const/4 v9, 0x0
check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorites;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/CollectionFavoritesHermesClient$1;->a:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->a(Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
move-object v7, v0
check-cast v7, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
if-eqz v7, :cond_8c
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
if-eqz p2, :cond_82
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorites;->getFavorites()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_22
:cond_22
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_82
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v5, v0
check-cast v5, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/CollectionFavoritesHermesClient$1;->a:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;
if-eqz v5, :cond_80
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->getType()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_80
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->getUri()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_80
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->getTitle()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_80
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->getImage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_80
move v0, v8
:goto_4c
if-eqz v0, :cond_22
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->getType()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
const-string v1, "PLAYLIST"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
const-string v1, ""
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->getTitle()Ljava/lang/String;
move-result-object v2
const-string v3, ""
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->getUri()Ljava/lang/String;
move-result-object v4
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->getImage()Ljava/lang/String;
move-result-object v5
const/4 v6, -0x1
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_22
:cond_80
move v0, v9
goto :goto_4c
:cond_82
const/4 v2, 0x0
sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->d:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
move-object v0, v7
move-object v1, v10
move v3, v9
move v4, v8
invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
:cond_8c
return-void
.end method