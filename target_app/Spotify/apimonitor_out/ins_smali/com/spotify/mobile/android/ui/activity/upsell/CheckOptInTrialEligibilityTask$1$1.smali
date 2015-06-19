.class final Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;
.field final synthetic a:Lcom/spotify/cosmos/router/Request;
.field final synthetic b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;Lcom/spotify/cosmos/router/Request;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->a:Lcom/spotify/cosmos/router/Request;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Lcom/spotify/cosmos/android/Resolver;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->a:Lcom/spotify/cosmos/router/Request;
new-instance v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;
new-instance v2, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
const-class v3, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;
invoke-direct {v1, p0, v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {p1, v0, v1}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onServiceConnectionFailed(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
.registers 3
return-void
.end method
.method public final onServiceDisconnected(Lcom/spotify/cosmos/android/Resolver;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method