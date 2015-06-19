.class final Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;
invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->e()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/cosmos/android/Resolver;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;
invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;Lcom/spotify/cosmos/router/Request;)V
invoke-virtual {v1, v2}, Lcom/spotify/cosmos/android/Resolver;->registerConnectionCallback(Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/cosmos/android/Resolver;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
return-void
.end method