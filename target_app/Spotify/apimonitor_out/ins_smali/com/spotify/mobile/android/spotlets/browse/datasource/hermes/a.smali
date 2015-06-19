.class public final Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.field private b:Lcom/spotify/cosmos/android/Resolver;
.field private c:Landroid/os/Handler;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->a:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method public final a()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->b:Lcom/spotify/cosmos/android/Resolver;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "hm://apollo-genesis/v1/favorites"
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->b:Lcom/spotify/cosmos/android/Resolver;
new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/CollectionFavoritesHermesClient$1;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->c:Landroid/os/Handler;
const-class v4, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorites;
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/CollectionFavoritesHermesClient$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
return-void
.end method
.method public final a(Landroid/content/Context;)V
.registers 4
invoke-static {p1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->b:Lcom/spotify/cosmos/android/Resolver;
new-instance v0, Landroid/os/Handler;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->c:Landroid/os/Handler;
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->b:Lcom/spotify/cosmos/android/Resolver;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->b:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
return-void
.end method