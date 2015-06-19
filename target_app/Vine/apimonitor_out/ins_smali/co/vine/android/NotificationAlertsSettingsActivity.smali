.class public Lco/vine/android/NotificationAlertsSettingsActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "NotificationAlertsSettingsActivity.java"
.field private mNotificationWasEnabled:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lco/vine/android/NotificationAlertsSettingsActivity; onCreate"
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
const v3, 0x7f0e01f3
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {p0, v1, v2, v3, v4}, Lco/vine/android/NotificationAlertsSettingsActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
invoke-static {p0}, Lco/vine/android/Settings;->isNotificationEnabled(Landroid/content/Context;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/NotificationAlertsSettingsActivity;->mNotificationWasEnabled:Z
if-nez p1, :cond_38
new-instance v0, Lco/vine/android/NotificationAlertsSettingsFragment;
invoke-direct {v0}, Lco/vine/android/NotificationAlertsSettingsFragment;-><init>()V
invoke-virtual {p0}, Lco/vine/android/NotificationAlertsSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
move-result-object v1
const v2, 0x7f0a0102
invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
:cond_38
const-string v1, " - Lco/vine/android/NotificationAlertsSettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/NotificationAlertsSettingsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onDestroy()V
iget-boolean v0, p0, Lco/vine/android/NotificationAlertsSettingsActivity;->mNotificationWasEnabled:Z
if-eqz v0, :cond_10
invoke-static {p0}, Lco/vine/android/Settings;->isNotificationEnabled(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_10
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackNotificationDisabled()V
:cond_10
const-string v1, " - Lco/vine/android/NotificationAlertsSettingsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method