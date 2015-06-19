.class public Lcom/fsck/k9/activity/MessageView;
.super Lcom/fsck/k9/K9Activity;
.source "MessageView.java"

# interfaces
.implements Landroid/webkit/UrlInterceptHandler;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/MessageView$MyGestureDetector;,
        Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;,
        Lcom/fsck/k9/activity/MessageView$Listener;,
        Lcom/fsck/k9/activity/MessageView$Attachment;,
        Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHOOSE_FOLDER_COPY:I = 0x2

.field private static final ACTIVITY_CHOOSE_FOLDER_MOVE:I = 0x1

.field private static final CID_PREFIX:Ljava/lang/String; = "http://cid/"

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.MessageView_account"

.field private static final EXTRA_FOLDER:Ljava/lang/String; = "com.fsck.k9.MessageView_folder"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "com.fsck.k9.MessageView_message"

.field private static final EXTRA_MESSAGE_UIDS:Ljava/lang/String; = "com.fsck.k9.MessageView_messageUids"

.field private static final EXTRA_NEXT:Ljava/lang/String; = "com.fsck.k9.MessageView_next"

.field private static final NEXT:I = 0x2

.field private static final PREVIOUS:I = 0x1

.field private static final SWIPE_MAX_OFF_PATH_DIP:F = 250.0f

.field private static final SWIPE_MIN_DISTANCE_DIP:F = 100.0f

.field private static final SWIPE_THRESHOLD_VELOCITY_DIP:F = 200.0f


# instance fields
.field private defaultSubjectColor:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private mAccount:Lcom/fsck/k9/Account;

.field private mAttachmentIcon:Landroid/view/View;

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mCcView:Landroid/widget/TextView;

.field private mDateView:Landroid/widget/TextView;

.field private mFlagged:Landroid/widget/CheckBox;

.field private mFolder:Ljava/lang/String;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

.field private mLastDirection:I

.field private mListener:Lcom/fsck/k9/activity/MessageView$Listener;

.field private mMessage:Lcom/fsck/k9/mail/Message;

.field private mMessageContentView:Landroid/webkit/WebView;

.field private mMessageUid:Ljava/lang/String;

.field private mMessageUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextMessageUid:Ljava/lang/String;

.field private mPreviousMessageUid:Ljava/lang/String;

.field private mShowPicturesSection:Landroid/view/View;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTimeView:Landroid/widget/TextView;

.field private mToView:Landroid/widget/TextView;

.field private mTopView:Landroid/widget/ScrollView;

.field next:Landroid/view/View;

.field next_scrolling:Landroid/view/View;

.field private optionsMenu:Landroid/view/Menu;

.field previous:Landroid/view/View;

