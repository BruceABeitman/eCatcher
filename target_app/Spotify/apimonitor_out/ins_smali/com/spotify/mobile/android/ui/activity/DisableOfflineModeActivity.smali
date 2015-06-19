.class public Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03001d
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;->setContentView(I)V
const v0, 0x7f0a02e5
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const v1, 0x7f0f01e6
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
const v1, 0x7f0a02e6
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
const v2, 0x7f0f01e7
invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
const v2, 0x7f0a01fc
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
const v3, 0x7f0f01e8
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
const/4 v2, 0x0
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;->setResult(I)V
new-instance v2, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;)V
invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->V:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method