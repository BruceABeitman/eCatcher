.class public Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
.super Lcom/fsck/k9/K9Activity;
.source "AccountSetupOutgoing.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"
.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"
.field private static final authTypes:[Ljava/lang/String;
.field private static final smtpPorts:[I
.field private static final smtpSchemes:[Ljava/lang/String;
.field private static final webdavPorts:[I
.field private static final webdavSchemes:[Ljava/lang/String;
.field private mAccount:Lcom/fsck/k9/Account;
.field private mAuthTypeView:Landroid/widget/Spinner;
.field private mMakeDefault:Z
.field private mNextButton:Landroid/widget/Button;
.field private mPasswordView:Landroid/widget/EditText;
.field private mPortView:Landroid/widget/EditText;
.field private mRequireLoginSettingsView:Landroid/view/ViewGroup;
.field private mRequireLoginView:Landroid/widget/CheckBox;
.field private mSecurityTypeView:Landroid/widget/Spinner;
.field private mServerView:Landroid/widget/EditText;
.field private mUsernameView:Landroid/widget/EditText;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, 0x5
new-array v0, v3, [I
fill-array-data v0, :array_52
sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->smtpPorts:[I
new-array v0, v3, [Ljava/lang/String;
const-string v1, "smtp"
aput-object v1, v0, v4
const-string v1, "smtp+ssl"
aput-object v1, v0, v5
const-string v1, "smtp+ssl+"
aput-object v1, v0, v6
const-string v1, "smtp+tls"
aput-object v1, v0, v7
const/4 v1, 0x4
const-string v2, "smtp+tls+"
aput-object v2, v0, v1
sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;
new-array v0, v3, [I
fill-array-data v0, :array_60
sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->webdavPorts:[I
new-array v0, v3, [Ljava/lang/String;
const-string v1, "webdav"
aput-object v1, v0, v4
const-string v1, "webdav+ssl"
aput-object v1, v0, v5
const-string v1, "webdav+ssl+"
aput-object v1, v0, v6
const-string v1, "webdav+tls"
aput-object v1, v0, v7
const/4 v1, 0x4
const-string v2, "webdav+tls+"
aput-object v2, v0, v1
sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->webdavSchemes:[Ljava/lang/String;
new-array v0, v6, [Ljava/lang/String;
const-string v1, "PLAIN"
aput-object v1, v0, v4
const-string v1, "CRAM_MD5"
aput-object v1, v0, v5
sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->authTypes:[Ljava/lang/String;
return-void
:array_60
.array-data 0x4
0x50t 0x0t 0x0t 0x0t
0xbbt 0x1t 0x0t 0x0t
0xbbt 0x1t 0x0t 0x0t
0xbbt 0x1t 0x0t 0x0t
0xbbt 0x1t 0x0t 0x0t
.end array-data
:array_52
.array-data 0x4
0x19t 0x0t 0x0t 0x0t
0xd1t 0x1t 0x0t 0x0t
0xd1t 0x1t 0x0t 0x0t
0x19t 0x0t 0x0t 0x0t
0x19t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V
return-void
.end method
.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validateFields()V
return-void
.end method
.method public static actionEditOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "android.intent.action.EDIT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "account"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static actionOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "account"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const-string v1, "makeDefault"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private failure(Ljava/lang/Exception;)V
.registers 9
const/4 v6, 0x1
const-string v2, "k9"
const-string v3, "Failure"
invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const v2, 0x7f08010c
new-array v3, v6, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getApplication()Landroid/app/Application;
move-result-object v2
invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method private onNext()V
.registers 12
const-string v1, ":"
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;
invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/setup/SpinnerOption;
iget-object v1, v1, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v10
const/4 v2, 0x0
:try_start_13
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;
invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/setup/SpinnerOption;
iget-object v8, v1, Lcom/fsck/k9/activity/setup/SpinnerOption;->label:Ljava/lang/String;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
if-eqz v1, :cond_5a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:cond_5a
new-instance v0, Ljava/net/URI;
sget-object v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;
aget-object v1, v1, v10
iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
const/4 v3, 0x0
const/4 v4, 0x1
invoke-static {p0, v1, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;ZZ)V
:try_end_8e
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_8e} :catch_8f
:goto_8e
return-void
:catch_8f
move-exception v1
move-object v9, v1
invoke-direct {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->failure(Ljava/lang/Exception;)V
goto :goto_8e
.end method
.method private updatePortFromSecurityType()V
.registers 4
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;
invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/setup/SpinnerOption;
iget-object v1, v1, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;
sget-object v2, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->smtpPorts:[I
aget v2, v2, v0
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method private validateFields()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;
invoke-static {v1}, Lcom/fsck/k9/Utility;->domainFieldValid(Landroid/widget/EditText;)Z
move-result v1
if-eqz v1, :cond_3e
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;
invoke-static {v1}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z
move-result v1
if-eqz v1, :cond_3e
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
if-eqz v1, :cond_2a
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;
invoke-static {v1}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z
move-result v1
if-eqz v1, :cond_3e
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;
invoke-static {v1}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z
move-result v1
if-eqz v1, :cond_3e
:cond_2a
const/4 v1, 0x1
:goto_2b
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z
move-result v1
if-eqz v1, :cond_40
const/16 v1, 0xff
:goto_3a
invoke-static {v0, v1}, Lcom/fsck/k9/Utility;->setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V
return-void
:cond_3e
const/4 v1, 0x0
goto :goto_2b
:cond_40
const/16 v1, 0x80
goto :goto_3a
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 6
const/4 v0, -0x1
if-ne p2, v0, :cond_1f
const-string v0, "android.intent.action.EDIT"
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->finish()V
:cond_1f
:goto_1f
return-void
:cond_20
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
iget-boolean v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mMakeDefault:Z
invoke-static {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->actionOptions(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->finish()V
goto :goto_1f
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;
if-eqz p2, :cond_c
const/4 v1, 0x0
:goto_5
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validateFields()V
return-void
:cond_c
const/16 v1, 0x8
goto :goto_5
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/setup/AccountSetupOutgoing; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_c
:goto_7
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupOutgoing; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->onNext()V
goto :goto_7
:pswitch_data_c
.packed-switch 0x7f0b0005
:pswitch_8
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 22
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupOutgoing; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super/range {p0 .. p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V
const v16, 0x7f030007
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->setContentView(I)V
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;
move-result-object v16
const-string v17, "account"
invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v4
check-cast v4, Lcom/fsck/k9/Account;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
:try_start_1e
new-instance v16, Ljava/net/URI;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;
move-result-object v17
invoke-direct/range {v16 .. v17}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v16
const-string v17, "webdav"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v16
if-eqz v16, :cond_61
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
move-object/from16 v16, v0
const/16 v17, 0x0
const/16 v18, 0x1
move-object/from16 v0, p0
move-object/from16 v1, v16
move/from16 v2, v17
move/from16 v3, v18
invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;ZZ)V
:try_end_61
.catch Ljava/net/URISyntaxException; {:try_start_1e .. :try_end_61} :catch_34d
:cond_61
:goto_61
const v16, 0x7f0b0010
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/EditText;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;
const v16, 0x7f0b0004
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/EditText;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;
const v16, 0x7f0b0012
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/EditText;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;
const v16, 0x7f0b0015
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/EditText;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;
const v16, 0x7f0b0029
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/CheckBox;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;
const v16, 0x7f0b002a
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/view/ViewGroup;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;
const v16, 0x7f0b0013
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/Spinner;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;
const v16, 0x7f0b0014
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/Spinner;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;
const v16, 0x7f0b0005
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/Button;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const/16 v16, 0x5
move/from16 v0, v16
new-array v0, v0, [Lcom/fsck/k9/activity/setup/SpinnerOption;
move-object v10, v0
const/16 v16, 0x0
new-instance v17, Lcom/fsck/k9/activity/setup/SpinnerOption;
const/16 v18, 0x0
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
const v19, 0x7f0800df
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v17 .. v19}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
aput-object v17, v10, v16
const/16 v16, 0x1
new-instance v17, Lcom/fsck/k9/activity/setup/SpinnerOption;
const/16 v18, 0x1
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
const v19, 0x7f0800e0
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v17 .. v19}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
aput-object v17, v10, v16
const/16 v16, 0x2
new-instance v17, Lcom/fsck/k9/activity/setup/SpinnerOption;
const/16 v18, 0x2
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
const v19, 0x7f0800e1
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v17 .. v19}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
aput-object v17, v10, v16
const/16 v16, 0x3
new-instance v17, Lcom/fsck/k9/activity/setup/SpinnerOption;
const/16 v18, 0x3
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
const v19, 0x7f0800e2
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v17 .. v19}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
aput-object v17, v10, v16
const/16 v16, 0x4
new-instance v17, Lcom/fsck/k9/activity/setup/SpinnerOption;
const/16 v18, 0x4
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
const v19, 0x7f0800e3
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v17 .. v19}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
aput-object v17, v10, v16
const/16 v16, 0x2
move/from16 v0, v16
new-array v0, v0, [Lcom/fsck/k9/activity/setup/SpinnerOption;
move-object v5, v0
const/16 v16, 0x0
new-instance v17, Lcom/fsck/k9/activity/setup/SpinnerOption;
const/16 v18, 0x0
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
const-string v19, "PLAIN"
invoke-direct/range {v17 .. v19}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
aput-object v17, v5, v16
const/16 v16, 0x1
new-instance v17, Lcom/fsck/k9/activity/setup/SpinnerOption;
const/16 v18, 0x1
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
const-string v19, "CRAM_MD5"
invoke-direct/range {v17 .. v19}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
aput-object v17, v5, v16
new-instance v11, Landroid/widget/ArrayAdapter;
const v16, 0x1090008
move-object v0, v11
move-object/from16 v1, p0
move/from16 v2, v16
move-object v3, v10
invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
const v16, 0x1090009
move-object v0, v11
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v11
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
new-instance v6, Landroid/widget/ArrayAdapter;
const v16, 0x1090008
move-object v0, v6
move-object/from16 v1, p0
move/from16 v2, v16
move-object v3, v5
invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
const v16, 0x1090009
move-object v0, v6
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v6
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;
move-object/from16 v16, v0
new-instance v17, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;
move-object/from16 v0, v17
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
new-instance v15, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;
move-object v0, v15
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v15
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v15
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v15
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v15
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;
move-object/from16 v16, v0
const-string v17, "0123456789"
invoke-static/range {v17 .. v17}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;
move-result-object v16
const-string v17, "account"
invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v4
check-cast v4, Lcom/fsck/k9/Account;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;
move-result-object v16
const-string v17, "makeDefault"
const/16 v18, 0x0
invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v16
move/from16 v0, v16
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mMakeDefault:Z
if-eqz p1, :cond_2b1
const-string v16, "account"
move-object/from16 v0, p1
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v16
if-eqz v16, :cond_2b1
const-string v16, "account"
move-object/from16 v0, p1
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object p1
check-cast p1, Lcom/fsck/k9/Account;
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
:cond_2b1
:try_start_2b1
new-instance v12, Ljava/net/URI;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;
move-result-object v16
move-object v0, v12
move-object/from16 v1, v16
invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
const/4 v14, 0x0
const/4 v9, 0x0
const/4 v4, 0x0
invoke-virtual {v12}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v16
if-eqz v16, :cond_2fa
invoke-virtual {v12}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v16
const-string v17, ":"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v13
const/16 v16, 0x0
aget-object v14, v13, v16
move-object v0, v13
array-length v0, v0
move/from16 v16, v0
const/16 v17, 0x1
move/from16 v0, v16
move/from16 v1, v17
if-le v0, v1, :cond_2ea
const/16 v16, 0x1
aget-object v9, v13, v16
:cond_2ea
move-object v0, v13
array-length v0, v0
move/from16 v16, v0
const/16 v17, 0x2
move/from16 v0, v16
move/from16 v1, v17
if-le v0, v1, :cond_2fa
const/16 v16, 0x2
aget-object v4, v13, v16
:cond_2fa
if-eqz v14, :cond_313
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v14
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;
move-object/from16 v16, v0
const/16 v17, 0x1
invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setChecked(Z)V
:cond_313
if-eqz v9, :cond_321
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;
move-object/from16 v16, v0
move-object/from16 v0, v16
move-object v1, v9
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_321
if-eqz v4, :cond_355
const/4 v8, 0x0
:goto_324
sget-object v16, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->authTypes:[Ljava/lang/String;
move-object/from16 v0, v16
array-length v0, v0
move/from16 v16, v0
move v0, v8
move/from16 v1, v16
if-ge v0, v1, :cond_355
sget-object v16, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->authTypes:[Ljava/lang/String;
aget-object v16, v16, v8
move-object/from16 v0, v16
move-object v1, v4
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v16
if-eqz v16, :cond_34a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;
move-object/from16 v16, v0
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
invoke-static/range {v16 .. v17}, Lcom/fsck/k9/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V
:cond_34a
:try_end_34a
.catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_34a} :catch_3b8
add-int/lit8 v8, v8, 0x1
goto :goto_324
:catch_34d
move-exception v16
move-object/from16 v7, v16
invoke-virtual {v7}, Ljava/net/URISyntaxException;->printStackTrace()V
goto/16 :goto_61
:cond_355
const/4 v8, 0x0
:goto_356
:try_start_356
sget-object v16, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;
move-object/from16 v0, v16
array-length v0, v0
move/from16 v16, v0
move v0, v8
move/from16 v1, v16
if-ge v0, v1, :cond_380
sget-object v16, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;
aget-object v16, v16, v8
invoke-virtual {v12}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v16
if-eqz v16, :cond_37d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;
move-object/from16 v16, v0
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
invoke-static/range {v16 .. v17}, Lcom/fsck/k9/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V
:cond_37d
add-int/lit8 v8, v8, 0x1
goto :goto_356
:cond_380
invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v16
if-eqz v16, :cond_393
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;
move-object/from16 v16, v0
invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_393
invoke-virtual {v12}, Ljava/net/URI;->getPort()I
move-result v16
const/16 v17, -0x1
move/from16 v0, v16
move/from16 v1, v17
if-eq v0, v1, :cond_3b4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;
move-object/from16 v16, v0
invoke-virtual {v12}, Ljava/net/URI;->getPort()I
move-result v17
invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:goto_3b0
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validateFields()V
:goto_3b3
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupOutgoing; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3b4
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V
:try_end_3b7
.catch Ljava/lang/Exception; {:try_start_356 .. :try_end_3b7} :catch_3b8
goto :goto_3b0
:catch_3b8
move-exception v16
move-object/from16 v7, v16
move-object/from16 v0, p0
move-object v1, v7
invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->failure(Ljava/lang/Exception;)V
goto :goto_3b3
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupOutgoing; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "account"
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupOutgoing; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method