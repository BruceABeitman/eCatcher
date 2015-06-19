.class public Lcom/fsck/k9/activity/setup/AccountSetupNames;
.super Lcom/fsck/k9/K9Activity;
.source "AccountSetupNames.java"
.implements Landroid/view/View$OnClickListener;
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"
.field private mAccount:Lcom/fsck/k9/Account;
.field private mDescription:Landroid/widget/EditText;
.field private mDoneButton:Landroid/widget/Button;
.field private mName:Landroid/widget/EditText;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupNames;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->validateFields()V
return-void
.end method
.method public static actionSetNames(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupNames;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "account"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private onNext()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;
invoke-static {v0}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setDescription(Ljava/lang/String;)V
:cond_17
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setName(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;
const-string v1, "INBOX"
invoke-static {p0, v0, v1}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->finish()V
return-void
.end method
.method private validateFields()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
invoke-static {v1}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z
move-result v1
if-eqz v1, :cond_1b
const/16 v1, 0xff
:goto_17
invoke-static {v0, v1}, Lcom/fsck/k9/Utility;->setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V
return-void
:cond_1b
const/16 v1, 0x80
goto :goto_17
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/setup/AccountSetupNames; onClick "
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
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupNames; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->onNext()V
goto :goto_7
:pswitch_data_c
.packed-switch 0x7f0b0023
:pswitch_8
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupNames; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030005
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->setContentView(I)V
const v1, 0x7f0b0022
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;
const v1, 0x7f0b000a
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
const v1, 0x7f0b0023
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;
invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupNames$1;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupNames;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;
invoke-static {v3, v2}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "account"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v1
check-cast v1, Lcom/fsck/k9/Account;
iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_66
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v2}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_66
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
invoke-static {v1}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z
move-result v1
if-nez v1, :cond_73
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V
:cond_73
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupNames; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method