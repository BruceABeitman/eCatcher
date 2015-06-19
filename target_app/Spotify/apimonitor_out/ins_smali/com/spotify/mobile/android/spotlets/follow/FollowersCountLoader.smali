.class public final Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/spotify/cosmos/android/Resolver;
.field private final b:Landroid/os/Handler;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->b:Landroid/os/Handler;
new-instance v0, Lcom/spotify/cosmos/android/DeferredResolver;
invoke-direct {v0, p1}, Lcom/spotify/cosmos/android/DeferredResolver;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->a:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->a:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->a:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/d;)V
.registers 8
const-string v0, "{\"target_uris\": [\"%s\"]}"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
new-instance v1, Lcom/spotify/cosmos/router/Request;
const-string v2, "GET"
const-string v3, "hm://socialgraph/v2/counts?format=json"
const/4 v4, 0x0
invoke-direct {v1, v2, v3, v4, v0}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->a:Lcom/spotify/cosmos/android/Resolver;
new-instance v2, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$1;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->b:Landroid/os/Handler;
const-class v4, [Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;
invoke-direct {v2, p0, v3, v4, p2}, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$1;-><init>(Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/follow/d;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
return-void
.end method