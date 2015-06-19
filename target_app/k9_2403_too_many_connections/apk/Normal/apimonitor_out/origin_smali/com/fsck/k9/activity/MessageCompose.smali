.class public Lcom/fsck/k9/activity/MessageCompose;
.super Lcom/fsck/k9/K9Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/MessageCompose$Listener;,
        Lcom/fsck/k9/activity/MessageCompose$Attachment;
    }
.end annotation


# static fields
.field private static final ACTION_EDIT_DRAFT:Ljava/lang/String; = "com.fsck.k9.intent.action.EDIT_DRAFT"

.field private static final ACTION_FORWARD:Ljava/lang/String; = "com.fsck.k9.intent.action.FORWARD"

.field private static final ACTION_REPLY:Ljava/lang/String; = "com.fsck.k9.intent.action.REPLY"

.field private static final ACTION_REPLY_ALL:Ljava/lang/String; = "com.fsck.k9.intent.action.REPLY_ALL"

.field private static final ACTIVITY_CHOOSE_IDENTITY:I = 0x2

.field private static final ACTIVITY_REQUEST_PICK_ATTACHMENT:I = 0x1

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_FOLDER:Ljava/lang/String; = "folder"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final MSG_DISCARDED_DRAFT:I = 0x6

.field private static final MSG_PROGRESS_OFF:I = 0x2

.field private static final MSG_PROGRESS_ON:I = 0x1

.field private static final MSG_SAVED_DRAFT:I = 0x5

.field private static final MSG_SKIPPED_ATTACHMENTS:I = 0x4

.field private static final MSG_UPDATE_TITLE:I = 0x3

.field private static final STATE_IDENTITY:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.identity"

.field private static final STATE_IDENTITY_CHANGED:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.identityChanged"

.field private static final STATE_KEY_ATTACHMENTS:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.attachments"

.field private static final STATE_KEY_BCC_SHOWN:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.bccShown"

.field private static final STATE_KEY_CC_SHOWN:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.ccShown"

.field private static final STATE_KEY_DRAFT_UID:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.draftUid"

.field private static final STATE_KEY_QUOTED_TEXT_SHOWN:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.quotedTextShown"

.field private static final STATE_KEY_SOURCE_MESSAGE_PROCED:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mAddressAdapter:Lcom/fsck/k9/EmailAddressAdapter;

.field private mAddressValidator:Landroid/widget/AutoCompleteTextView$Validator;

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mBccView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCcView:Landroid/widget/MultiAutoCompleteTextView;

.field private mDraftNeedsSaving:Z

.field private mDraftUid:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIdentity:Lcom/fsck/k9/Account$Identity;

.field private mIdentityChanged:Z

.field private mInReplyTo:Ljava/lang/String;

.field private mListener:Lcom/fsck/k9/activity/MessageCompose$Listener;

.field private mMessageContentView:Landroid/widget/EditText;

.field private mQuotedText:Landroid/widget/EditText;

.field private mQuotedTextBar:Landroid/view/View;

.field private mQuotedTextDelete:Landroid/widget/ImageButton;

.field private mReferences:Ljava/lang/String;

.field private mSignatureChanged:Z

.field private mSignatureView:Landroid/widget/EditText;

.field private mSourceMessage:Lcom/fsck/k9/mail/Message;

.field private mSourceMessageProcessed:Z

.field private mSourceMessageUid:Ljava/lang/String;

.field private mSubjectView:Landroid/widget/EditText;

.field private mToView:Landroid/widget/MultiAutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mSignatureChanged:Z

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageProcessed:Z

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageCompose$1;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$Listener;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageCompose$Listener;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mListener:Lcom/fsck/k9/activity/MessageCompose$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/MessageCompose;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateTitle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fsck/k9/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fsck/k9/activity/MessageCompose;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    return p1
.end method

