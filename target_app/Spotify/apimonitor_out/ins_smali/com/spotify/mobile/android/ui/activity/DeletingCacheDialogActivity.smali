.class public Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private n:Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;->n:Landroid/content/BroadcastReceiver;
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
const v1, 0x7f0f01e1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V
const v1, 0x7f0f01e0
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->c(I)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;->setContentView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;->n:Landroid/content/BroadcastReceiver;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.spotify.mobile.android.service.BROADCAST_DELETE_CACHE_FINISHED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aE:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onDestroy()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;->n:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method