.class  Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;
.super Landroid/os/AsyncTask;
.source "EditLocationProviderPreferences.java"
.field final synthetic this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
.method constructor <init>(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
.registers 13
invoke-static {}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1600()Ljava/util/Map;
move-result-object v10
invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z
move-result v10
if-nez v10, :cond_f
invoke-static {}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1600()Ljava/util/Map;
move-result-object v10
:goto_e
return-object v10
:cond_f
invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;
move-result-object v9
move-object v1, v9
array-length v4, v1
const/4 v3, 0x0
:goto_16
if-ge v3, v4, :cond_4d
aget-object v8, v1, v3
const-string v10, "/"
invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v7
const/4 v10, -0x1
if-ne v10, v7, :cond_26
:goto_23
add-int/lit8 v3, v3, 0x1
goto :goto_16
:cond_26
const/4 v10, 0x0
invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
add-int/lit8 v10, v7, 0x1
invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-static {}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1600()Ljava/util/Map;
move-result-object v10
invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/util/List;
if-nez v6, :cond_49
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1600()Ljava/util/Map;
move-result-object v10
invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_49
invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_23
:cond_4d
invoke-static {}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1600()Ljava/util/Map;
move-result-object v10
invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v10
invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_59
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_6f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/Map$Entry;
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/util/List;
invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
goto :goto_59
:cond_6f
invoke-static {}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1600()Ljava/util/Map;
move-result-object v10
goto :goto_e
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/Map;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->onPostExecute(Ljava/util/Map;)V
return-void
.end method
.method protected onPostExecute(Ljava/util/Map;)V
.registers 9
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
iget-object v4, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overrideSystemTimeZone:Landroid/preference/CheckBoxPreference;
invoke-static {v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1100(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
move-result-object v4
invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z
move-result v3
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v4
new-array v4, v4, [Ljava/lang/String;
invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iget-object v4, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;
invoke-static {v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1300(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
move-result-object v4
invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V
iget-object v4, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;
invoke-static {v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1300(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
move-result-object v4
invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V
iget-object v4, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v4, v4, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;
sget-object v5, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_AREA:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;
invoke-virtual {v5}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_54
const/4 v3, 0x0
:goto_41
iget-object v4, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;
invoke-static {v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1300(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V
iget-object v4, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;
invoke-static {v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1500(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V
return-void
:cond_54
iget-object v4, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$2;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateLocaleSelector(Ljava/lang/String;)V
invoke-static {v4, v2}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1400(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Ljava/lang/String;)V
goto :goto_41
.end method