.class public Lcom/fsck/k9/activity/setup/AccountSetupAccountType;
.super Lcom/fsck/k9/K9Activity;
.source "AccountSetupAccountType.java"
.implements Landroid/view/View$OnClickListener;
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"
.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"
.field private mAccount:Lcom/fsck/k9/Account;
.field private mMakeDefault:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V
return-void
.end method
.method public static actionSelectAccountType(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;
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
invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->getApplication()Landroid/app/Application;
move-result-object v2
invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method private onImap()V
.registers 11
:try_start_0
new-instance v8, Ljava/net/URI;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;
move-result-object v1
invoke-direct {v8, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/net/URI;
const-string v1, "imap"
invoke-virtual {v8}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v3
invoke-virtual {v8}, Ljava/net/URI;->getPort()I
move-result v4
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
iget-boolean v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mMakeDefault:Z
invoke-static {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->finish()V
:goto_34
:try_end_34
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35
return-void
:catch_35
move-exception v1
move-object v9, v1
invoke-direct {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->failure(Ljava/lang/Exception;)V
goto :goto_34
.end method
.method private onPop()V
.registers 11
:try_start_0
new-instance v8, Ljava/net/URI;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;
move-result-object v1
invoke-direct {v8, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/net/URI;
const-string v1, "pop3"
invoke-virtual {v8}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v3
invoke-virtual {v8}, Ljava/net/URI;->getPort()I
move-result v4
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
iget-boolean v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mMakeDefault:Z
invoke-static {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->finish()V
:goto_34
:try_end_34
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35
return-void
:catch_35
move-exception v1
move-object v9, v1
invoke-direct {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->failure(Ljava/lang/Exception;)V
goto :goto_34
.end method
.method private onWebDav()V
.registers 11
:try_start_0
new-instance v8, Ljava/net/URI;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;
move-result-object v1
invoke-direct {v8, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/net/URI;
const-string v1, "webdav"
invoke-virtual {v8}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v3
invoke-virtual {v8}, Ljava/net/URI;->getPort()I
move-result v4
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
iget-boolean v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mMakeDefault:Z
invoke-static {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->finish()V
:goto_34
:try_end_34
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35
return-void
:catch_35
move-exception v1
move-object v9, v1
invoke-direct {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->failure(Ljava/lang/Exception;)V
goto :goto_34
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/setup/AccountSetupAccountType; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_14
:goto_7
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupAccountType; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->onPop()V
goto :goto_7
:pswitch_c
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->onImap()V
goto :goto_7
:pswitch_10
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->onWebDav()V
goto :goto_7
:pswitch_data_14
.packed-switch 0x7f0b0000
:pswitch_8
:pswitch_c
:pswitch_10
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupAccountType; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V
const/high16 v0, 0x7f03
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->setContentView(I)V
const/high16 v0, 0x7f0b
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0b0001
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0b0002
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "account"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/fsck/k9/Account;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "makeDefault"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mMakeDefault:Z
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupAccountType; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method