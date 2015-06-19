.class public Lcom/fsck/k9/activity/setup/AccountSetupIncoming;
.super Lcom/fsck/k9/K9Activity;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"

.field private static final SELECT_DRAFT_FOLDER:I = 0x64

.field private static final SELECT_OUTBOX_FOLDER:I = 0x67

.field private static final SELECT_SENT_FOLDER:I = 0x65

.field private static final SELECT_TRASH_FOLDER:I = 0x66

.field private static final authTypes:[Ljava/lang/String;

.field private static final imapPorts:[I

.field private static final imapSchemes:[Ljava/lang/String;

.field private static final popPorts:[I

.field private static final popSchemes:[Ljava/lang/String;

.field private static final webdavPorts:[I

.field private static final webdavSchemes:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mAccountPorts:[I

.field private mAccountSchemes:[Ljava/lang/String;

.field private mAuthTypeView:Landroid/widget/Spinner;

.field private mImapFolderDrafts:Landroid/widget/Button;

.field private mImapFolderOutbox:Landroid/widget/Button;

.field private mImapFolderSent:Landroid/widget/Button;

.field private mImapFolderTrash:Landroid/widget/Button;

.field private mImapPathPrefixView:Landroid/widget/EditText;

.field private mMakeDefault:Z

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mUsernameView:Landroid/widget/EditText;

.field private mWebdavAuthPathView:Landroid/widget/EditText;

.field private mWebdavMailboxPathView:Landroid/widget/EditText;

.field private mWebdavPathPrefixView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->popPorts:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pop3"

    aput-object v1, v0, v4

    const-string v1, "pop3+ssl"

    aput-object v1, v0, v5

    const-string v1, "pop3+ssl+"

    aput-object v1, v0, v6

    const-string v1, "pop3+tls"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "pop3+tls+"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->popSchemes:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->imapPorts:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "imap"

    aput-object v1, v0, v4

    const-string v1, "imap+ssl"

    aput-object v1, v0, v5

    const-string v1, "imap+ssl+"

    aput-object v1, v0, v6

    const-string v1, "imap+tls"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "imap+tls+"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->imapSchemes:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_8e

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->webdavPorts:[I

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

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->webdavSchemes:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "PLAIN"

    aput-object v1, v0, v4

    const-string v1, "CRAM_MD5"

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->authTypes:[Ljava/lang/String;

    return-void

    :array_72
    .array-data 0x4
        0x6et 0x0t 0x0t 0x0t
        0xe3t 0x3t 0x0t 0x0t
        0xe3t 0x3t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    :array_80
    .array-data 0x4
        0x8ft 0x0t 0x0t 0x0t
        0xe1t 0x3t 0x0t 0x0t
        0xe1t 0x3t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
    .end array-data

    :array_8e
    .array-data 0x4
        0x50t 0x0t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validateFields()V

    return-void
.end method

.method public static actionEditIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Z)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

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

    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onNext()V
    .registers 12

    const-string v1, "|"

    const-string v1, "imap"

    const-string v1, "/"

    const-string v1, ":"

    :try_start_8
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    aget-object v1, v1, v10

    const-string v3, "imap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    aget-object v1, v1, v10

    const-string v3, "imap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_152

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/setup/SpinnerOption;

    iget-object v8, v1, Lcom/fsck/k9/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_81
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderDrafts:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/Account;->setDraftsFolderName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderSent:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/Account;->setSentFolderName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderTrash:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/Account;->setTrashFolderName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderOutbox:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/Account;->setOutboxFolderName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;ZZ)V

    :goto_f0
    return-void

    :cond_f1
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    aget-object v1, v1, v10

    const-string v3, "webdav"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavAuthPathView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavMailboxPathView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3e

    :cond_152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_174} :catch_177

    move-result-object v2

    goto/16 :goto_81

    :catch_177
    move-exception v1

    move-object v9, v1

    invoke-direct {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->failure(Ljava/lang/Exception;)V

    goto/16 :goto_f0
.end method

.method private selectImapFolder(I)V
    .registers 8

    const-string v5, "yes"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_7e

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot select folder for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1f
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderDrafts:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "com.fsck.k9.ChooseFolder_showOptionNone"

    const-string v4, "yes"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    const-string v3, "com.fsck.k9.ChooseFolder_account"

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.ChooseFolder_curfolder"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.ChooseFolder_showcurrent"

    const-string v4, "yes"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_5c
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderSent:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :pswitch_67
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderTrash:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :pswitch_72
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderOutbox:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    nop

    :pswitch_data_7e
    .packed-switch 0x64
        :pswitch_1f
        :pswitch_5c
        :pswitch_67
        :pswitch_72
    .end packed-switch
.end method

.method private updatePortFromSecurityType()V
    .registers 4

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountPorts:[I

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountPorts:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    return-void
.end method

.method private validateFields()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/fsck/k9/Utility;->domainFieldValid(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/fsck/k9/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    :goto_23
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v1, 0xff

    :goto_32
    invoke-static {v0, v1}, Lcom/fsck/k9/Utility;->setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V

    return-void

    :cond_36
    const/4 v1, 0x0

    goto :goto_23

    :cond_38
    const/16 v1, 0x80

    goto :goto_32
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 13

    const-string v3, "com.fsck.k9.ChooseFolder_newfolder"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_24

    packed-switch p1, :pswitch_data_ae

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->finish()V

    :cond_24
    :goto_24
    return-void

    :pswitch_25
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderDrafts:Landroid/widget/Button;

    const-string v2, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    :pswitch_31
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderSent:Landroid/widget/Button;

    const-string v2, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    :pswitch_3d
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderTrash:Landroid/widget/Button;

    const-string v2, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    :pswitch_49
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderOutbox:Landroid/widget/Button;

    const-string v2, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_55
    :try_start_55
    new-instance v8, Ljava/net/URI;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/net/URISyntaxException; {:try_start_55 .. :try_end_a0} :catch_ac

    :goto_a0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    iget-boolean v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mMakeDefault:Z

    invoke-static {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->actionOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->finish()V

    goto/16 :goto_24

    :catch_ac
    move-exception v1

    goto :goto_a0

    :pswitch_data_ae
    .packed-switch 0x64
        :pswitch_25
        :pswitch_31
        :pswitch_3d
        :pswitch_49
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_2a

    :goto_7
    return-void

    :sswitch_8
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->onNext()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_7

    :catch_c
    move-exception v1

    move-object v0, v1

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->failure(Ljava/lang/Exception;)V

    goto :goto_7

    :sswitch_12
    const/16 v1, 0x64

    :try_start_14
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->selectImapFolder(I)V

    goto :goto_7

    :sswitch_18
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->selectImapFolder(I)V

    goto :goto_7

    :sswitch_1e
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->selectImapFolder(I)V

    goto :goto_7

    :sswitch_24
    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->selectImapFolder(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_c

    goto :goto_7

    :sswitch_data_2a
    .sparse-switch
        0x7f0b0005 -> :sswitch_8
        0x7f0b0019 -> :sswitch_12
        0x7f0b001a -> :sswitch_18
        0x7f0b001b -> :sswitch_1e
        0x7f0b001c -> :sswitch_24
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 25

    invoke-super/range {p0 .. p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V

    const v19, 0x7f030004

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->setContentView(I)V

    const v19, 0x7f0b0010

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    const v19, 0x7f0b0004

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    const v19, 0x7f0b0011

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v19, 0x7f0b0012

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    const v19, 0x7f0b0015

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    const v19, 0x7f0b0013

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    const v19, 0x7f0b0014

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    const v19, 0x7f0b0017

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    const v19, 0x7f0b0019

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderDrafts:Landroid/widget/Button;

    const v19, 0x7f0b001a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderSent:Landroid/widget/Button;

    const v19, 0x7f0b001b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderTrash:Landroid/widget/Button;

    const v19, 0x7f0b001c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderOutbox:Landroid/widget/Button;

    const v19, 0x7f0b001e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavPathPrefixView:Landroid/widget/EditText;

    const v19, 0x7f0b0020

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavAuthPathView:Landroid/widget/EditText;

    const v19, 0x7f0b0021

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavMailboxPathView:Landroid/widget/EditText;

    const v19, 0x7f0b0005

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderDrafts:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderSent:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderTrash:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderOutbox:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Lcom/fsck/k9/activity/setup/SpinnerOption;

    move-object v12, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const v22, 0x7f0800df

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v20, v12, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const v22, 0x7f0800e0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v20, v12, v19

    const/16 v19, 0x2

    new-instance v20, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const v22, 0x7f0800e1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v20, v12, v19

    const/16 v19, 0x3

    new-instance v20, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const v22, 0x7f0800e2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v20, v12, v19

    const/16 v19, 0x4

    new-instance v20, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const v22, 0x7f0800e3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v20, v12, v19

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/fsck/k9/activity/setup/SpinnerOption;

    move-object v5, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "PLAIN"

    invoke-direct/range {v20 .. v22}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v20, v5, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "CRAM_MD5"

    invoke-direct/range {v20 .. v22}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v20, v5, v19

    new-instance v13, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v19, 0x1090009

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v19, 0x1090009

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    new-instance v20, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v18, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const-string v20, "0123456789"

    invoke-static/range {v20 .. v20}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "account"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/Account;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "makeDefault"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mMakeDefault:Z

    if-eqz p1, :cond_302

    const-string v19, "account"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_302

    const-string v19, "account"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/fsck/k9/Account;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    :cond_302
    :try_start_302
    new-instance v15, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_341

    invoke-virtual {v15}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_38a

    const/16 v19, 0x0

    aget-object v4, v16, v19

    const/16 v19, 0x1

    aget-object v17, v16, v19

    const/16 v19, 0x2

    aget-object v10, v16, v19

    :cond_341
    :goto_341
    if-eqz v17, :cond_350

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_350
    if-eqz v10, :cond_35e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_35e
    if-eqz v4, :cond_3b2

    const/4 v9, 0x0

    :goto_361
    sget-object v19, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->authTypes:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_3b2

    sget-object v19, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->authTypes:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_387

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/fsck/k9/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    :cond_387
    add-int/lit8 v9, v9, 0x1

    goto :goto_361

    :cond_38a
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3a0

    const/16 v19, 0x0

    aget-object v17, v16, v19

    const/16 v19, 0x1

    aget-object v10, v16, v19

    goto :goto_341

    :cond_3a0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_341

    const/16 v19, 0x0

    aget-object v17, v16, v19

    goto :goto_341

    :cond_3b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderDrafts:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderSent:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderTrash:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapFolderOutbox:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v19

    const-string v20, "pop3"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4b1

    const v19, 0x7f0800d9

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v19, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->popPorts:[I

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountPorts:[I

    sget-object v19, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->popSchemes:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    const v19, 0x7f0b0016

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x7f0b0018

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x7f0b001d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x7f0b001f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x7f0b0014

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/Account;->setDeletePolicy(I)V

    :cond_47e
    :goto_47e
    const/4 v9, 0x0

    :goto_47f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_667

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/fsck/k9/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    :cond_4ae
    add-int/lit8 v9, v9, 0x1

    goto :goto_47f

    :cond_4b1
    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v19

    const-string v20, "imap"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_550

    const v19, 0x7f0800da

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v19, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->imapPorts:[I

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountPorts:[I

    sget-object v19, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->imapSchemes:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_4f9

    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_4f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4f9
    const v19, 0x7f0b001d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x7f0b001f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/Account;->setDeletePolicy(I)V

    const-string v19, "android.intent.action.EDIT"

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_47e

    const v19, 0x7f0b0018

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V
    :try_end_544
    .catch Ljava/lang/Exception; {:try_start_302 .. :try_end_544} :catch_546

    goto/16 :goto_47e

    :catch_546
    move-exception v19

    move-object/from16 v8, v19

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->failure(Ljava/lang/Exception;)V

    :goto_54f
    return-void

    :cond_550
    :try_start_550
    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v19

    const-string v20, "webdav"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_644

    const v19, 0x7f0800db

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v19, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->webdavPorts:[I

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountPorts:[I

    sget-object v19, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->webdavSchemes:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    const v19, 0x7f0b0016

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x7f0b0014

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_637

    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_637

    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v19

    const-string v20, "\\|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    array-length v7, v11

    :goto_5b1
    if-ge v9, v7, :cond_637

    if-nez v9, :cond_5e1

    const/16 v19, 0x0

    aget-object v19, v11, v19

    if-eqz v19, :cond_5de

    const/16 v19, 0x0

    aget-object v19, v11, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavPathPrefixView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v11, v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5de
    :goto_5de
    add-int/lit8 v9, v9, 0x1

    goto :goto_5b1

    :cond_5e1
    const/16 v19, 0x1

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_60c

    const/16 v19, 0x1

    aget-object v19, v11, v19

    if-eqz v19, :cond_5de

    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavAuthPathView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v20, v11, v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5de

    :cond_60c
    const/16 v19, 0x2

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_5de

    const/16 v19, 0x2

    aget-object v19, v11, v19

    if-eqz v19, :cond_5de

    const/16 v19, 0x2

    aget-object v19, v11, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavMailboxPathView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v20, v11, v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5de

    :cond_637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/Account;->setDeletePolicy(I)V

    goto/16 :goto_47e

    :cond_644
    new-instance v19, Ljava/lang/Exception;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown account type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_667
    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_67a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_67a
    invoke-virtual {v15}, Ljava/net/URI;->getPort()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_69c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Ljava/net/URI;->getPort()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_697
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validateFields()V

    goto/16 :goto_54f

    :cond_69c
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updatePortFromSecurityType()V
    :try_end_69f
    .catch Ljava/lang/Exception; {:try_start_550 .. :try_end_69f} :catch_546

    goto :goto_697
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "account"

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
