.class  Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;
.super Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/r;Landroid/os/Handler;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;->a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 6
const/4 v2, 0x0
const-string v0, "Failed to start trial"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;->a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->b(Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/mobile/android/util/cl;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;->a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->b(Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/mobile/android/util/cl;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->g()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;->a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->a(Lcom/spotify/mobile/android/ui/activity/upsell/r;Z)V
:cond_22
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 6
check-cast p2, Ljava/lang/Boolean;
const-string v0, "Started opt-in trial: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;->a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->b(Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/mobile/android/util/cl;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->e()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;->a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->a(Lcom/spotify/mobile/android/ui/activity/upsell/r;Z)V
return-void
.end method
.method protected synthetic parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method