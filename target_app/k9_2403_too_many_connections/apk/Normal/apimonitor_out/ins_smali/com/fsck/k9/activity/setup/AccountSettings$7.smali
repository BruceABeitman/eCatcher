.class  Lcom/fsck/k9/activity/setup/AccountSettings$7;
.super Ljava/lang/Object;
.source "AccountSettings.java"
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSettings;
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$7;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.registers 7
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$7;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;
invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I
move-result v0
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$7;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;
invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
move-result-object v2
iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$7;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;
invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
move-result-object v3
invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;
move-result-object v3
aget-object v3, v3, v0
invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$7;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSettings;->mTargetMode:Landroid/preference/ListPreference;
invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
const/4 v2, 0x0
return v2
.end method