.class public Lcom/facebook/katana/LoginActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "LoginActivity.java"
.implements Landroid/view/View$OnClickListener;
.field private static synthetic $SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus:[I = null
.field private static final ABOUT_ID:I = 0x65
.field private static final ERROR_DIALOG_ID:I = 0x2
.field private static final EULA_DIALOG_ID:I = 0x3
.field public static final EXTRA_ADD_ACCOUNT:Ljava/lang/String; = "add_account"
.field private static final PROGRESS_LOGIN_DIALOG_ID:I = 0x1
.field private static final SAVE_ERROR_MESSAGE:Ljava/lang/String; = "error_message"
.field private mAddAccountHandled:Z
.field private mAddAccountMode:Z
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mErrorMessage:Ljava/lang/String;
.field private mForeground:Z
.method static synthetic $SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus()[I
.registers 3
sget-object v0, Lcom/facebook/katana/LoginActivity;->$SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->values()[Lcom/facebook/katana/binding/AppSession$LoginStatus;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39
:goto_15
sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_1e
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37
:goto_1e
sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_27
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35
:try_start_27
sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33
:goto_30
sput-object v0, Lcom/facebook/katana/LoginActivity;->$SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus:[I
goto :goto_4
:catch_33
move-exception v1
goto :goto_30
:catch_35
move-exception v1
goto :goto_27
:catch_37
move-exception v1
goto :goto_1e
:catch_39
move-exception v1
goto :goto_15
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/LoginActivity;->mForeground:Z
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/LoginActivity;)Lcom/facebook/katana/binding/AppSessionListener;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/LoginActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
return-object v0
.end method
.method static synthetic access$11(Lcom/facebook/katana/LoginActivity;Lcom/facebook/katana/binding/AppSession;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-void
.end method
.method static synthetic access$12(Lcom/facebook/katana/LoginActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/LoginActivity;->mErrorMessage:Ljava/lang/String;
return-void
.end method
.method static synthetic access$13(Lcom/facebook/katana/LoginActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/LoginActivity;->mForeground:Z
return v0
.end method
.method static synthetic access$9(Lcom/facebook/katana/LoginActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/LoginActivity;->startNextActivity()V
return-void
.end method
.method private login()V
.registers 6
const v2, 0x7f0b0057
invoke-virtual {p0, v2}, Lcom/facebook/katana/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_18
:cond_17
:goto_17
return-void
:cond_18
const v2, 0x7f0b0058
invoke-virtual {p0, v2}, Lcom/facebook/katana/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_17
const/4 v2, 0x1
invoke-virtual {p0, v2}, Lcom/facebook/katana/LoginActivity;->showDialog(I)V
new-instance v2, Lcom/facebook/katana/binding/AppSession;
invoke-direct {v2}, Lcom/facebook/katana/binding/AppSession;-><init>()V
iput-object v2, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/LoginActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v2, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v2, p0, v3, v0, v4}, Lcom/facebook/katana/binding/AppSession;->authLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
goto :goto_17
.end method
.method public static loginIntent(Landroid/content/Context;)Landroid/content/Intent;
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/LoginActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "android.intent.action.VIEW"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
return-object v0
.end method
.method private startNextActivity()V
.registers 6
const-string v3, "add_account"
const-string v4, "com.facebook.katana.continuation_intent"
invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_43
invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->getContactsSyncSetupDisplayed(Landroid/content/Context;)Z
move-result v2
if-nez v2, :cond_43
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/facebook/katana/SyncContactsSetupActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "add_account"
iget-boolean v2, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountMode:Z
invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-boolean v2, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountMode:Z
if-eqz v2, :cond_2c
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-static {v2, v1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->copyCallback(Landroid/content/Intent;Landroid/content/Intent;)V
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountHandled:Z
:cond_2c
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "com.facebook.katana.continuation_intent"
invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
if-eqz v0, :cond_3f
const-string v2, "com.facebook.katana.continuation_intent"
invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:cond_3f
invoke-virtual {p0, v1}, Lcom/facebook/katana/LoginActivity;->startActivity(Landroid/content/Intent;)V
:goto_42
return-void
:cond_43
invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->getHintsDisplayed(Landroid/content/Context;)Z
move-result v2
if-nez v2, :cond_6e
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/facebook/katana/HelpfulHintsActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "add_account"
iget-boolean v2, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountMode:Z
invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "com.facebook.katana.continuation_intent"
invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
if-eqz v0, :cond_6a
const-string v2, "com.facebook.katana.continuation_intent"
invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:cond_6a
invoke-virtual {p0, v1}, Lcom/facebook/katana/LoginActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_42
:cond_6e
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "com.facebook.katana.continuation_intent"
invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Landroid/content/Intent;
invoke-static {p0, v2}, Lcom/facebook/katana/util/ApplicationUtils;->startDefaultActivity(Landroid/content/Context;Landroid/content/Intent;)V
goto :goto_42
.end method
.method public static toLogin(Landroid/app/Activity;)V
.registers 2
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->loginIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Landroid/app/Activity;->finish()V
return-void
.end method
.method public static toLogin(Landroid/app/Activity;Landroid/content/Intent;)V
.registers 4
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->loginIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
if-eqz p1, :cond_b
const-string v1, "com.facebook.katana.continuation_intent"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:cond_b
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Landroid/app/Activity;->finish()V
return-void
.end method
.method public facebookOnBackPressed()Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/katana/LoginActivity;->mTransitioningToBackground:Z
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->finish()V
return v0
.end method
.method public bridge synthetic finish()V
.registers 1
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/LoginActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_1e
:goto_7
const-string v1, " - Lcom/facebook/katana/LoginActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-direct {p0}, Lcom/facebook/katana/LoginActivity;->login()V
goto :goto_7
:pswitch_c
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
const-string v2, "http://m.facebook.com/r.php"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v0}, Lcom/facebook/katana/LoginActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
nop
:pswitch_data_1e
.packed-switch 0x7f0b0059
:pswitch_8
:pswitch_c
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 15
const-string v1, " + Lcom/facebook/katana/LoginActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v12, 0x1
const/4 v11, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
const-string v10, "add_account"
invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v9
iput-boolean v9, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountMode:Z
invoke-static {p0}, Lcom/facebook/katana/VersionTasks;->getInstance(Landroid/content/Context;)Lcom/facebook/katana/VersionTasks;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/VersionTasks;->executeUpgrades()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v6
if-eqz v6, :cond_2f
invoke-static {}, Lcom/facebook/katana/LoginActivity;->$SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus()[I
move-result-object v9
invoke-virtual {v6}, Lcom/facebook/katana/binding/AppSession;->getStatus()Lcom/facebook/katana/binding/AppSession$LoginStatus;
move-result-object v10
invoke-virtual {v10}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v10
aget v9, v9, v10
packed-switch v9, :pswitch_data_f4
:cond_2f
invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->getRegisterRingtone(Landroid/content/Context;)Z
move-result v9
if-nez v9, :cond_53
:try_start_35
invoke-static {p0}, Lcom/facebook/katana/util/RingtoneUtils;->createFacebookRingtone(Landroid/content/Context;)Landroid/net/Uri;
move-result-object v4
if-eqz v4, :cond_53
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v9
invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v9, "ringtone"
invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v10
invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const/4 v9, 0x1
invoke-static {p0, v9}, Lcom/facebook/katana/provider/UserValuesManager;->setRegisterRingtone(Landroid/content/Context;Z)V
:cond_53
:goto_53
:try_end_53
.catch Ljava/io/IOException; {:try_start_35 .. :try_end_53} :catch_f1
iget-boolean v9, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountMode:Z
if-eqz v9, :cond_8c
invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z
move-result v9
if-eqz v9, :cond_8c
invoke-static {p0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->getAccountsCount(Landroid/content/Context;)I
move-result v9
if-lez v9, :cond_8c
const v9, 0x7f080073
invoke-virtual {p0, v9}, Lcom/facebook/katana/LoginActivity;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {p0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v9
invoke-virtual {v9}, Landroid/widget/Toast;->show()V
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->finish()V
:goto_74
const-string v1, " - Lcom/facebook/katana/LoginActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_75
iget-boolean v9, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountMode:Z
if-nez v9, :cond_2f
new-instance v3, Landroid/content/Intent;
const-class v9, Lcom/facebook/katana/HomeActivity;
invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v9, "android.intent.action.VIEW"
invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v3}, Lcom/facebook/katana/LoginActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->finish()V
goto :goto_74
:cond_8c
const v9, 0x7f030021
invoke-virtual {p0, v9}, Lcom/facebook/katana/LoginActivity;->setContentView(I)V
const v9, 0x7f0b00b4
invoke-virtual {p0, v9}, Lcom/facebook/katana/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/ImageButton;
const/16 v9, 0x8
invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V
const v9, 0x7f0b00b1
invoke-virtual {p0, v9}, Lcom/facebook/katana/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageButton;
invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V
const v9, 0x7f0b0059
invoke-virtual {p0, v9}, Lcom/facebook/katana/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v9
invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v9, 0x7f0b005a
invoke-virtual {p0, v9}, Lcom/facebook/katana/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v9
invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getUsernameHint(Landroid/content/Context;)Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_de
const v9, 0x7f0b0057
invoke-virtual {p0, v9}, Lcom/facebook/katana/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const v9, 0x7f0b0058
invoke-virtual {p0, v9}, Lcom/facebook/katana/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z
:cond_de
if-eqz p1, :cond_e8
const-string v9, "error_message"
invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/facebook/katana/LoginActivity;->mErrorMessage:Ljava/lang/String;
:cond_e8
new-instance v9, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;
const/4 v10, 0x0
invoke-direct {v9, p0, v10}, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;-><init>(Lcom/facebook/katana/LoginActivity;Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;)V
iput-object v9, p0, Lcom/facebook/katana/LoginActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
goto :goto_74
:catch_f1
move-exception v9
goto/16 :goto_53
:pswitch_data_f4
.packed-switch 0x3
:pswitch_75
.end packed-switch
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 13
const/4 v9, 0x1
const/4 v1, 0x0
const/4 v5, 0x0
packed-switch p1, :pswitch_data_48
move-object v0, v5
:goto_7
return-object v0
:pswitch_8
new-instance v10, Landroid/app/ProgressDialog;
invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v0, 0x7f080080
invoke-virtual {p0, v0}, Lcom/facebook/katana/LoginActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v0, v10
goto :goto_7
:pswitch_22
const v0, 0x7f08007f
invoke-virtual {p0, v0}, Lcom/facebook/katana/LoginActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v2, 0x1080027
iget-object v3, p0, Lcom/facebook/katana/LoginActivity;->mErrorMessage:Ljava/lang/String;
const v0, 0x7f0800bf
invoke-virtual {p0, v0}, Lcom/facebook/katana/LoginActivity;->getString(I)Ljava/lang/String;
move-result-object v4
move-object v0, p0
move-object v6, v5
move-object v7, v5
move-object v8, v5
invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
move-result-object v0
goto :goto_7
:pswitch_3e
new-instance v10, Lcom/facebook/katana/EulaDialog;
invoke-direct {v10, p0}, Lcom/facebook/katana/EulaDialog;-><init>(Landroid/app/Activity;)V
invoke-virtual {v10}, Lcom/facebook/katana/EulaDialog;->getDialog()Landroid/app/Dialog;
move-result-object v0
goto :goto_7
:pswitch_data_48
.packed-switch 0x1
:pswitch_8
:pswitch_22
:pswitch_3e
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/LoginActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const/16 v0, 0x65
const v1, 0x7f080072
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x1080041
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/facebook/katana/LoginActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onDestroy()V
.registers 4
const-string v1, " + Lcom/facebook/katana/LoginActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_19
iget-boolean v0, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountMode:Z
if-eqz v0, :cond_19
iget-boolean v0, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountHandled:Z
if-nez v0, :cond_19
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const/16 v1, 0x190
const-string v2, "User canceled"
invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->addAccountError(Landroid/content/Intent;ILjava/lang/String;)V
:cond_19
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onDestroy()V
const-string v1, " - Lcom/facebook/katana/LoginActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/LoginActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_18
:goto_7
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/facebook/katana/LoginActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/HtmlAboutActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/facebook/katana/LoginActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
nop
:pswitch_data_18
.packed-switch 0x65
:pswitch_c
.end packed-switch
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/LoginActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onPause()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/LoginActivity;->mForeground:Z
iget-object v0, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/LoginActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_11
const-string v1, " - Lcom/facebook/katana/LoginActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/facebook/katana/LoginActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onResume()V
iput-boolean v2, p0, Lcom/facebook/katana/LoginActivity;->mForeground:Z
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_3d
invoke-static {}, Lcom/facebook/katana/LoginActivity;->$SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus()[I
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getStatus()Lcom/facebook/katana/binding/AppSession$LoginStatus;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_4c
invoke-virtual {p0, v2}, Lcom/facebook/katana/LoginActivity;->removeDialog(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
:cond_29
:goto_29
const-string v1, " - Lcom/facebook/katana/LoginActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_2a
iget-boolean v0, p0, Lcom/facebook/katana/LoginActivity;->mAddAccountMode:Z
if-nez v0, :cond_31
invoke-direct {p0}, Lcom/facebook/katana/LoginActivity;->startNextActivity()V
:cond_31
invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->finish()V
goto :goto_29
:pswitch_35
iget-object v0, p0, Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/LoginActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
goto :goto_29
:cond_3d
invoke-virtual {p0, v2}, Lcom/facebook/katana/LoginActivity;->removeDialog(I)V
invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->getEULAAgreed(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_29
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/facebook/katana/LoginActivity;->showDialog(I)V
goto :goto_29
nop
:pswitch_data_4c
.packed-switch 0x2
:pswitch_35
:pswitch_2a
.end packed-switch
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/katana/LoginActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/facebook/katana/LoginActivity;->mErrorMessage:Ljava/lang/String;
if-eqz v0, :cond_e
const-string v0, "error_message"
iget-object v1, p0, Lcom/facebook/katana/LoginActivity;->mErrorMessage:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/LoginActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public bridge synthetic startActivity(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method