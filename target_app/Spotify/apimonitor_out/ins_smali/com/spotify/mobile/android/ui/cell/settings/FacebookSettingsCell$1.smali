.class final Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "Context was null, onClick called before view is instantiated properly."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method