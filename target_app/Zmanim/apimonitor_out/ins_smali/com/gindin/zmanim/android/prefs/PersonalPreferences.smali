.class public Lcom/gindin/zmanim/android/prefs/PersonalPreferences;
.super Landroid/preference/PreferenceActivity;
.source "PersonalPreferences.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/gindin/zmanim/android/prefs/PersonalPreferences; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/gindin/zmanim/android/prefs/PersonalPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;
move-result-object v0
sget-object v1, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->PERSONAL:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V
const v0, 0x7f040001
invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/prefs/PersonalPreferences;->addPreferencesFromResource(I)V
const-string v1, " - Lcom/gindin/zmanim/android/prefs/PersonalPreferences; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method