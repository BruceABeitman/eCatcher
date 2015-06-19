.class final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->a:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x4000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const/high16 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method