.class final Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->a(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aC:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->J:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
const-class v2, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x4000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const/high16 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->finish()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
invoke-virtual {v0, v4, v4}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->overridePendingTransition(II)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method