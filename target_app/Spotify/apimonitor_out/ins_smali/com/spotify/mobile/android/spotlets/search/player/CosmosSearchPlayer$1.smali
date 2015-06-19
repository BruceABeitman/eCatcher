.class  Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/player/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/player/a;Landroid/os/Handler;Ljava/lang/Class;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/search/player/a;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "error resolving player state: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/b/c;->a(Ljava/lang/String;)V
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 6
check-cast p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/search/player/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/player/a;->b()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/search/player/a;
iput-object p2, v1, Lcom/spotify/mobile/android/spotlets/search/player/a;->a:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/search/player/a;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/player/a;->a:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/search/player/a;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/player/a;->b:Lcom/spotify/mobile/android/spotlets/search/player/b;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;->a:Lcom/spotify/mobile/android/spotlets/search/player/a;
iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/player/a;->a:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/search/player/b;->a(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)V
:cond_1d
return-void
.end method