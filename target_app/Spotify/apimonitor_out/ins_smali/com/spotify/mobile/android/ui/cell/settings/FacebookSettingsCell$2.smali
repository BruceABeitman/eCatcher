.class final Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/SwitchView;->toggle()V
:cond_11
const-string v1, " - Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method