.class public Lcom/fsck/k9/activity/setup/AccountSetupBasics;
.super Lcom/fsck/k9/K9Activity;
.source "AccountSetupBasics.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.field private static final DIALOG_NOTE:I = 0x1
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.AccountSetupBasics.account"
.field private static final STATE_KEY_PROVIDER:Ljava/lang/String; = "com.fsck.k9.AccountSetupBasics.provider"
.field private mAccount:Lcom/fsck/k9/Account;
.field private mDefaultView:Landroid/widget/CheckBox;
.field private mEmailValidator:Lcom/fsck/k9/EmailAddressValidator;
.field private mEmailView:Landroid/widget/EditText;
.field private mManualSetupButton:Landroid/widget/Button;
.field private mNextButton:Landroid/widget/Button;
.field private mPasswordView:Landroid/widget/EditText;
.field private mPrefs:Lcom/fsck/k9/Preferences;
.field private mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V
new-instance v0, Lcom/fsck/k9/EmailAddressValidator;
invoke-direct {v0}, Lcom/fsck/k9/EmailAddressValidator;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/fsck/k9/EmailAddressValidator;
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finishAutoSetup()V
return-void
.end method
.method public static actionNewAccount(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private findProviderForDomain(Ljava/lang/String;)Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
.registers 9
const/4 v6, 0x2
const-string v4, "username"
const-string v4, "uri"
const-string v4, "provider"
const-string v4, "domain"
:try_start_9
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f040003
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
move-result-object v2
const/4 v1, 0x0
:cond_15
:goto_15
invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
move-result v3
const/4 v4, 0x1
if-eq v3, v4, :cond_65
if-ne v3, v6, :cond_67
const-string v4, "provider"
invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_67
const-string v4, "domain"
invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_67
new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
invoke-direct {v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;-><init>()V
const-string v4, "id"
invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->id:Ljava/lang/String;
const-string v4, "label"
invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->label:Ljava/lang/String;
const-string v4, "domain"
invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->domain:Ljava/lang/String;
const-string v4, "note"
invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->note:Ljava/lang/String;
:try_end_5b
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5b} :catch_5c
goto :goto_15
:catch_5c
move-exception v4
move-object v0, v4
const-string v4, "k9"
const-string v5, "Error while trying to load provider settings."
invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_65
const/4 v4, 0x0
:goto_66
return-object v4
:cond_67
if-ne v3, v6, :cond_8d
:try_start_69
const-string v4, "incoming"
invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_8d
if-eqz v1, :cond_8d
new-instance v4, Ljava/net/URI;
const-string v5, "uri"
invoke-direct {p0, v2, v5}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->incomingUriTemplate:Ljava/net/URI;
const-string v4, "username"
invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->incomingUsernameTemplate:Ljava/lang/String;
goto :goto_15
:cond_8d
if-ne v3, v6, :cond_b4
const-string v4, "outgoing"
invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_b4
if-eqz v1, :cond_b4
new-instance v4, Ljava/net/URI;
const-string v5, "uri"
invoke-direct {p0, v2, v5}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->outgoingUriTemplate:Ljava/net/URI;
const-string v4, "username"
invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->outgoingUsernameTemplate:Ljava/lang/String;
goto/16 :goto_15
:cond_b4
const/4 v4, 0x3
if-ne v3, v4, :cond_15
const-string v4, "provider"
invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_c0
.catch Ljava/lang/Exception; {:try_start_69 .. :try_end_c0} :catch_5c
move-result v4
if-eqz v4, :cond_15
if-eqz v1, :cond_15
move-object v4, v1
goto :goto_66
.end method
.method private finishAutoSetup()V
.registers 26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
move-object v6, v0
invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;
move-object v6, v0
invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v22
move-object/from16 v0, p0
move-object v1, v14
invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->splitEmail(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v15
const/4 v6, 0x0
aget-object v24, v15, v6
const/4 v6, 0x1
aget-object v13, v15, v6
const/16 v16, 0x0
const/16 v19, 0x0
:try_start_2b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
move-object v6, v0
move-object v0, v6
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->incomingUsernameTemplate:Ljava/lang/String;
move-object/from16 v18, v0
const-string v6, "\\$email"
move-object/from16 v0, v18
move-object v1, v6
move-object v2, v14
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
const-string v6, "\\$user"
move-object/from16 v0, v18
move-object v1, v6
move-object/from16 v2, v24
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
const-string v6, "\\$domain"
move-object/from16 v0, v18
move-object v1, v6
move-object v2, v13
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
move-object v6, v0
move-object v0, v6
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->incomingUriTemplate:Ljava/net/URI;
move-object/from16 v17, v0
new-instance v4, Ljava/net/URI;
invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, v6
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ":"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object v0, v6
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v7
invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I
move-result v8
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
invoke-direct/range {v4 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_8f
.catch Ljava/net/URISyntaxException; {:try_start_2b .. :try_end_8f} :catch_184
:try_start_8f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
move-object v6, v0
move-object v0, v6
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->outgoingUsernameTemplate:Ljava/lang/String;
move-object/from16 v21, v0
const-string v6, "\\$email"
move-object/from16 v0, v21
move-object v1, v6
move-object v2, v14
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
const-string v6, "\\$user"
move-object/from16 v0, v21
move-object v1, v6
move-object/from16 v2, v24
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
const-string v6, "\\$domain"
move-object/from16 v0, v21
move-object v1, v6
move-object v2, v13
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
move-object v6, v0
move-object v0, v6
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->outgoingUriTemplate:Ljava/net/URI;
move-object/from16 v20, v0
new-instance v5, Ljava/net/URI;
invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, v7
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ":"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
move-object v0, v7
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v8
invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->getPort()I
move-result v9
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_f3
.catch Ljava/net/URISyntaxException; {:try_start_8f .. :try_end_f3} :catch_18f
new-instance v6, Lcom/fsck/k9/Account;
move-object v0, v6
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/fsck/k9/Account;-><init>(Landroid/content/Context;)V
move-object v0, v6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/fsck/k9/Account;->setName(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
invoke-virtual {v6, v14}, Lcom/fsck/k9/Account;->setEmail(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
const v7, 0x7f080074
move-object/from16 v0, p0
move v1, v7
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/fsck/k9/Account;->setDraftsFolderName(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
const v7, 0x7f080075
move-object/from16 v0, p0
move v1, v7
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/fsck/k9/Account;->setTrashFolderName(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
const v7, 0x7f080073
move-object/from16 v0, p0
move v1, v7
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/fsck/k9/Account;->setOutboxFolderName(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
const v7, 0x7f080076
move-object/from16 v0, p0
move v1, v7
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/fsck/k9/Account;->setSentFolderName(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
move-object v6, v0
const/4 v7, 0x1
const/4 v8, 0x1
move-object/from16 v0, p0
move-object v1, v6
move v2, v7
move v3, v8
invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;ZZ)V
:goto_183
return-void
:catch_184
move-exception v6
move-object/from16 v23, v6
move-object/from16 v4, v16
:goto_189
invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onManualSetup()V
move-object/from16 v5, v19
goto :goto_183
:catch_18f
move-exception v6
move-object/from16 v23, v6
goto :goto_189
.end method
.method private getDefaultAccountName()Ljava/lang/String;
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v2
invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;
move-result-object v1
:cond_f
return-object v1
.end method
.method private getOwnerName()Ljava/lang/String;
.registers 11
const-string v9, "k9"
const/4 v8, 0x0
const/4 v0, 0x1
:try_start_4
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "name"
aput-object v1, v2, v0
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;
const-string v3, "owner"
invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_2f
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v0, 0x0
invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_2f
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_40
:goto_2f
if-eqz v8, :cond_37
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_3b
:try_start_37
:cond_37
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getDefaultAccountName()Ljava/lang/String;
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_4a
move-result-object v8
:goto_3b
:cond_3b
if-nez v8, :cond_3f
const-string v8, ""
:cond_3f
return-object v8
:catch_40
move-exception v0
move-object v7, v0
const-string v0, "k9"
const-string v0, "Could not get owner name, using default account name"
invoke-static {v9, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2f
:catch_4a
move-exception v7
const-string v0, "k9"
const-string v0, "Could not get default account name"
invoke-static {v9, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3b
.end method
.method private getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
.registers 6
const/4 v2, 0x0
const/4 v1, 0x0
invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
move-result v0
if-nez v0, :cond_d
invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:goto_c
return-object v1
:cond_d
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v1
goto :goto_c
.end method
.method private onManualSetup()V
.registers 14
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v9
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->splitEmail(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v10
const/4 v1, 0x0
aget-object v12, v10, v1
const/4 v1, 0x1
aget-object v8, v10, v1
new-instance v1, Lcom/fsck/k9/Account;
invoke-direct {v1, p0}, Lcom/fsck/k9/Account;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1, v9}, Lcom/fsck/k9/Account;->setEmail(Ljava/lang/String;)V
:try_start_33
new-instance v0, Ljava/net/URI;
const-string v1, "placeholder"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "mail."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, -0x1
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V
:goto_7a
:try_end_7a
.catch Ljava/net/URISyntaxException; {:try_start_33 .. :try_end_7a} :catch_b9
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
const v2, 0x7f080074
invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setDraftsFolderName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
const v2, 0x7f080075
invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setTrashFolderName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
const v2, 0x7f080073
invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setOutboxFolderName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
const v2, 0x7f080076
invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setSentFolderName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z
move-result v2
invoke-static {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finish()V
return-void
:catch_b9
move-exception v1
goto :goto_7a
.end method
.method private onNext()V
.registers 8
const/4 v6, 0x1
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;
invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->splitEmail(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v5, 0x0
aget-object v4, v2, v5
aget-object v0, v2, v6
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findProviderForDomain(Ljava/lang/String;)Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
move-result-object v5
iput-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
if-nez v5, :cond_2c
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onManualSetup()V
:goto_2b
return-void
:cond_2c
iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
iget-object v5, v5, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->note:Ljava/lang/String;
if-eqz v5, :cond_36
invoke-virtual {p0, v6}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->showDialog(I)V
goto :goto_2b
:cond_36
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finishAutoSetup()V
goto :goto_2b
.end method
.method private splitEmail(Ljava/lang/String;)[Ljava/lang/String;
.registers 8
const/4 v4, 0x0
const/4 v3, 0x1
const-string v5, ""
const/4 v2, 0x2
new-array v1, v2, [Ljava/lang/String;
const-string v2, "@"
invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v2, v0
if-lez v2, :cond_1c
aget-object v2, v0, v4
:goto_12
aput-object v2, v1, v4
array-length v2, v0
if-le v2, v3, :cond_20
aget-object v2, v0, v3
:goto_19
aput-object v2, v1, v3
return-object v1
:cond_1c
const-string v2, ""
move-object v2, v5
goto :goto_12
:cond_20
const-string v2, ""
move-object v2, v5
goto :goto_19
.end method
.method private validateFields()V
.registers 5
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
invoke-static {v2}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z
move-result v2
if-eqz v2, :cond_3e
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;
invoke-static {v2}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z
move-result v2
if-eqz v2, :cond_3e
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/fsck/k9/EmailAddressValidator;
invoke-virtual {v2, v0}, Lcom/fsck/k9/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_3e
const/4 v2, 0x1
move v1, v2
:goto_24
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;
invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mManualSetupButton:Landroid/widget/Button;
invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;
iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;
invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z
move-result v3
if-eqz v3, :cond_41
const/16 v3, 0xff
:goto_3a
invoke-static {v2, v3}, Lcom/fsck/k9/Utility;->setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V
return-void
:cond_3e
const/4 v2, 0x0
move v1, v2
goto :goto_24
:cond_41
const/16 v3, 0x80
goto :goto_3a
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->validateFields()V
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 6
const/4 v0, -0x1
if-ne p2, v0, :cond_33
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setDescription(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_28
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->setDefaultAccount(Lcom/fsck/k9/Account;)V
:cond_28
invoke-static {p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->actionSetNames(Landroid/content/Context;Lcom/fsck/k9/Account;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finish()V
:cond_33
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/setup/AccountSetupBasics; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_10
:goto_7
:pswitch_7
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupBasics; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onNext()V
goto :goto_7
:pswitch_c
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onManualSetup()V
goto :goto_7
:pswitch_data_10
.packed-switch 0x7f0b0005
:pswitch_8
:pswitch_7
:pswitch_c
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupBasics; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v3, "com.fsck.k9.AccountSetupBasics.provider"
const-string v2, "com.fsck.k9.AccountSetupBasics.account"
invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030001
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->setContentView(I)V
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPrefs:Lcom/fsck/k9/Preferences;
const v0, 0x7f0b0003
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
const v0, 0x7f0b0004
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;
const v0, 0x7f0b0006
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
const v0, 0x7f0b0005
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;
const v0, 0x7f0b0007
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mManualSetupButton:Landroid/widget/Button;
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mManualSetupButton:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;
invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPrefs:Lcom/fsck/k9/Preferences;
invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;
move-result-object v0
array-length v0, v0
if-lez v0, :cond_6d
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V
:cond_6d
if-eqz p1, :cond_81
const-string v0, "com.fsck.k9.AccountSetupBasics.account"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_81
const-string v0, "com.fsck.k9.AccountSetupBasics.account"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/fsck/k9/Account;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
:cond_81
if-eqz p1, :cond_95
const-string v0, "com.fsck.k9.AccountSetupBasics.provider"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_95
const-string v0, "com.fsck.k9.AccountSetupBasics.provider"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
:cond_95
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupBasics; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateDialog(I)Landroid/app/Dialog;
.registers 6
const/4 v3, 0x0
const/4 v0, 0x1
if-ne p1, v0, :cond_3b
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->note:Ljava/lang/String;
if-eqz v0, :cond_3b
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
iget-object v1, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->note:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f080018
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;
invoke-direct {v2, p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f080019
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
:goto_3a
return-object v0
:cond_3b
move-object v0, v3
goto :goto_3a
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupBasics; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onResume()V
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->validateFields()V
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupBasics; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupBasics; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "com.fsck.k9.AccountSetupBasics.account"
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
if-eqz v0, :cond_15
const-string v0, "com.fsck.k9.AccountSetupBasics.provider"
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
:cond_15
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupBasics; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method