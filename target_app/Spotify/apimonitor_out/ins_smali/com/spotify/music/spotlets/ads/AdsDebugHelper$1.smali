.class  Lcom/spotify/music/spotlets/ads/AdsDebugHelper$1;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"
.field final synthetic a:[Ljava/lang/Throwable;
.field final synthetic b:Ljava/util/concurrent/Semaphore;
.field final synthetic c:[Ljava/lang/String;
.field final synthetic d:Lcom/spotify/music/spotlets/ads/a;
.method public onError(Ljava/lang/Throwable;)V
.registers 4
iget-object v0, p0, Lcom/spotify/music/spotlets/ads/AdsDebugHelper$1;->a:[Ljava/lang/Throwable;
const/4 v1, 0x0
aput-object p1, v0, v1
iget-object v0, p0, Lcom/spotify/music/spotlets/ads/AdsDebugHelper$1;->b:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
return-void
.end method
.method public onResolved(Lcom/spotify/cosmos/router/Response;)V
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/music/spotlets/ads/AdsDebugHelper$1;->d:Lcom/spotify/music/spotlets/ads/a;
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getStatus()I
move-result v0
const/16 v1, 0xc8
if-lt v0, v1, :cond_f
const/16 v1, 0x12c
if-lt v0, v1, :cond_5b
:cond_f
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Cosmos non-2xx: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getStatus()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getUri()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
new-instance v2, Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getBody()[B
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
:goto_42
if-eqz v0, :cond_48
iget-object v1, p0, Lcom/spotify/music/spotlets/ads/AdsDebugHelper$1;->a:[Ljava/lang/Throwable;
aput-object v0, v1, v4
:cond_48
iget-object v0, p0, Lcom/spotify/music/spotlets/ads/AdsDebugHelper$1;->c:[Ljava/lang/String;
new-instance v1, Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getBody()[B
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
aput-object v1, v0, v4
iget-object v0, p0, Lcom/spotify/music/spotlets/ads/AdsDebugHelper$1;->b:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
return-void
:cond_5b
const/4 v0, 0x0
goto :goto_42
.end method