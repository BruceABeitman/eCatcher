.class  Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$1;
.super Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
.method constructor <init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;Landroid/os/Handler;Ljava/lang/Class;)V
.registers 4
iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$1;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 6
const/4 v2, 0x0
const-string v0, "Error when communicating with backend (%s)"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object p2, v1, v2
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$1;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
invoke-static {v0, v2}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;Z)V
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 6
check-cast p2, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;
const-string v0, "Got response for backend: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$1;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
invoke-virtual {p2}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;->isSuccess()Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;Z)V
return-void
.end method