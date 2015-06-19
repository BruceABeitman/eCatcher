.class public Lcom/twidroid/activity/UberSocialSettings20;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"
.field public static a:Ljava/lang/String; = null
.field public static final b:Ljava/lang/String; = "UberSocialPrefs"
.field  c:Landroid/preference/ListPreference;
.field  d:Landroid/preference/ListPreference;
.field  e:Landroid/preference/ListPreference;
.field  f:Lcom/twidroid/net/a/a/c;
.field  g:Landroid/preference/CheckBoxPreference;
.field  h:Landroid/preference/PreferenceScreen;
.field  i:Ljava/lang/String;
.field  j:Ljava/lang/String;
.field  k:Lcom/twidroid/UberSocialApplication;
.field private l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.method static constructor <clinit>()V
.registers 1
const-string v0, "PreferencesView"
sput-object v0, Lcom/twidroid/activity/UberSocialSettings20;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/UberSocialSettings20;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialSettings20;->c()V
return-void
.end method
.method private b()V
.registers 4
const-string v0, "ad_id"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v1
const-string v0, "opt_out"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v2
const-string v0, "about_twidroid"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/PreferenceScreen;
if-eqz v0, :cond_1c
invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
:cond_1c
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/UberSocialSettings20;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialSettings20;->d()V
return-void
.end method
.method private c()V
.registers 5
invoke-static {p0}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->f:Lcom/twidroid/net/a/a/c;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->f:Lcom/twidroid/net/a/a/c;
if-eqz v0, :cond_b
:goto_a
return-void
:cond_b
new-instance v0, Lcom/facebook/a/e;
const-string v1, "149588628439275"
invoke-direct {v0, v1}, Lcom/facebook/a/e;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/twidroid/net/a/a/c;->a(Lcom/facebook/a/e;)V
sget-object v1, Lcom/twidroid/y;->r:[Ljava/lang/String;
const/4 v2, -0x1
new-instance v3, Lcom/twidroid/activity/UberSocialSettings20$2;
invoke-direct {v3, p0, v0}, Lcom/twidroid/activity/UberSocialSettings20$2;-><init>(Lcom/twidroid/activity/UberSocialSettings20;Lcom/facebook/a/e;)V
invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/a/e;->a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/a/f;)V
goto :goto_a
.end method
.method private d()V
.registers 12
const/4 v10, 0x1
const/4 v9, 0x0
const-string v0, "enable_tweetnotification"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/CheckBoxPreference;
const-string v1, "enable_replynotification"
invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v1
check-cast v1, Landroid/preference/CheckBoxPreference;
const-string v2, "enable_dmnotification"
invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v2
check-cast v2, Landroid/preference/CheckBoxPreference;
const-string v3, "enable_retweet_notification"
invoke-virtual {p0, v3}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v3
check-cast v3, Landroid/preference/CheckBoxPreference;
const-string v4, "enable_favorite_notification"
invoke-virtual {p0, v4}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v4
check-cast v4, Landroid/preference/CheckBoxPreference;
const-string v5, "enable_follow_notification"
invoke-virtual {p0, v5}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v5
check-cast v5, Landroid/preference/CheckBoxPreference;
iget-object v6, p0, Lcom/twidroid/activity/UberSocialSettings20;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v6}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/d/v;->aP()Z
move-result v7
invoke-virtual {v6}, Lcom/twidroid/d/v;->v()Z
move-result v8
invoke-virtual {v6}, Lcom/twidroid/d/v;->aR()Z
if-nez v7, :cond_5a
if-nez v8, :cond_5a
invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v1, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
:cond_59
:goto_59
return-void
:cond_5a
if-eqz v7, :cond_7a
invoke-virtual {v3, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v4, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
:goto_6e
if-eqz v8, :cond_59
invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
goto :goto_59
:cond_7a
invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
goto :goto_6e
.end method
.method public a()V
.registers 4
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0150
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c014f
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0151
new-instance v2, Lcom/twidroid/activity/UberSocialSettings20$10;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSettings20$10;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0029
new-instance v2, Lcom/twidroid/activity/UberSocialSettings20$9;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSettings20$9;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
sget-object v0, Lcom/twidroid/activity/UberSocialSettings20;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "UberSocialSettings20.onActivityResult: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " / "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/activity/UberSocialSettings20;->a:Ljava/lang/String;
const-string v1, "Facebook result"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/net/a/a/c;->d()Lcom/facebook/a/e;
move-result-object v0
if-eqz v0, :cond_4a
sget-object v1, Lcom/twidroid/activity/UberSocialSettings20;->a:Ljava/lang/String;
const-string v2, "Facebook authorizeCallback"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/e;->a(IILandroid/content/Intent;)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20;->g:Landroid/preference/CheckBoxPreference;
if-eqz v1, :cond_49
invoke-virtual {v0}, Lcom/facebook/a/e;->b()Z
move-result v0
if-nez v0, :cond_49
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->g:Landroid/preference/CheckBoxPreference;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
:cond_49
:goto_49
return-void
:cond_4a
invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V
sget-object v0, Lcom/twidroid/activity/UberSocialSettings20;->a:Ljava/lang/String;
const-string v1, "onActivity Result called"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_49
.end method
.method public onContentChanged()V
.registers 3
invoke-super {p0}, Landroid/preference/PreferenceActivity;->onContentChanged()V
sget-object v0, Lcom/twidroid/activity/UberSocialSettings20;->a:Ljava/lang/String;
const-string v1, "onContentChanged"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 13
const-string v1, " + Lcom/twidroid/activity/UberSocialSettings20; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v10, 0x0
const v9, 0x7f0c010d
const/4 v8, 0x4
const/4 v7, 0x1
const/4 v1, 0x0
const v0, 0x1030008
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->setTheme(I)V
invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f050001
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->addPreferencesFromResource(I)V
invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->k:Lcom/twidroid/UberSocialApplication;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->k:Lcom/twidroid/UberSocialApplication;
const v2, 0x7f0c007a
invoke-static {v0, p0, v2, v10, v7}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
const-string v0, "about_twidroid"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/PreferenceScreen;
const-string v2, "version_name"
invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v2
if-eqz v2, :cond_3f
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialSettings20;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/twidroid/d/v;->e(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
:cond_3f
const-string v2, "device_id"
invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialSettings20;->b()V
const-string v0, "tweet_layout"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/ListPreference;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->e:Landroid/preference/ListPreference;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->e:Landroid/preference/ListPreference;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialSettings20;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/d/v;->p()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
sget v0, Lcom/twidroid/y;->E:I
if-gt v0, v8, :cond_79
const-string v0, "pref_link_explorer_settings"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/PreferenceCategory;
invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V
const v2, 0x7f0c0125
invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setSummary(I)V
:cond_79
const-string v0, "other_externalStorage"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
new-instance v2, Lcom/twidroid/activity/UberSocialSettings20$1;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSettings20$1;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V
invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
const-string v0, "default_list_for_startup"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/ListPreference;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
if-eqz v0, :cond_12c
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->v()Lcom/twidroid/model/twitter/e;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/e;->iterator()Ljava/util/Iterator;
move-result-object v2
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
:goto_ad
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e3
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/d;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "@"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_ad
:cond_e3
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_105
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setSummary(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V
const-string v0, "enable_list_on_startup"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V
const-string v0, "enable_list_on_startup"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V
:cond_105
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
invoke-static {v3}, Lcom/twidroid/b/a/b;->a(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
invoke-static {v4}, Lcom/twidroid/b/a/b;->a(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->d:Landroid/preference/ListPreference;
new-instance v2, Lcom/twidroid/activity/UberSocialSettings20$3;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSettings20$3;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V
invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
:cond_12c
const-string v0, "urlshortener_provider"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/ListPreference;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->c:Landroid/preference/ListPreference;
const/16 v0, 0x15
new-array v2, v0, [Ljava/lang/String;
const-string v0, "isShowOwnTweetsInverted"
aput-object v0, v2, v1
const-string v0, "enableRealNames"
aput-object v0, v2, v7
const/4 v0, 0x2
const-string v3, "high_res_avatars"
aput-object v3, v2, v0
const/4 v0, 0x3
const-string v3, "show_timestamp"
aput-object v3, v2, v0
const-string v0, "ui_fontsize"
aput-object v0, v2, v8
const/4 v0, 0x5
const-string v3, "use_italic_style"
aput-object v3, v2, v0
const/4 v0, 0x6
const-string v3, "use_bold_style"
aput-object v3, v2, v0
const/4 v0, 0x7
const-string v3, "ui_singleview_fontsize"
aput-object v3, v2, v0
const/16 v0, 0x8
const-string v3, "singleview_use_italic_style"
aput-object v3, v2, v0
const/16 v0, 0x9
const-string v3, "singleview_use_bold_style"
aput-object v3, v2, v0
const/16 v0, 0xa
const-string v3, "pref_light_menu_mode"
aput-object v3, v2, v0
const/16 v0, 0xb
const-string v3, "is_avatars_disabled"
aput-object v3, v2, v0
const/16 v0, 0xc
const-string v3, "pref_dealbox_enable"
aput-object v3, v2, v0
const/16 v0, 0xd
const-string v3, "disable_swipe_gesture"
aput-object v3, v2, v0
const/16 v0, 0xe
const-string v3, "buttonset"
aput-object v3, v2, v0
const/16 v0, 0xf
const-string v3, "tweet_layout"
aput-object v3, v2, v0
const/16 v0, 0x10
const-string v3, "pref_pulltorefresh"
aput-object v3, v2, v0
const/16 v0, 0x11
const-string v3, "merge_direct_messages_into_hometimeline"
aput-object v3, v2, v0
const/16 v0, 0x12
const-string v3, "invert_context_click"
aput-object v3, v2, v0
const/16 v0, 0x13
const-string v3, "unread_options"
aput-object v3, v2, v0
const/16 v0, 0x14
const-string v3, "unread_clearing_options"
aput-object v3, v2, v0
array-length v3, v2
move v0, v1
:goto_1af
if-ge v0, v3, :cond_1c4
aget-object v4, v2, v0
invoke-virtual {p0, v4}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v4
if-eqz v4, :cond_1c1
new-instance v5, Lcom/twidroid/activity/UberSocialSettings20$4;
invoke-direct {v5, p0}, Lcom/twidroid/activity/UberSocialSettings20$4;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V
invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
:cond_1c1
add-int/lit8 v0, v0, 0x1
goto :goto_1af
:cond_1c4
const-string v0, "default_post_to_facebook"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/CheckBoxPreference;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->g:Landroid/preference/CheckBoxPreference;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->g:Landroid/preference/CheckBoxPreference;
new-instance v2, Lcom/twidroid/activity/UberSocialSettings20$5;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSettings20$5;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V
invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
const-string v0, "rate_limits"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/PreferenceScreen;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->h:Landroid/preference/PreferenceScreen;
new-instance v0, Lcom/twidroid/activity/ae;
invoke-direct {v0, p0, v10}, Lcom/twidroid/activity/ae;-><init>(Lcom/twidroid/activity/UberSocialSettings20;Lcom/twidroid/activity/UberSocialSettings20$1;)V
new-array v2, v7, [Landroid/preference/PreferenceScreen;
iget-object v3, p0, Lcom/twidroid/activity/UberSocialSettings20;->h:Landroid/preference/PreferenceScreen;
aput-object v3, v2, v1
invoke-virtual {v0, v2}, Lcom/twidroid/activity/ae;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const-string v0, "pref_streaming"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/UberSocialSettings20$6;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialSettings20$6;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V
invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
new-instance v0, Lcom/twidroid/activity/UberSocialSettings20$7;
invoke-direct {v0, p0}, Lcom/twidroid/activity/UberSocialSettings20$7;-><init>(Lcom/twidroid/activity/UberSocialSettings20;)V
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
const-string v1, " - Lcom/twidroid/activity/UberSocialSettings20; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/UberSocialSettings20; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialSettings20;->getPreferenceScreen()Landroid/preference/PreferenceScreen;
move-result-object v0
invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialSettings20; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 6
const-string v1, " + Lcom/twidroid/activity/UberSocialSettings20; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialSettings20;->getPreferenceScreen()Landroid/preference/PreferenceScreen;
move-result-object v0
invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
const-string v0, "manual_registration_checkin"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Last checkin: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
new-instance v2, Ljava/util/Date;
iget-object v3, p0, Lcom/twidroid/activity/UberSocialSettings20;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/d/v;->bE()J
move-result-wide v3
invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
const-string v0, "image_provider4"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSettings20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/ListPreference;
if-eqz v0, :cond_7e
invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;
move-result-object v1
const-string v2, "twitgoo"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_6d
invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;
move-result-object v1
const-string v2, "twitpic"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_6d
invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;
move-result-object v1
const-string v2, "mypictme"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7e
:cond_6d
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialSettings20;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f060001
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
:cond_7e
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialSettings20;->d()V
const-string v1, " - Lcom/twidroid/activity/UberSocialSettings20; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method