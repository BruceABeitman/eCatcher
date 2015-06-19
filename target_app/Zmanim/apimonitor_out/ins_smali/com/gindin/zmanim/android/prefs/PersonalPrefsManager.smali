.class public Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
.super Ljava/lang/Object;
.source "PersonalPrefsManager.java"
.field private final activity:Lcom/gindin/zmanim/android/ZmanimActivity;
.field private final personalPrefs:Landroid/content/SharedPreferences;
.field private prefsBeforeEditing:Ljava/util/Map;
.method public constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->activity:Lcom/gindin/zmanim/android/ZmanimActivity;
sget-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->PERSONAL:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->personalPrefs:Landroid/content/SharedPreferences;
return-void
.end method
.method public editPersonalPrefs()V
.registers 5
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->personalPrefs:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->prefsBeforeEditing:Ljava/util/Map;
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->activity:Lcom/gindin/zmanim/android/ZmanimActivity;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->activity:Lcom/gindin/zmanim/android/ZmanimActivity;
const-class v3, Lcom/gindin/zmanim/android/prefs/PersonalPreferences;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v2, Lcom/gindin/zmanim/android/Activities;->PERSONAL_PREFERENCS:Lcom/gindin/zmanim/android/Activities;
invoke-virtual {v2}, Lcom/gindin/zmanim/android/Activities;->ordinal()I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public getBoolean(Ljava/lang/String;Z)Z
.registers 4
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->personalPrefs:Landroid/content/SharedPreferences;
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public onHandleUpgrade(II)V
.registers 6
const/16 v1, 0x42
if-gt p2, v1, :cond_17
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->personalPrefs:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
sget-object v1, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->USE_ELEVATION:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->name()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_17
return-void
.end method
.method public personalPrefsChanged()V
.registers 3
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->personalPrefs:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->prefsBeforeEditing:Ljava/util/Map;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_13
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->activity:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->rebuildUI()V
:cond_13
const/4 v1, 0x0
iput-object v1, p0, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->prefsBeforeEditing:Ljava/util/Map;
return-void
.end method