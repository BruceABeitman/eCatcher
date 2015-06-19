.class  Lcom/gindin/zmanim/android/AppUpgrader;
.super Ljava/lang/Object;
.source "AppUpgrader.java"
.field private static final LAST_KNOWN_CODE_VERSION:Ljava/lang/String; = "lastKnownCodeVersion"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static doUpgrade(Lcom/gindin/zmanim/android/ZmanimActivity;II)V
.registers 13
const/4 v9, 0x0
const/4 v8, -0x1
if-ne v8, p2, :cond_4f
const-string v8, "ZmanimSelection"
invoke-virtual {p0, v8, v9}, Lcom/gindin/zmanim/android/ZmanimActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v7
if-eqz v7, :cond_4f
sget-object v8, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->ZMANIM_SELECTION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
invoke-virtual {v8}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;
move-result-object v8
invoke-virtual {p0, v8, v9}, Lcom/gindin/zmanim/android/ZmanimActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v8
invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_26
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_42
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v8
check-cast v8, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_26
:cond_42
invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_4f
new-instance v6, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
invoke-direct {v6, p0}, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
invoke-virtual {v6, p1, p2}, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->onHandleUpgrade(II)V
return-void
.end method
.method public static handle(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 9
const/16 v4, 0x50
sget-object v5, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->VERSION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
invoke-virtual {v5}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {p0, v5, v6}, Lcom/gindin/zmanim/android/ZmanimActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v3
const-string v5, "lastKnownCodeVersion"
const/4 v6, -0x1
invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v2
if-le v4, v2, :cond_19
:try_start_16
invoke-static {p0, v4, v2}, Lcom/gindin/zmanim/android/AppUpgrader;->doUpgrade(Lcom/gindin/zmanim/android/ZmanimActivity;II)V
:try_end_19
.catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_26
:cond_19
:goto_19
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v5, "lastKnownCodeVersion"
invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
:catch_26
move-exception v0
const-string v5, "doUpgrade"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "ver: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " old: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6, v0}, Lcom/gindin/util/LogUtils;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_19
.end method