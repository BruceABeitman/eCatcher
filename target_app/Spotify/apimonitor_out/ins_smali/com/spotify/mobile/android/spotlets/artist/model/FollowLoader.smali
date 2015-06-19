.class public final Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Landroid/content/Context;
.field private final c:Lcom/spotify/mobile/android/spotlets/artist/model/h;
.field private d:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
.field private e:Landroid/support/v4/app/y;
.field private f:Lcom/spotify/mobile/android/spotlets/artist/model/g;
.field private g:Lcom/spotify/mobile/android/spotlets/follow/b;
.field private h:Lcom/spotify/cosmos/android/Resolver;
.field private i:Landroid/os/Handler;
.field private j:Landroid/support/v4/app/z;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/h;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->g:Lcom/spotify/mobile/android/spotlets/follow/b;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->j:Landroid/support/v4/app/z;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a:Ljava/lang/String;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->b:Landroid/content/Context;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->c:Lcom/spotify/mobile/android/spotlets/artist/model/h;
const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->i:Landroid/os/Handler;
invoke-static {p1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->h:Lcom/spotify/cosmos/android/Resolver;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/g;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/g;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->f:Lcom/spotify/mobile/android/spotlets/artist/model/g;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/artist/model/h;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->c:Lcom/spotify/mobile/android/spotlets/artist/model/h;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/artist/model/g;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->f:Lcom/spotify/mobile/android/spotlets/artist/model/g;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a:Ljava/lang/String;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->h:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->g:Lcom/spotify/mobile/android/spotlets/follow/b;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
return-void
.end method
.method public final a(Landroid/support/v4/app/y;)V
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->g:Lcom/spotify/mobile/android/spotlets/follow/b;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/follow/a;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/follow/a;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->c:Lcom/spotify/mobile/android/spotlets/artist/model/h;
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/h;->a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
:goto_21
return-void
:cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->h:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->e:Landroid/support/v4/app/y;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->e:Landroid/support/v4/app/y;
const v1, 0x7f0a0158
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->j:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const-string v0, "{\"target_uris\": [\"%s\"]}"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a:Ljava/lang/String;
invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
new-instance v1, Lcom/spotify/cosmos/router/Request;
const-string v2, "GET"
const-string v3, "hm://socialgraph/v2/counts?format=json"
invoke-direct {v1, v2, v3, v4, v0}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->h:Lcom/spotify/cosmos/android/Resolver;
new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$3;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->i:Landroid/os/Handler;
const-class v4, [Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$3;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
goto :goto_21
.end method
.method public final a(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;Z)V
return-void
.end method