.method static synthetic access$202(Lcom/fsck/k9/activity/MessageCompose;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->mSignatureChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/MessageCompose;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/fsck/k9/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/MessageCompose;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/mail/Message;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    return-object v0
.end method

.method static synthetic access$602(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mail/Message;
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    return-object p1
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/mail/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->processSourceMessage(Lcom/fsck/k9/mail/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/Account;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method public static actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionEditDraft(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "folder"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionForward(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "folder"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionReply(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Z)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "folder"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_2d

    const-string v1, "com.fsck.k9.intent.action.REPLY_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2d
    const-string v1, "com.fsck.k9.intent.action.REPLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_29
.end method

.method private addAddress(Landroid/widget/MultiAutoCompleteTextView;Lcom/fsck/k9/mail/Address;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/fsck/k9/mail/Address;)V
    .registers 7

    if-nez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    move-object v1, p2

    array-length v3, v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Lcom/fsck/k9/mail/Address;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private addAttachment(Landroid/net/Uri;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->addAttachment(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method private addAttachment(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 16

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/MessageCompose$Attachment;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    iput-object p3, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    int-to-long v1, p2

    iput-wide v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->size:J

    iput-object p1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->uri:Landroid/net/Uri;

    iget-wide v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->size:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    iget-object v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    if-nez v1, :cond_57

    :cond_1c
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_size"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_57

    :try_start_33
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    if-nez v1, :cond_44

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    :cond_44
    iget-wide v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->size:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_54

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->size:J
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_a3

    :cond_54
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_57
    iget-object v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    if-nez v1, :cond_61

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    :cond_61
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6d

    iget-object v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_6d
    iput-object v7, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000e

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const v1, 0x7f0b0043

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v1, 0x7f0b0042

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iget-object v1, v6, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :catchall_a3
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private appendSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mSignatureView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2b
    return-object p1
.end method

.method private createMessage(Z)Lcom/fsck/k9/mail/internet/MimeMessage;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    new-instance v6, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v6}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;)V

    new-instance v4, Lcom/fsck/k9/mail/Address;

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-virtual {v9}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$Identity;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v10}, Lcom/fsck/k9/activity/MessageCompose;->getAddresses(Landroid/widget/MultiAutoCompleteTextView;)[Lcom/fsck/k9/mail/Address;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v10}, Lcom/fsck/k9/activity/MessageCompose;->getAddresses(Landroid/widget/MultiAutoCompleteTextView;)[Lcom/fsck/k9/mail/Address;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v10}, Lcom/fsck/k9/activity/MessageCompose;->getAddresses(Landroid/widget/MultiAutoCompleteTextView;)[Lcom/fsck/k9/mail/Address;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    const-string v9, "X-User-Agent"

    const v10, 0x7f080087

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mInReplyTo:Ljava/lang/String;

    if-eqz v9, :cond_64

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mInReplyTo:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->setInReplyTo(Ljava/lang/String;)V

    :cond_64
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mReferences:Ljava/lang/String;

    if-eqz v9, :cond_6d

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mReferences:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->setReferences(Ljava/lang/String;)V

    :cond_6d
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_85

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText()Z

    move-result v9

    if-eqz v9, :cond_85

    invoke-direct {p0, v8}, Lcom/fsck/k9/activity/MessageCompose;->appendSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_85
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_ae

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_ae
    if-eqz p1, :cond_bc

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText()Z

    move-result v9

    if-nez v9, :cond_bc

    invoke-direct {p0, v8}, Lcom/fsck/k9/activity/MessageCompose;->appendSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_bc
    new-instance v1, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-direct {v1, v8}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_139

    new-instance v7, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {v7}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>()V

    new-instance v9, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v10, "text/plain"

    invoke-direct {v9, v1, v10}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :goto_df
    if-ge v5, v3, :cond_135

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageCompose$Attachment;

    new-instance v2, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    new-instance v9, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    iget-object v10, v0, Lcom/fsck/k9/activity/MessageCompose$Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/app/Application;)V

    invoke-direct {v2, v9}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V

    const-string v9, "Content-Type"

    const-string v10, "%s;\n name=\"%s\""

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/fsck/k9/activity/MessageCompose$Attachment;->contentType:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v0, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "Content-Transfer-Encoding"

    const-string v10, "base64"

    invoke-virtual {v2, v9, v10}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "Content-Disposition"

    const-string v10, "attachment;\n filename=\"%s\""

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/fsck/k9/activity/MessageCompose$Attachment;->name:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_df

    :cond_135
    invoke-virtual {v6, v7}, Lcom/fsck/k9/mail/internet/MimeMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    :goto_138
    return-object v6

    :cond_139
    invoke-virtual {v6, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    goto :goto_138
.end method

.method private getAddresses(Landroid/widget/MultiAutoCompleteTextView;)[Lcom/fsck/k9/mail/Address;
    .registers 4

    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/Address;->parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method private loadAttachments(Lcom/fsck/k9/mail/Part;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v8

    instance-of v8, v8, Lcom/fsck/k9/mail/Multipart;

    if-eqz v8, :cond_28

    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/Multipart;

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v2

    :goto_14
    if-ge v3, v2, :cond_26

    invoke-virtual {v4, v3}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-direct {p0, v8, v9}, Lcom/fsck/k9/activity/MessageCompose;->loadAttachments(Lcom/fsck/k9/mail/Part;I)Z

    move-result v8

    if-nez v8, :cond_23

    const/4 v6, 0x0

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_26
    move v8, v6

    :goto_27
    return v8

    :cond_28
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "name"

    invoke-static {v1, v8}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_52

    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    if-eqz v0, :cond_54

    instance-of v8, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    if-eqz v8, :cond_54

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/fsck/k9/activity/MessageCompose$4;

    invoke-direct {v9, p0, v7}, Lcom/fsck/k9/activity/MessageCompose$4;-><init>(Lcom/fsck/k9/activity/MessageCompose;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_52
    const/4 v8, 0x1

    goto :goto_27

    :cond_54
    const/4 v8, 0x0

    goto :goto_27
.end method

.method private onAddAttachment()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/fsck/k9/K9;->ACCEPTABLE_ATTACHMENT_SEND_TYPES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onAddCcBcc()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    return-void
.end method

.method private onChooseIdentity()V
    .registers 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getIdentities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_20

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/ChooseIdentity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.fsck.k9.ChooseIdentity_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1f
    return-void

    :cond_20
    const v1, 0x7f080199

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1f
.end method

.method private onDiscard()V
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    if-eqz v1, :cond_30

    const-string v1, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;

    new-array v4, v7, [Lcom/fsck/k9/mail/Message;

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/fsck/k9/MessagingController;->deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    :cond_30
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    if-eqz v1, :cond_50

    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Lcom/fsck/k9/mail/Message;

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/fsck/k9/MessagingController;->deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    :cond_50
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v6, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    return-void
.end method

.method private onIdentityChosen(Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.fsck.k9.ChooseIdentity_identity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Account$Identity;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageCompose;->switchToIdentity(Lcom/fsck/k9/Account$Identity;)V

    return-void
.end method

.method private onSave()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->saveIfNeeded()V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    return-void
.end method

.method private onSend()V
    .registers 4

    const v2, 0x7f08009b

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->getAddresses(Landroid/widget/MultiAutoCompleteTextView;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->getAddresses(Landroid/widget/MultiAutoCompleteTextView;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->getAddresses(Landroid/widget/MultiAutoCompleteTextView;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_34
    return-void

    :cond_35
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageCompose;->sendOrSaveMessage(Z)V

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    goto :goto_34
.end method

.method private processSourceMessage(Lcom/fsck/k9/mail/Message;)V
    .registers 37

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v30, "com.fsck.k9.intent.action.REPLY"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1e

    const-string v30, "com.fsck.k9.intent.action.REPLY_ALL"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_306

    :cond_1e
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_c0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    const-string v31, "re:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Re: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_54
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/fsck/k9/mail/Address;)V

    :goto_72
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_294

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_294

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mInReplyTo:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getReferences()[Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_286

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getReferences()[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_286

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v14, 0x0

    :goto_a3
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getReferences()[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move v0, v14

    move/from16 v1, v30

    if-ge v0, v1, :cond_f5

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getReferences()[Ljava/lang/String;

    move-result-object v30

    aget-object v30, v30, v14

    move-object v0, v10

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_a3

    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_cd
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1e .. :try_end_cd} :catch_ce

    goto :goto_54

    :catch_ce
    move-exception v30

    :cond_cf
    :goto_cf
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageProcessed:Z

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    return-void

    :cond_e0
    :try_start_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/fsck/k9/mail/Address;)V

    goto/16 :goto_72

    :cond_f5
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mInReplyTo:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mReferences:Ljava/lang/String;

    :cond_11c
    :goto_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    move-object/from16 v30, v0

    const-string v31, "text/plain"

    invoke-static/range {v30 .. v31}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v23

    if-eqz v23, :cond_1a5

    const v30, 0x7f080099

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "(?m)^"

    const-string v33, ">"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v30, "\\\r"

    const-string v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_1a5
    const-string v30, "com.fsck.k9.intent.action.REPLY_ALL"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1bb

    const-string v30, "com.fsck.k9.intent.action.REPLY"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_238

    :cond_1bb
    const/16 v29, 0x0

    sget-object v30, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_1cc
    move v0, v15

    move/from16 v1, v19

    if-ge v0, v1, :cond_1e4

    aget-object v5, v6, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Account$Identity;

    move-result-object v16

    if-eqz v16, :cond_2a1

    move-object/from16 v29, v16

    :cond_1e4
    if-nez v29, :cond_21e

    sget-object v30, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_21e

    sget-object v30, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_206
    move v0, v15

    move/from16 v1, v19

    if-ge v0, v1, :cond_21e

    aget-object v5, v6, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Account$Identity;

    move-result-object v16

    if-eqz v16, :cond_2a5

    move-object/from16 v29, v16

    :cond_21e
    if-eqz v29, :cond_238

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Account$Identity;

    move-result-object v11

    move-object/from16 v0, v29

    move-object v1, v11

    if-eq v0, v1, :cond_238

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->switchToIdentity(Lcom/fsck/k9/Account$Identity;)V

    :cond_238
    const-string v30, "com.fsck.k9.intent.action.REPLY_ALL"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_cf

    sget-object v30, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_252
    move v0, v15

    move/from16 v1, v19

    if-ge v0, v1, :cond_2a9

    aget-object v5, v6, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Account$Identity;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v30

    if-nez v30, :cond_283

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Lcom/fsck/k9/mail/Address;)V

    :cond_283
    add-int/lit8 v15, v15, 0x1

    goto :goto_252

    :cond_286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mInReplyTo:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mReferences:Ljava/lang/String;

    goto/16 :goto_11c

    :cond_294
    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_11c

    const-string v30, "k9"

    const-string v31, "could not get Message-ID."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11c

    :cond_2a1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1cc

    :cond_2a5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_206

    :cond_2a9
    sget-object v30, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_cf

    sget-object v30, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_2c9
    move v0, v15

    move/from16 v1, v19

    if-ge v0, v1, :cond_2f9

    aget-object v5, v6, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v30

    if-nez v30, :cond_2f6

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/fsck/k9/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Lcom/fsck/k9/mail/Address;)V

    :cond_2f6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2c9

    :cond_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V
    :try_end_304
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_e0 .. :try_end_304} :catch_ce

    goto/16 :goto_cf

    :cond_306
    const-string v30, "com.fsck.k9.intent.action.FORWARD"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_443

    :try_start_311
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_434

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    const-string v31, "fwd:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_434

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Fwd: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_347
    const-string v30, "text/plain"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v23

    if-nez v23, :cond_35d

    const-string v30, "text/html"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v23

    :cond_35d
    if-eqz v23, :cond_40e

    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_40e

    const v30, 0x7f080098

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    move-object/from16 v33, v0

    sget-object v34, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual/range {v33 .. v34}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    move-object/from16 v33, v0

    sget-object v34, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual/range {v33 .. v34}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const-string v30, "\\\r"

    const-string v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_40e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageProcessed:Z

    move/from16 v30, v0

    if-nez v30, :cond_cf

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->loadAttachments(Lcom/fsck/k9/mail/Part;I)Z

    move-result v30

    if-nez v30, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_cf

    :catch_431
    move-exception v30

    goto/16 :goto_cf

    :cond_434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_441
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_311 .. :try_end_441} :catch_431

    goto/16 :goto_347

    :cond_443
    const-string v30, "com.fsck.k9.intent.action.EDIT_DRAFT"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_cf

    :try_start_44e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    sget-object v31, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/fsck/k9/mail/Address;)V

    sget-object v30, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_4a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    sget-object v31, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/fsck/k9/mail/Address;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    :cond_4a9
    sget-object v30, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_4de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    sget-object v31, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/fsck/k9/mail/Address;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    :cond_4de
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageProcessed:Z

    move/from16 v30, v0

    if-nez v30, :cond_4f1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->loadAttachments(Lcom/fsck/k9/mail/Part;I)Z

    :cond_4f1
    const/4 v7, 0x0

    const-string v30, "X-K9mail-Identity"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5d2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_5d2

    const/16 v30, 0x0

    aget-object v18, v17, v30

    if-eqz v18, :cond_5d2

    sget-boolean v30, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v30, :cond_52b

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Got a saved identity: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52b
    new-instance v28, Ljava/util/StringTokenizer;

    const-string v30, ":"

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_558

    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_54f
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_44e .. :try_end_54f} :catch_649

    move-result-object v8

    :try_start_550
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_557
    .catch Ljava/lang/Exception; {:try_start_550 .. :try_end_557} :catch_64c
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_550 .. :try_end_557} :catch_649

    move-result-object v7

    :cond_558
    :goto_558
    :try_start_558
    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_566

    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :cond_566
    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_574

    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :cond_574
    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_582

    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_582
    new-instance v22, Lcom/fsck/k9/Account$Identity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/fsck/k9/Account$Identity;-><init>(Lcom/fsck/k9/Account;)V

    if-eqz v26, :cond_672

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account$Identity;->setSignature(Ljava/lang/String;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mSignatureChanged:Z

    :goto_5a5
    if-eqz v21, :cond_685

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account$Identity;->setName(Ljava/lang/String;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    :goto_5b6
    if-eqz v13, :cond_698

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account$Identity;->setEmail(Ljava/lang/String;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    :goto_5c6
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateFrom()V

    :cond_5d2
    const-string v30, "text/plain"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v23

    if-eqz v23, :cond_cf

    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v27

    if-eqz v7, :cond_6ab

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_6ab

    const/16 v30, 0x0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_cf

    :catch_649
    move-exception v30

    goto/16 :goto_cf

    :catch_64c
    move-exception v30

    move-object/from16 v12, v30

    const-string v30, "k9"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to parse bodyLength \'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_558

    :cond_672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/Account$Identity;->getSignature()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account$Identity;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_5a5

    :cond_685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/Account$Identity;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account$Identity;->setName(Ljava/lang/String;)V

    goto/16 :goto_5b6

    :cond_698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account$Identity;->setEmail(Ljava/lang/String;)V

    goto/16 :goto_5c6

    :cond_6ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6b8
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_558 .. :try_end_6b8} :catch_649

    goto/16 :goto_cf
.end method

.method private saveIfNeeded()V
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_4
.end method

.method private sendOrSaveMessage(Z)V
    .registers 15

    if-nez p1, :cond_e0

    const/4 v7, 0x1

    :goto_3
    :try_start_3
    invoke-direct {p0, v7}, Lcom/fsck/k9/activity/MessageCompose;->createMessage(Z)Lcom/fsck/k9/mail/internet/MimeMessage;
    :try_end_6
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_6} :catch_e3

    move-result-object v4

    if-eqz p1, :cond_10a

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    if-eqz v7, :cond_f3

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/fsck/k9/mail/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    :cond_12
    :goto_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    if-nez v7, :cond_3f

    iget-boolean v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mSignatureChanged:Z

    if-eqz v7, :cond_9d

    :cond_3f
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mSignatureView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/fsck/k9/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    if-eqz v7, :cond_9d

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-virtual {v7}, Lcom/fsck/k9/Account$Identity;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-virtual {v7}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/fsck/k9/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/fsck/k9/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9d
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_b9

    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saving identity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    const-string v7, "X-K9mail-Identity"

    invoke-virtual {v4, v7, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v7, v8, v4}, Lcom/fsck/k9/MessagingController;->saveDraft(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->getUid()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getChangingConfigurations()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_df

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_df
    :goto_df
    return-void

    :cond_e0
    const/4 v7, 0x0

    goto/16 :goto_3

    :catch_e3
    move-exception v3

    const-string v7, "k9"

    const-string v8, "Failed to create new message for send or save."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Failed to create a new message for send or save."

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_f3
    const-string v7, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/fsck/k9/mail/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_10a
    const-string v7, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_136

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    if-eqz v7, :cond_136

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/fsck/k9/mail/Message;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/fsck/k9/MessagingController;->deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    :cond_136
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    if-eqz v7, :cond_15e

    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/fsck/k9/mail/Message;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/fsck/k9/MessagingController;->deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    :cond_15e
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v4, v9}, Lcom/fsck/k9/MessagingController;->sendMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    goto/16 :goto_df
.end method

.method private switchToIdentity(Lcom/fsck/k9/Account$Identity;)V
    .registers 3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateFrom()V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    return-void
.end method

.method private updateFrom()V
    .registers 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    const v1, 0x7f08009e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-virtual {v3}, Lcom/fsck/k9/Account$Identity;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-virtual {v4}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSignature()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mSignatureView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-virtual {v1}, Lcom/fsck/k9/Account$Identity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTitle()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_13

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->setTitle(I)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    if-eqz p3, :cond_3

    packed-switch p1, :pswitch_data_1a

    goto :goto_3

    :pswitch_a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto :goto_3

    :pswitch_15
    invoke-direct {p0, p3}, Lcom/fsck/k9/activity/MessageCompose;->onIdentityChosen(Landroid/content/Intent;)V

    goto :goto_3

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :goto_a
    :pswitch_a
    return-void

    :pswitch_b
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto :goto_a

    :pswitch_19
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto :goto_a

    :pswitch_data_26
    .packed-switch 0x7f0b003f
        :pswitch_19
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 32

    invoke-super/range {p0 .. p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->requestWindowFeature(I)Z

    const v3, 0x7f03000d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v3, "account"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v3, v0

    if-nez v3, :cond_3b

    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v3, v0

    if-nez v3, :cond_5d

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/fsck/k9/activity/Accounts;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    :goto_5c
    return-void

    :cond_5d
    new-instance v3, Lcom/fsck/k9/EmailAddressAdapter;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mAddressAdapter:Lcom/fsck/k9/EmailAddressAdapter;

    new-instance v3, Lcom/fsck/k9/EmailAddressValidator;

    invoke-direct {v3}, Lcom/fsck/k9/EmailAddressValidator;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mAddressValidator:Landroid/widget/AutoCompleteTextView$Validator;

    const v3, 0x7f0b0036

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    const v3, 0x7f0b0037

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/MultiAutoCompleteTextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const v3, 0x7f0b0038

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/MultiAutoCompleteTextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const v3, 0x7f0b0039

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/MultiAutoCompleteTextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const v3, 0x7f0b003a

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const v3, 0x7f0b003d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/EditText;

    const v3, 0x7f0b0041

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    const v3, 0x7f0b003c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const v3, 0x7f0b003b

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const v3, 0x7f0b003e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const v3, 0x7f0b003f

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageButton;

    const v3, 0x7f0b0040

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    new-instance v29, Lcom/fsck/k9/activity/MessageCompose$2;

    invoke-direct/range {v29 .. v30}, Lcom/fsck/k9/activity/MessageCompose$2;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    new-instance v22, Lcom/fsck/k9/activity/MessageCompose$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageCompose$3;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageButton;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAddressAdapter:Lcom/fsck/k9/EmailAddressAdapter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    new-instance v4, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v4}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAddressValidator:Landroid/widget/AutoCompleteTextView$Validator;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAddressAdapter:Lcom/fsck/k9/EmailAddressAdapter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    new-instance v4, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v4}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAddressValidator:Landroid/widget/AutoCompleteTextView$Validator;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAddressAdapter:Lcom/fsck/k9/EmailAddressAdapter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    new-instance v4, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v4}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAddressValidator:Landroid/widget/AutoCompleteTextView$Validator;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p1, :cond_23f

    const-string v3, "com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageProcessed:Z

    :cond_23f
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_253

    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40d

    :cond_253
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_27d

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v28

    :try_start_25d
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mailto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27d

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/fsck/k9/mail/Address;)V
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_27d} :catch_56c

    :cond_27d
    :goto_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    move-object v3, v0

    if-nez v3, :cond_293

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Account$Identity;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText()Z

    move-result v3

    if-eqz v3, :cond_55c

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mSignatureView:Landroid/widget/EditText;

    const/16 v3, 0x8

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_2ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSignatureView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageProcessed:Z

    move v3, v0

    if-nez v3, :cond_3e5

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateFrom()V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    const-string v3, "com.fsck.k9.intent.action.REPLY"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e4

    const-string v3, "com.fsck.k9.intent.action.REPLY_ALL"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e4

    const-string v3, "com.fsck.k9.intent.action.FORWARD"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e4

    const-string v3, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30f

    :cond_2e4
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mListener:Lcom/fsck/k9/activity/MessageCompose$Listener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/fsck/k9/MessagingController;->addListener(Lcom/fsck/k9/MessagingListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/fsck/k9/MessagingController;->loadMessageForView(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    :cond_30f
    const-string v3, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_346

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getAlwaysBcc()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_346

    const-string v3, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_346

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    new-instance v4, Lcom/fsck/k9/mail/Address;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getAlwaysBcc()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Lcom/fsck/k9/mail/Address;)V

    :cond_346
    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_38f

    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAccount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFolder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSourceMessageUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38f
    const-string v3, "com.fsck.k9.intent.action.REPLY"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39f

    const-string v3, "com.fsck.k9.intent.action.REPLY_ALL"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e2

    :cond_39f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v3, v0

    if-eqz v3, :cond_3e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_3e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_3e2

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_3bf

    const-string v3, "k9"

    const-string v4, "Setting message ANSWERED flag to true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3bf
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    sget-object v7, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V

    :cond_3e2
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateTitle()V

    :cond_3e5
    const-string v3, "com.fsck.k9.intent.action.REPLY"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3fd

    const-string v3, "com.fsck.k9.intent.action.REPLY_ALL"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3fd

    const-string v3, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_405

    :cond_3fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_405
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto/16 :goto_5c

    :cond_40d
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53e

    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_42b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_42b
    const-string v3, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_441

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_441
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v26

    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/net/Uri;

    if-eqz v23, :cond_466

    if-eqz v26, :cond_466

    sget-object v3, Lcom/fsck/k9/K9;->ACCEPTABLE_ATTACHMENT_SEND_TYPES:[Ljava/lang/String;

    move-object/from16 v0, v26

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_466

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)V

    :cond_466
    const-string v3, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "android.intent.extra.EMAIL"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const-string v3, "android.intent.extra.CC"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v3, "android.intent.extra.BCC"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const-string v10, ""

    if-eqz v16, :cond_4d4

    move-object/from16 v0, v16

    array-length v0, v0

    move v12, v0

    const/16 v19, 0x0

    :goto_4b3
    move/from16 v0, v19

    move v1, v12

    if-ge v0, v1, :cond_4d4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v16, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v19, v19, 0x1

    goto :goto_4b3

    :cond_4d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    invoke-virtual {v3, v10}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, ""

    if-eqz v15, :cond_504

    array-length v12, v15

    const/16 v19, 0x0

    :goto_4e3
    move/from16 v0, v19

    move v1, v12

    if-ge v0, v1, :cond_504

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v19, v19, 0x1

    goto :goto_4e3

    :cond_504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    invoke-virtual {v3, v10}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, ""

    if-eqz v14, :cond_534

    array-length v12, v14

    const/16 v19, 0x0

    :goto_513
    move/from16 v0, v19

    move v1, v12

    if-ge v0, v1, :cond_534

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v14, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v19, v19, 0x1

    goto :goto_513

    :cond_534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v3, v0

    invoke-virtual {v3, v10}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27d

    :cond_53e
    const-string v3, "folder"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;

    const-string v3, "message"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;

    goto/16 :goto_27d

    :cond_55c
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->mSignatureView:Landroid/widget/EditText;

    const/16 v3, 0x8

    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2ac

    :catch_56c
    move-exception v3

    goto/16 :goto_27d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-nez p2, :cond_5

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateTitle()V

    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onSend()V

    :goto_f
    const/4 v0, 0x1

    goto :goto_b

    :pswitch_11
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onSave()V

    goto :goto_f

    :pswitch_15
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    goto :goto_f

    :pswitch_19
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onAddCcBcc()V

    goto :goto_f

    :pswitch_1d
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onAddAttachment()V

    goto :goto_f

    :pswitch_21
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onChooseIdentity()V

    goto :goto_f

    nop

    :pswitch_data_26
    .packed-switch 0x7f0b0090
        :pswitch_c
        :pswitch_19
        :pswitch_1d
        :pswitch_11
        :pswitch_15
        :pswitch_21
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onPause()V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->saveIfNeeded()V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mListener:Lcom/fsck/k9/activity/MessageCompose$Listener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->removeListener(Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 12

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-string v9, "com.fsck.k9.activity.MessageCompose.quotedTextShown"

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.attachments"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    move-object v0, v3

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0

    invoke-direct {p0, v4}, Lcom/fsck/k9/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)V

    goto :goto_17

    :cond_2b
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v6, "com.fsck.k9.activity.MessageCompose.ccShown"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    move v6, v7

    :goto_36
    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v6, "com.fsck.k9.activity.MessageCompose.bccShown"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    move v6, v7

    :goto_44
    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const-string v6, "com.fsck.k9.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8a

    move v6, v7

    :goto_52
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedText:Landroid/widget/EditText;

    const-string v6, "com.fsck.k9.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c

    move v6, v7

    :goto_60
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.draftUid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    const-string v5, "com.fsck.k9.activity.MessageCompose.identity"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/Account$Identity;

    iput-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    const-string v5, "com.fsck.k9.activity.MessageCompose.identityChanged"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateFrom()V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    iput-boolean v7, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z

    return-void

    :cond_86
    move v6, v8

    goto :goto_36

    :cond_88
    move v6, v8

    goto :goto_44

    :cond_8a
    move v6, v8

    goto :goto_52

    :cond_8c
    move v6, v8

    goto :goto_60
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onResume()V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->mListener:Lcom/fsck/k9/activity/MessageCompose$Listener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->addListener(Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->saveIfNeeded()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_14
    if-ge v3, v2, :cond_2a

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageCompose$Attachment;

    iget-object v5, v0, Lcom/fsck/k9/activity/MessageCompose$Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2a
    const-string v5, "com.fsck.k9.activity.MessageCompose.attachments"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.ccShown"

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_76

    move v6, v8

    :goto_3a
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.bccShown"

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_78

    move v6, v8

    :goto_48
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.quotedTextShown"

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7a

    move v6, v8

    :goto_56
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v6, p0, Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.draftUid"

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.identity"

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentity:Lcom/fsck/k9/Account$Identity;

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v5, "com.fsck.k9.activity.MessageCompose.identityChanged"

    iget-boolean v6, p0, Lcom/fsck/k9/activity/MessageCompose;->mIdentityChanged:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_76
    move v6, v7

    goto :goto_3a

    :cond_78
    move v6, v7

    goto :goto_48

    :cond_7a
    move v6, v7

    goto :goto_56
.end method
