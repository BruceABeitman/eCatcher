.class final Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
iget-boolean v0, v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->c:Z
if-eq p2, v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->d:Lcom/spotify/android/paste/widget/SwitchView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
iget-boolean v1, v1, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->c:Z
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setChecked(Z)V
:goto_33
:cond_33
return-void
:cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/b;
move-result-object v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;->a:Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->b(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/b;
move-result-object v0
invoke-interface {v0, p2}, Lcom/spotify/mobile/android/ui/cell/settings/b;->a(Z)V
goto :goto_33
.end method