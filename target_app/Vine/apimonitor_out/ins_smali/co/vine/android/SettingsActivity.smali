.class public Lco/vine/android/SettingsActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "SettingsActivity.java"
.field private SETTINGS_TAG:Ljava/lang/String;
.field private mFrag:Lco/vine/android/SettingsFragment;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
const-string v0, "settings"
iput-object v0, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseControllerActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
if-nez v0, :cond_15
invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
iget-object v1, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lco/vine/android/SettingsFragment;
iput-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
:cond_15
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
if-eqz v0, :cond_1f
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/SettingsFragment;->onActivityResult(IILandroid/content/Intent;)V
:goto_1e
return-void
:cond_1f
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseControllerActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_1e
.end method
.method public onBackPressed()V
.registers 3
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
if-nez v0, :cond_12
invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
iget-object v1, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lco/vine/android/SettingsFragment;
iput-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
:cond_12
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->onBackPressed()V
:goto_1b
return-void
:cond_1c
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onBackPressed()V
goto :goto_1b
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lco/vine/android/SettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const v1, 0x7f030046
invoke-super {p0, p1, v1, v4}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
const v3, 0x7f0e01c5
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {p0, v1, v2, v3, v4}, Lco/vine/android/SettingsActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
if-nez p1, :cond_41
new-instance v0, Lco/vine/android/SettingsFragment;
invoke-direct {v0}, Lco/vine/android/SettingsFragment;-><init>()V
invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-static {v1}, Lco/vine/android/BaseTimelineFragment;->prepareArguments(Landroid/content/Intent;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/SettingsFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const v2, 0x7f0a0102
iget-object v3, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;
invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
iput-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
:cond_41
const-string v1, " - Lco/vine/android/SettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SettingsActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_2a
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_b
move v2, v0
const-string v1, " - Lco/vine/android/SettingsActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
if-nez v0, :cond_1e
invoke-virtual {p0}, Lco/vine/android/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
iget-object v1, p0, Lco/vine/android/SettingsActivity;->SETTINGS_TAG:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lco/vine/android/SettingsFragment;
iput-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
:cond_1e
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
if-eqz v0, :cond_27
iget-object v0, p0, Lco/vine/android/SettingsActivity;->mFrag:Lco/vine/android/SettingsFragment;
invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->onBackPressed()V
:cond_27
const/4 v0, 0x1
goto :goto_b
nop
:pswitch_data_2a
.packed-switch 0x102002c
:pswitch_c
.end packed-switch
.end method