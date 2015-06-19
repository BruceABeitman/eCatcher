.class final Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/actions/a;
.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field final synthetic c:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;Lcom/spotify/mobile/android/ui/actions/a;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;->c:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;->a:Lcom/spotify/mobile/android/ui/actions/a;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;->a:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;->c:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;->c:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method