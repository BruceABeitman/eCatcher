.class public Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method public onBackPressed()V
.registers 1
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/LockScreenActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p0}, Lcom/spotify/android/paste/app/FontSupport;->a(Landroid/app/Activity;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "layout_id"
const v2, 0x7f03001b
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;->setContentView(I)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/LockScreenActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "layout_id"
const v2, 0x7f03001b
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;->setContentView(I)V
return-void
.end method