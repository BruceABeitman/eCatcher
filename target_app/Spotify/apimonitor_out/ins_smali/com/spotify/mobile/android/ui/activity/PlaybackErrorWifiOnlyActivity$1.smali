.class final Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "radio_uri"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->a(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "view_uri"
invoke-static {}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;
const/4 v2, -0x1
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->setResult(ILandroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method