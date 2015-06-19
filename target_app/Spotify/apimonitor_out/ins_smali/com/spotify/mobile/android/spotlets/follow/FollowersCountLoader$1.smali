.class  Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/follow/d;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/follow/d;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$1;->b:Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$1;->a:Lcom/spotify/mobile/android/spotlets/follow/d;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$1;->a:Lcom/spotify/mobile/android/spotlets/follow/d;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/follow/d;->a(Ljava/lang/Throwable;)V
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 6
const/4 v2, 0x0
check-cast p2, [Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;
array-length v0, p2
if-lez v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$1;->a:Lcom/spotify/mobile/android/spotlets/follow/d;
aget-object v1, p2, v2
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->getFollowersCount()I
move-result v1
aget-object v2, p2, v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->getFollowingCount()I
move-result v2
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/d;->a(II)V
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$1;->a:Lcom/spotify/mobile/android/spotlets/follow/d;
new-instance v1, Ljava/lang/Exception;
const-string v2, "Model had zero rows, expected one."
invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/d;->a(Ljava/lang/Throwable;)V
goto :goto_17
.end method