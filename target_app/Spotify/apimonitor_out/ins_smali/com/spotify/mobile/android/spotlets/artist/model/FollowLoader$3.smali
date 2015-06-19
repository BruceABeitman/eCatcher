.class  Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$3;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;Landroid/os/Handler;Ljava/lang/Class;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$3;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 6
const-string v0, "Error loading FollowersCount: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$3;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->b(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/artist/model/g;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a(Lcom/spotify/mobile/android/spotlets/artist/model/g;)V
return-void
.end method
.method public synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 8
const/4 v4, 0x0
check-cast p2, [Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;
array-length v0, p2
if-nez v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$3;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->b(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/artist/model/g;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a(Lcom/spotify/mobile/android/spotlets/artist/model/g;)V
:goto_f
return-void
:cond_10
aget-object v0, p2, v4
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;->getFollowData()Lcom/spotify/mobile/android/spotlets/follow/a;
move-result-object v0
const-string v1, "Followers count: %d"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/a;->b()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$3;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->b(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/artist/model/g;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/a;->b()I
move-result v2
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/a;->c()I
move-result v0
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a(Lcom/spotify/mobile/android/spotlets/artist/model/g;II)V
goto :goto_f
.end method