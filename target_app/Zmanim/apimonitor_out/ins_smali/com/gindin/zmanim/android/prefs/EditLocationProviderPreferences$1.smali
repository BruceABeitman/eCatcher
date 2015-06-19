.class  Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;
.super Ljava/lang/Object;
.source "EditLocationProviderPreferences.java"
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
.method constructor <init>(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.registers 10
const/4 v6, 0x0
const/4 v5, 0x1
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->handlingPrefChange:Z
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$000(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Z
move-result v0
if-eqz v0, :cond_c
move v0, v5
:goto_b
return v0
:cond_c
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#setter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->handlingPrefChange:Z
invoke-static {v0, v5}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$002(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Z)Z
:try_start_11
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useDynamicPos:Landroid/preference/CheckBoxPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$100(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
move-result-object v0
if-ne v0, p1, :cond_4b
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->dynamicProviderSelected()V
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$200(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V
:try_end_26
.catchall {:try_start_11 .. :try_end_26} :catchall_44
:goto_26
:cond_26
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#setter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->handlingPrefChange:Z
invoke-static {v0, v6}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$002(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Z)Z
move v0, v5
goto :goto_b
:try_start_2d
:cond_2d
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v0, v0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders;->DYNAMIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_43
.catchall {:try_start_2d .. :try_end_43} :catchall_44
goto :goto_26
:catchall_44
move-exception v0
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#setter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->handlingPrefChange:Z
invoke-static {v1, v6}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$002(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Z)Z
throw v0
:cond_4b
:try_start_4b
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useStaticLocation:Landroid/preference/CheckBoxPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$300(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
move-result-object v0
if-ne v0, p1, :cond_78
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->staticProviderSelected()V
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$400(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V
goto :goto_26
:cond_61
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v0, v0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders;->STATIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_26
:cond_78
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->useLatLong:Landroid/preference/CheckBoxPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$500(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
move-result-object v0
if-ne v0, p1, :cond_a5
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_8e
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latLongProviderSelected()V
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$600(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)V
goto :goto_26
:cond_8e
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v0, v0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->prefs:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders;->LATITUDE_LONGITUDE_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_26
:cond_a5
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->place:Landroid/preference/EditTextPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$700(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
move-result-object v0
if-ne v0, p1, :cond_c0
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->place:Landroid/preference/EditTextPreference;
invoke-static {v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$700(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, ""
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v1, v2, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$800(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_26
:cond_c0
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latitude:Landroid/preference/EditTextPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$900(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
move-result-object v0
if-ne v0, p1, :cond_e2
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->latitude:Landroid/preference/EditTextPreference;
invoke-static {v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$900(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
const v4, 0x7f05002d
invoke-virtual {v3, v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;
move-result-object v3
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v1, v2, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$800(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_26
:cond_e2
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->longitude:Landroid/preference/EditTextPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1000(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
move-result-object v0
if-ne v0, p1, :cond_104
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->longitude:Landroid/preference/EditTextPreference;
invoke-static {v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1000(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/EditTextPreference;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
const v4, 0x7f05002f
invoke-virtual {v3, v4}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->getString(I)Ljava/lang/String;
move-result-object v3
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v1, v2, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$800(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_26
:cond_104
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overrideSystemTimeZone:Landroid/preference/CheckBoxPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1100(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/CheckBoxPreference;
move-result-object v0
if-ne v0, p1, :cond_119
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->overridingSystemTimeZone(Z)V
invoke-static {v0, v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1200(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Z)V
goto/16 :goto_26
:cond_119
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1300(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
move-result-object v0
if-ne v0, p1, :cond_13d
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneAreas:Landroid/preference/ListPreference;
invoke-static {v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1300(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
move-result-object v1
const-string v2, ""
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v1, v2, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$800(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateLocaleSelector(Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1400(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Ljava/lang/String;)V
goto/16 :goto_26
:cond_13d
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;
invoke-static {v0}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1500(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
move-result-object v0
if-ne v0, p1, :cond_26
iget-object v0, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
iget-object v1, p0, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences$1;->this$0:Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;
#getter for: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->timeZoneLocales:Landroid/preference/ListPreference;
invoke-static {v1}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$1500(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;)Landroid/preference/ListPreference;
move-result-object v1
const-string v2, ""
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
#calls: Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v1, v2, v3}, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;->access$800(Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
:try_end_156
.catchall {:try_start_4b .. :try_end_156} :catchall_44
goto/16 :goto_26
.end method