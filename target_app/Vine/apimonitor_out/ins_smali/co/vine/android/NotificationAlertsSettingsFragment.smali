.class public Lco/vine/android/NotificationAlertsSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "NotificationAlertsSettingsFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/NotificationAlertsSettingsFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f050003
invoke-virtual {p0, v0}, Lco/vine/android/NotificationAlertsSettingsFragment;->addPreferencesFromResource(I)V
const-string v1, " - Lco/vine/android/NotificationAlertsSettingsFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method