.field previous_scrolling:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/activity/MessageView;->mLastDirection:I

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mNextMessageUid:Ljava/lang/String;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mPreviousMessageUid:Ljava/lang/String;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageView;->optionsMenu:Landroid/view/Menu;

    new-instance v0, Lcom/fsck/k9/activity/MessageView$Listener;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageView$Listener;-><init>(Lcom/fsck/k9/activity/MessageView;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mListener:Lcom/fsck/k9/activity/MessageView$Listener;

    new-instance v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;-><init>(Lcom/fsck/k9/activity/MessageView;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/MessageView;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/MessageView;)I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/activity/MessageView;->defaultSubjectColor:I

    return v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/MessageView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mShowPicturesSection:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/activity/MessageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onFlag()V

    return-void
.end method

.method static synthetic access$1300(Lcom/fsck/k9/activity/MessageView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/mail/Message;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/fsck/k9/activity/MessageView;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mail/Message;
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/activity/MessageView;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/MessageView;->setHeaders(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/fsck/k9/activity/MessageView;Lcom/fsck/k9/mail/Part;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/MessageView;->renderAttachments(Lcom/fsck/k9/mail/Part;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/fsck/k9/activity/MessageView;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/Account;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/ScrollView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fsck/k9/activity/MessageView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageView;->onNext(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/fsck/k9/activity/MessageView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageView;->onPrevious(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mFromView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mToView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mCcView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/MessageView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mAttachmentIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mFlagged:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static actionView(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/activity/MessageView;->actionView(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method

.method public static actionView(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.fsck.k9.MessageView_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.MessageView_folder"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.MessageView_message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.MessageView_messageUids"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p5, :cond_20

    invoke-virtual {v0, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 13

    const/4 v8, 0x0

    const-string v9, "-%d"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_10

    move-object v6, v1

    :goto_f
    return-object v6

    :cond_10
    const/16 v6, 0x2e

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_58

    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-%d"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_38
    const/4 v3, 0x2

    :goto_39
    const v6, 0x7fffffff

    if-ge v3, v6, :cond_6f

    new-instance v1, Ljava/io/File;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6c

    move-object v6, v1

    goto :goto_f

    :cond_58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-%d"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_6f
    const/4 v6, 0x0

    goto :goto_f
.end method

.method private displayMessage(Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->findSurroundingMessagesUid()V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mNextMessageUid:Ljava/lang/String;

    if-eqz v2, :cond_79

    move v0, v3

    :goto_1a
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mPreviousMessageUid:Ljava/lang/String;

    if-eqz v2, :cond_7b

    move v1, v3

    :goto_1f
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->next:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2c

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->next:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2c
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->previous:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_39

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->previous:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_39
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->next_scrolling:Landroid/view/View;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->next_scrolling:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_4a

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->next_scrolling:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_4a
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->previous_scrolling:Landroid/view/View;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->previous_scrolling:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_5b

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->previous_scrolling:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_5b
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageView;->mListener:Lcom/fsck/k9/activity/MessageView$Listener;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/fsck/k9/MessagingController;->loadMessageForView(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v7, v7}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v2, v7, v7}, Landroid/webkit/WebView;->scrollTo(II)V

    return-void

    :cond_79
    move v0, v7

    goto :goto_1a

    :cond_7b
    move v1, v7

    goto :goto_1f
.end method

.method private findSurroundingMessagesUid()V
    .registers 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mPreviousMessageUid:Ljava/lang/String;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mNextMessageUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    sub-int v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mNextMessageUid:Ljava/lang/String;

    :cond_1f
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mPreviousMessageUid:Ljava/lang/String;

    goto :goto_10
.end method

.method public static formatSize(F)Ljava/lang/String;
    .registers 13

    const-wide/16 v10, 0x400

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-wide/16 v2, 0x400

    mul-long v4, v2, v10

    mul-long v0, v4, v10

    long-to-float v6, v2

    cmpg-float v6, p0, v6

    if-gez v6, :cond_1f

    const-string v6, "%d bytes"

    new-array v7, v7, [Ljava/lang/Object;

    float-to-int v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1e
    return-object v6

    :cond_1f
    long-to-float v6, v4

    cmpg-float v6, p0, v6

    if-gez v6, :cond_36

    const-string v6, "%.1f kB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v2

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1e

    :cond_36
    long-to-float v6, v0

    cmpg-float v6, p0, v6

    if-gez v6, :cond_4d

    const-string v6, "%.1f MB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v4

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1e

    :cond_4d
    const-string v6, "%.1f GB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v0

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1e
.end method

.method private getPreviewIcon(Lcom/fsck/k9/activity/MessageView$Attachment;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageView$Attachment;->part:Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J

    move-result-wide v3

    const/16 v5, 0x3e

    const/16 v6, 0x3e

    invoke-static {v2, v3, v4, v5, v6}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentThumbnailUri(Lcom/fsck/k9/Account;JII)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v1

    :goto_1c
    return-object v1

    :catch_1d
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private hideButtons()V
    .registers 3

    const v1, 0x7f0b005b

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/activity/MessageView;->slideAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private onClickSender()V
    .registers 8

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v4, :cond_39

    :try_start_4
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v2, v4, v5

    const-string v4, "mailto"

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_36

    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_36
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_39} :catch_3a

    :cond_39
    :goto_39
    return-void

    :catch_3a
    move-exception v4

    goto :goto_39
.end method

.method private onCopy()V
    .registers 5

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v2

    if-nez v2, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController;->isCopyCapable(Lcom/fsck/k9/mail/Message;)Z

    move-result v2

    if-nez v2, :cond_2d

    const v2, 0x7f08012a

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_10

    :cond_2d
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.fsck.k9.ChooseFolder_account"

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_messageuid"

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/fsck/k9/activity/MessageView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10
.end method

.method private onDelete()V
    .registers 8

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v3, :cond_38

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->findSurroundingMessagesUid()V

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v3

    new-array v4, v6, [Lcom/fsck/k9/mail/Message;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/fsck/k9/MessagingController;->deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    iget v3, p0, Lcom/fsck/k9/activity/MessageView;->mLastDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mNextMessageUid:Ljava/lang/String;

    if-eqz v3, :cond_39

    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageView;->onNext(Z)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget v3, p0, Lcom/fsck/k9/activity/MessageView;->mLastDirection:I

    if-ne v3, v6, :cond_49

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mPreviousMessageUid:Ljava/lang/String;

    if-eqz v3, :cond_49

    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageView;->onPrevious(Z)V

    goto :goto_38

    :cond_49
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mNextMessageUid:Ljava/lang/String;

    if-eqz v3, :cond_55

    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageView;->onNext(Z)V

    goto :goto_38

    :cond_55
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mPreviousMessageUid:Ljava/lang/String;

    if-eqz v3, :cond_61

    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageView;->onPrevious(Z)V

    goto :goto_38

    :cond_61
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->finish()V

    goto :goto_38
.end method

.method private onDownloadAttachment(Lcom/fsck/k9/activity/MessageView$Attachment;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageView$Attachment;->part:Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageView;->mListener:Lcom/fsck/k9/activity/MessageView$Listener;

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->loadAttachment(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Lcom/fsck/k9/MessagingListener;)V

    goto :goto_1c
.end method

.method private onFlag()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    sget-object v7, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v5, v7}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_61

    move v5, v9

    :goto_31
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V

    :try_start_34
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-nez v2, :cond_63

    move v2, v9

    :goto_43
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fsck/k9/activity/MessageView;->setHeaders(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->setMenuFlag()V
    :try_end_60
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_34 .. :try_end_60} :catch_65

    :cond_60
    :goto_60
    return-void

    :cond_61
    move v5, v8

    goto :goto_31

    :cond_63
    move v2, v8

    goto :goto_43

    :catch_65
    move-exception v0

    move-object v6, v0

    const-string v0, "k9"

    const-string v1, "Could not set flag on local message"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60
.end method

.method private onForward()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-static {p0, v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->actionForward(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->finish()V

    :cond_e
    return-void
.end method

.method private onMarkAsUnread()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V

    :cond_21
    return-void
.end method

.method private onMove()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController;->isMoveCapable(Lcom/fsck/k9/mail/Message;)Z

    move-result v2

    if-nez v2, :cond_2d

    const v2, 0x7f08012a

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_11

    :cond_2d
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.fsck.k9.ChooseFolder_account"

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_messageuid"

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/fsck/k9/activity/MessageView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_11
.end method

.method private onNext(Z)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mNextMessageUid:Ljava/lang/String;

    if-nez v0, :cond_14

    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/activity/MessageView;->mLastDirection:I

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_22
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mNextMessageUid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageView;->displayMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->next:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_13
.end method

.method private onPrevious(Z)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mPreviousMessageUid:Ljava/lang/String;

    if-nez v0, :cond_14

    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/activity/MessageView;->mLastDirection:I

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_22
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mPreviousMessageUid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageView;->displayMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->previous:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_13
.end method

.method private onReply()V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->actionReply(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Z)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->finish()V

    :cond_f
    return-void
.end method

.method private onReplyAll()V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->actionReply(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Z)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->finish()V

    :cond_f
    return-void
.end method

.method private onSendAlternate()V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v0, p0, v1, v2}, Lcom/fsck/k9/MessagingController;->sendAlternate(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V

    :cond_13
    return-void
.end method

.method private onShowPictures()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mShowPicturesSection:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onViewAttachment(Lcom/fsck/k9/activity/MessageView$Attachment;)V
    .registers 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageView$Attachment;->part:Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageView;->mListener:Lcom/fsck/k9/activity/MessageView$Listener;

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->loadAttachment(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Lcom/fsck/k9/MessagingListener;)V

    :cond_24
    return-void
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, -0x4080

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/activity/MessageView;->slideAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private renderAttachments(Lcom/fsck/k9/mail/Part;I)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v19, "name"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_24

    const-string v19, "filename"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_24
    if-eqz v15, :cond_14e

    const-string v19, "size"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    new-instance v3, Lcom/fsck/k9/activity/MessageView$Attachment;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView$Attachment;-><init>(Lcom/fsck/k9/activity/MessageView;)V

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object v2, v3

    iput-wide v0, v2, Lcom/fsck/k9/activity/MessageView$Attachment;->size:J

    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v13

    const-string v19, "application/octet-stream"

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_58

    invoke-static {v15}, Lcom/fsck/k9/mail/internet/MimeUtility;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_58
    iput-object v13, v3, Lcom/fsck/k9/activity/MessageView$Attachment;->contentType:Ljava/lang/String;

    iput-object v15, v3, Lcom/fsck/k9/activity/MessageView$Attachment;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object v4, v0

    iput-object v4, v3, Lcom/fsck/k9/activity/MessageView$Attachment;->part:Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v19, 0x7f030016

    const/16 v20, 0x0

    move-object v0, v12

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f0b0043

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v19, 0x7f0b0061

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v19, 0x7f0b0060

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v19, 0x7f0b0063

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v19, 0x7f0b0062

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v3

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v19, v0

    sget-object v20, Lcom/fsck/k9/K9;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_bc

    move-object v0, v3

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v19, v0

    sget-object v20, Lcom/fsck/k9/K9;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c4

    :cond_bc
    const/16 v19, 0x8

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c4
    move-object v0, v3

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v19, v0

    sget-object v20, Lcom/fsck/k9/K9;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_de

    move-object v0, v3

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v19, v0

    sget-object v20, Lcom/fsck/k9/K9;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e6

    :cond_de
    const/16 v19, 0x8

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e6
    move-object v0, v3

    iget-wide v0, v0, Lcom/fsck/k9/activity/MessageView$Attachment;->size:J

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x500000

    cmp-long v19, v19, v21

    if-lez v19, :cond_102

    const/16 v19, 0x8

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v19, 0x8

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_102
    iput-object v8, v3, Lcom/fsck/k9/activity/MessageView$Attachment;->viewButton:Landroid/widget/Button;

    iput-object v4, v3, Lcom/fsck/k9/activity/MessageView$Attachment;->downloadButton:Landroid/widget/Button;

    iput-object v5, v3, Lcom/fsck/k9/activity/MessageView$Attachment;->iconView:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/activity/MessageView;->formatSize(F)Ljava/lang/String;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->getPreviewIcon(Lcom/fsck/k9/activity/MessageView$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_141

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->addAttachment(Landroid/view/View;)V

    :cond_14e
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/fsck/k9/mail/Multipart;

    move/from16 v19, v0

    if-eqz v19, :cond_17c

    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/mail/Multipart;

    const/4 v11, 0x0

    :goto_161
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v19

    move v0, v11

    move/from16 v1, v19

    if-ge v0, v1, :cond_17c

    invoke-virtual {v14, v11}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v19

    add-int/lit8 v20, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/MessageView;->renderAttachments(Lcom/fsck/k9/mail/Part;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_161

    :cond_17c
    return-void
.end method

.method private setHeaders(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/Address;->toFriendly([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Utility;->isDateToday(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x0

    move-object v4, v1

    :goto_18
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/Address;->toFriendly([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/Address;->toFriendly([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p4

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getAttachmentCount()I

    move-result v1

    if-lez v1, :cond_64

    const/4 v1, 0x1

    move v8, v1

    :goto_44
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    sget-object v9, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p4, v9}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v9

    sget-object v10, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p4, v10}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v10

    invoke-virtual/range {v1 .. v10}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->setHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void

    :cond_56
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_18

    :cond_64
    const/4 v1, 0x0

    move v8, v1

    goto :goto_44
.end method

.method private setMenuFlag()V
    .registers 5

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->optionsMenu:Landroid/view/Menu;

    if-eqz v1, :cond_21

    const v2, 0x7f0b0083

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_22

    const v2, 0x7f080044

    :goto_1e
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_21
    return-void

    :cond_22
    const v2, 0x7f080043

    goto :goto_1e
.end method

.method private setOnClickListener(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method private showButtons()V
    .registers 3

    const v1, 0x7f0b0057

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private slideAnimation(FF)Landroid/view/animation/Animation;
    .registers 12

    const/4 v6, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v2, p1

    move v3, v1

    move v4, p2

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/fsck/k9/activity/MessageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_f
    if-nez v0, :cond_15

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_15
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/PluginData;"
        }
    .end annotation

    const-string v1, "http://cid/"

    const-string v0, "http://cid/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v0, :cond_72

    :try_start_e
    const-string v0, "http://cid/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->findPartByContentId(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v12

    if-eqz v12, :cond_72

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_46
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    :goto_5f
    array-length v0, v8

    if-ge v10, v0, :cond_6d

    aget-object v0, v8, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5f

    :cond_6d
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :catch_71
    move-exception v0

    :cond_72
    const/4 v0, 0x0

    :goto_73
    return-object v0

    :cond_74
    new-instance v0, Landroid/webkit/PluginData;

    invoke-interface {v12}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v1

    invoke-interface {v1}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v12}, Lcom/fsck/k9/mail/Part;->getSize()I

    move-result v2

    int-to-long v2, v2

    const/16 v5, 0xc8

    invoke-direct/range {v0 .. v5}, Landroid/webkit/PluginData;-><init>(Ljava/io/InputStream;JLjava/util/Map;I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_88} :catch_71

    goto :goto_73
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const/4 v5, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    packed-switch p1, :pswitch_data_52

    goto :goto_4

    :pswitch_9
    if-eqz p3, :cond_4

    const-string v0, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "com.fsck.k9.ChooseFolder_curfolder"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.fsck.k9.ChooseFolder_messageuid"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    packed-switch p1, :pswitch_data_5a

    goto :goto_4

    :pswitch_31
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z

    goto :goto_4

    :pswitch_41
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->copyMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z

    goto :goto_4

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_41
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    :goto_7
    return-void

    :sswitch_8
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onClickSender()V

    goto :goto_7

    :sswitch_c
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onReply()V

    goto :goto_7

    :sswitch_10
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onReplyAll()V

    goto :goto_7

    :sswitch_14
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onDelete()V

    goto :goto_7

    :sswitch_18
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onForward()V

    goto :goto_7

    :sswitch_1c
    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageView;->onNext(Z)V

    goto :goto_7

    :sswitch_24
    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageView;->onPrevious(Z)V

    goto :goto_7

    :sswitch_2c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageView$Attachment;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageView;->onDownloadAttachment(Lcom/fsck/k9/activity/MessageView$Attachment;)V

    goto :goto_7

    :sswitch_36
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageView$Attachment;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageView;->onViewAttachment(Lcom/fsck/k9/activity/MessageView$Attachment;)V

    goto :goto_7

    :sswitch_40
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onShowPictures()V

    goto :goto_7

    :sswitch_data_44
    .sparse-switch
        0x7f0b0005 -> :sswitch_1c
        0x7f0b0036 -> :sswitch_8
        0x7f0b0054 -> :sswitch_c
        0x7f0b0055 -> :sswitch_10
        0x7f0b0056 -> :sswitch_18
        0x7f0b0058 -> :sswitch_24
        0x7f0b0059 -> :sswitch_14
        0x7f0b005a -> :sswitch_1c
        0x7f0b005c -> :sswitch_24
        0x7f0b005d -> :sswitch_14
        0x7f0b005e -> :sswitch_c
        0x7f0b005f -> :sswitch_18
        0x7f0b0062 -> :sswitch_2c
        0x7f0b0063 -> :sswitch_36
        0x7f0b006b -> :sswitch_40
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 21

    invoke-super/range {p0 .. p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->requestWindowFeature(I)Z

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->requestWindowFeature(I)Z

    const v17, 0x7f030015

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setContentView(I)V

    const v17, 0x7f0b0036

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mFromView:Landroid/widget/TextView;

    const v17, 0x7f0b0037

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mToView:Landroid/widget/TextView;

    const v17, 0x7f0b0038

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mCcView:Landroid/widget/TextView;

    const v17, 0x7f0b003a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fsck/k9/activity/MessageView;->defaultSubjectColor:I

    const v17, 0x7f0b004d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mDateView:Landroid/widget/TextView;

    const v17, 0x7f0b0067

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mTimeView:Landroid/widget/TextView;

    const v17, 0x7f0b0052

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;

    const v17, 0x7f0b003c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    const v17, 0x7f0b003b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    const v17, 0x7f0b0064

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mAttachmentIcon:Landroid/view/View;

    const v17, 0x7f0b006a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mShowPicturesSection:Landroid/view/View;

    const v17, 0x7f0b004c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mFlagged:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mFlagged:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    new-instance v18, Lcom/fsck/k9/activity/MessageView$3;

    invoke-direct/range {v18 .. v19}, Lcom/fsck/k9/activity/MessageView$3;-><init>(Lcom/fsck/k9/activity/MessageView;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    sget-object v17, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mAttachmentIcon:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    const v17, 0x7f0b0036

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b0054

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b0055

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b005d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b0056

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b0005

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b005c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b005e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b0059

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b005f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b005a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b0058

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b006b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const-string v17, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageView;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    if-eqz p1, :cond_2db

    const-string v17, "com.fsck.k9.MessageView_account"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    const-string v17, "com.fsck.k9.MessageView_folder"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    const-string v17, "com.fsck.k9.MessageView_message"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    const-string v17, "com.fsck.k9.MessageView_messageUids"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    :goto_239
    const v17, 0x7f0b0005

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->next:Landroid/view/View;

    const v17, 0x7f0b005c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->previous:Landroid/view/View;

    const v17, 0x7f0b0005

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b005c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setOnClickListener(I)V

    const v17, 0x7f0b005a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->next_scrolling:Landroid/view/View;

    const v17, 0x7f0b0058

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->previous_scrolling:Landroid/view/View;

    new-instance v17, Landroid/view/GestureDetector;

    new-instance v18, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;

    invoke-direct/range {v18 .. v19}, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;-><init>(Lcom/fsck/k9/activity/MessageView;)V

    invoke-direct/range {v17 .. v18}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->gestureDetector:Landroid/view/GestureDetector;

    const-string v17, "com.fsck.k9.MessageView_next"

    const/16 v18, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->next:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    :cond_2b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getHideMessageViewButtons()Lcom/fsck/k9/Account$HideButtons;

    move-result-object v10

    sget-object v17, Lcom/fsck/k9/Account$HideButtons;->ALWAYS:Lcom/fsck/k9/Account$HideButtons;

    move-object/from16 v0, v17

    move-object v1, v10

    if-ne v0, v1, :cond_3e2

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageView;->hideButtons()V

    :goto_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageView;->displayMessage(Ljava/lang/String;)V

    :goto_2da
    return-void

    :cond_2db
    if-nez v15, :cond_31d

    const-string v17, "com.fsck.k9.MessageView_account"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/fsck/k9/Account;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    const-string v17, "com.fsck.k9.MessageView_folder"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    const-string v17, "com.fsck.k9.MessageView_message"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    const-string v17, "com.fsck.k9.MessageView_messageUids"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    goto/16 :goto_239

    :cond_31d
    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3ba

    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v5

    const/4 v8, 0x0

    move-object v6, v5

    array-length v13, v6

    const/4 v11, 0x0

    :goto_344
    if-ge v11, v13, :cond_35f

    aget-object v3, v6, v11

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_388

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    const/4 v8, 0x1

    :cond_35f
    if-nez v8, :cond_38b

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid account id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2da

    :cond_388
    add-int/lit8 v11, v11, 0x1

    goto :goto_344

    :cond_38b
    const/16 v17, 0x1

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    const/16 v17, 0x2

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    goto/16 :goto_239

    :cond_3ba
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid intent uri: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2da

    :cond_3e2
    sget-object v17, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    move-object/from16 v0, v17

    move-object v1, v10

    if-ne v0, v1, :cond_3ee

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageView;->showButtons()V

    goto/16 :goto_2cd

    :cond_3ee
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    move-object v0, v7

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_408

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageView;->hideButtons()V

    goto/16 :goto_2cd

    :cond_408
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageView;->showButtons()V

    goto/16 :goto_2cd
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView;->optionsMenu:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->setMenuFlag()V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v0

    if-nez v0, :cond_2d

    const v0, 0x7f0b0085

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2d
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v0

    if-nez v0, :cond_47

    const v0, 0x7f0b0084

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_47
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_6c

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onDelete()V

    move v1, v3

    goto :goto_8

    :sswitch_e
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onDelete()V

    move v1, v3

    goto :goto_8

    :sswitch_13
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onForward()V

    move v1, v3

    goto :goto_8

    :sswitch_18
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onReplyAll()V

    move v1, v3

    goto :goto_8

    :sswitch_1d
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onReply()V

    move v1, v3

    goto :goto_8

    :sswitch_22
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onFlag()V

    move v1, v3

    goto :goto_8

    :sswitch_27
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onMove()V

    move v1, v3

    goto :goto_8

    :sswitch_2c
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onCopy()V

    move v1, v3

    goto :goto_8

    :sswitch_31
    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageView;->onPrevious(Z)V

    move v1, v3

    goto :goto_8

    :sswitch_3a
    invoke-static {}, Lcom/fsck/k9/K9;->isAnimations()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageView;->onNext(Z)V

    move v1, v3

    goto :goto_8

    :sswitch_43
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    new-instance v2, Lcom/fsck/k9/activity/MessageView$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/MessageView$1;-><init>(Lcom/fsck/k9/activity/MessageView;)V

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->post(Ljava/lang/Runnable;)Z

    :goto_53
    move v1, v3

    goto :goto_8

    :cond_55
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    new-instance v2, Lcom/fsck/k9/activity/MessageView$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/MessageView$2;-><init>(Lcom/fsck/k9/activity/MessageView;)V

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_53

    :sswitch_60
    const v1, 0x7f0801b8

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v1, v3

    goto :goto_8

    :sswitch_data_6c
    .sparse-switch
        0x1d -> :sswitch_18
        0x20 -> :sswitch_e
        0x22 -> :sswitch_13
        0x23 -> :sswitch_22
        0x24 -> :sswitch_60
        0x26 -> :sswitch_31
        0x27 -> :sswitch_3a
        0x29 -> :sswitch_27
        0x2a -> :sswitch_3a
        0x2c -> :sswitch_31
        0x2e -> :sswitch_1d
        0x35 -> :sswitch_2c
        0x36 -> :sswitch_43
        0x43 -> :sswitch_9
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :sswitch_c
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onDelete()V

    :goto_f
    const/4 v0, 0x1

    goto :goto_b

    :sswitch_11
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onReply()V

    goto :goto_f

    :sswitch_15
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onReplyAll()V

    goto :goto_f

    :sswitch_19
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onForward()V

    goto :goto_f

    :sswitch_1d
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onSendAlternate()V

    goto :goto_f

    :sswitch_21
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onMarkAsUnread()V

    goto :goto_f

    :sswitch_25
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onFlag()V

    goto :goto_f

    :sswitch_29
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onMove()V

    goto :goto_f

    :sswitch_2d
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->onCopy()V

    goto :goto_f

    nop

    :sswitch_data_32
    .sparse-switch
        0x7f0b0054 -> :sswitch_11
        0x7f0b0055 -> :sswitch_15
        0x7f0b0056 -> :sswitch_19
        0x7f0b005d -> :sswitch_c
        0x7f0b0083 -> :sswitch_25
        0x7f0b0084 -> :sswitch_29
        0x7f0b0085 -> :sswitch_2d
        0x7f0b0086 -> :sswitch_1d
        0x7f0b00ab -> :sswitch_21
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageView;->setMenuFlag()V

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "com.fsck.k9.MessageView_account"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "com.fsck.k9.MessageView_folder"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mFolder:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.fsck.k9.MessageView_message"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.fsck.k9.MessageView_messageUids"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView;->mMessageUids:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public service(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    const-string v4, "http://cid/"

    const-string v3, "http://cid/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    if-eqz v3, :cond_41

    :try_start_e
    const-string v3, "http://cid/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/internet/MimeUtility;->findPartByContentId(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v2

    if-eqz v2, :cond_41

    new-instance v1, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v1}, Landroid/webkit/CacheManager$CacheResult;-><init>()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3e} :catch_40

    move-object v3, v1

    :goto_3f
    return-object v3

    :catch_40
    move-exception v3

    :cond_41
    const/4 v3, 0x0

    goto :goto_3f
.end method
