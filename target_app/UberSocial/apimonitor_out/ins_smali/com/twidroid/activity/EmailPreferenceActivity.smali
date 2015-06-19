.class public Lcom/twidroid/activity/EmailPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"
.field  a:Lcom/twidroid/d/v;
.field  b:Lcom/twidroid/UberSocialApplication;
.field  c:Landroid/app/ProgressDialog;
.field  d:Landroid/view/View;
.field private e:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->e:Z
return-void
.end method
.method private a()V
.registers 4
const-string v0, "Please wait"
const-string v1, "Testing server settings...."
invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->c:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->c:Landroid/app/ProgressDialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->e:Z
new-instance v0, Lcom/twidroid/activity/EmailPreferenceActivity$3;
invoke-direct {v0, p0}, Lcom/twidroid/activity/EmailPreferenceActivity$3;-><init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
iget-object v1, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->c:Landroid/app/ProgressDialog;
new-instance v2, Lcom/twidroid/activity/EmailPreferenceActivity$4;
invoke-direct {v2, p0}, Lcom/twidroid/activity/EmailPreferenceActivity$4;-><init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/EmailPreferenceActivity;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/EmailPreferenceActivity;->a()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/EmailPreferenceActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->e:Z
return p1
.end method
.method private b()V
.registers 2
new-instance v0, Lcom/twidroid/activity/EmailPreferenceActivity$5;
invoke-direct {v0, p0}, Lcom/twidroid/activity/EmailPreferenceActivity$5;-><init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/EmailPreferenceActivity;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/EmailPreferenceActivity;->b()V
return-void
.end method
.method private c()V
.registers 2
new-instance v0, Lcom/twidroid/activity/EmailPreferenceActivity$6;
invoke-direct {v0, p0}, Lcom/twidroid/activity/EmailPreferenceActivity$6;-><init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic c(Lcom/twidroid/activity/EmailPreferenceActivity;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/EmailPreferenceActivity;->c()V
return-void
.end method
.method static synthetic d(Lcom/twidroid/activity/EmailPreferenceActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->e:Z
return v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/twidroid/activity/EmailPreferenceActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v1, 0x8
invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->b:Lcom/twidroid/UberSocialApplication;
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->b:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->a:Lcom/twidroid/d/v;
const v0, 0x7f030088
invoke-virtual {p0, v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->setContentView(I)V
const v0, 0x7f09017a
invoke-virtual {p0, v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->d:Landroid/view/View;
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->d:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const/high16 v0, 0x7f05
invoke-virtual {p0, v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->addPreferencesFromResource(I)V
const v0, 0x7f0901cd
invoke-virtual {p0, v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v2, Lcom/twidroid/activity/EmailPreferenceActivity$1;
invoke-direct {v2, p0}, Lcom/twidroid/activity/EmailPreferenceActivity$1;-><init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v0, "email_tweet"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v0
check-cast v0, Landroid/preference/CheckBoxPreference;
new-instance v2, Lcom/twidroid/activity/EmailPreferenceActivity$2;
invoke-direct {v2, p0}, Lcom/twidroid/activity/EmailPreferenceActivity$2;-><init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
iget-object v2, p0, Lcom/twidroid/activity/EmailPreferenceActivity;->d:Landroid/view/View;
invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z
move-result v0
if-eqz v0, :cond_5a
const/4 v0, 0x0
:goto_56
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
const-string v1, " - Lcom/twidroid/activity/EmailPreferenceActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5a
move v0, v1
goto :goto_56
.end method