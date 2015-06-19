.class public Lcom/twidroid/activity/StreamingPreferences;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"
.field private a:Lcom/twidroid/UberSocialApplication;
.field private b:Landroid/preference/CheckBoxPreference;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/StreamingPreferences; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v0, 0x1030008
invoke-virtual {p0, v0}, Lcom/twidroid/activity/StreamingPreferences;->setTheme(I)V
invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f050002
invoke-virtual {p0, v0}, Lcom/twidroid/activity/StreamingPreferences;->addPreferencesFromResource(I)V
invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/StreamingPreferences;->a:Lcom/twidroid/UberSocialApplication;
iget-object v0, p0, Lcom/twidroid/activity/StreamingPreferences;->a:Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c007a
const/4 v2, 0x0
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
const-string v0, "pref_streaming_on_wifi"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/StreamingPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/CheckBoxPreference;
iput-object v0, p0, Lcom/twidroid/activity/StreamingPreferences;->b:Landroid/preference/CheckBoxPreference;
iget-object v0, p0, Lcom/twidroid/activity/StreamingPreferences;->b:Landroid/preference/CheckBoxPreference;
new-instance v1, Lcom/twidroid/activity/StreamingPreferences$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/StreamingPreferences$1;-><init>(Lcom/twidroid/activity/StreamingPreferences;)V
invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
const-string v1, " - Lcom/twidroid/activity/StreamingPreferences; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/StreamingPreferences; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V
iget-object v0, p0, Lcom/twidroid/activity/StreamingPreferences;->b:Landroid/preference/CheckBoxPreference;
invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z
move-result v0
if-nez v0, :cond_15
new-instance v0, Landroid/content/Intent;
const-string v1, "com.ubermedia.STREAMING_ACTION"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/StreamingPreferences;->sendBroadcast(Landroid/content/Intent;)V
:cond_15
const-string v1, " - Lcom/twidroid/activity/StreamingPreferences; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method