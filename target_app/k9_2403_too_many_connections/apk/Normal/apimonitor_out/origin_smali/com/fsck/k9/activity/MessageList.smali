.class public Lcom/fsck/k9/activity/MessageList;
.super Lcom/fsck/k9/K9Activity;
.source "MessageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;,
        Lcom/fsck/k9/activity/MessageList$FooterViewHolder;,
        Lcom/fsck/k9/activity/MessageList$MessageViewHolder;,
        Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;,
        Lcom/fsck/k9/activity/MessageList$MessageListAdapter;,
        Lcom/fsck/k9/activity/MessageList$MyGestureDetector;,
        Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHOOSE_FOLDER_COPY:I = 0x2

.field private static final ACTIVITY_CHOOSE_FOLDER_MOVE:I = 0x1

.field private static final DIALOG_MARK_ALL_AS_READ:I = 0x1

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_FOLDER:Ljava/lang/String; = "folder"

.field private static final EXTRA_QUERY:Ljava/lang/String; = "query"

.field private static final EXTRA_STARTUP:Ljava/lang/String; = "startup"

.field private static final STATE_CURRENT_FOLDER:Ljava/lang/String; = "com.fsck.k9.activity.messagelist_folder"

.field private static final STATE_KEY_LIST:Ljava/lang/String; = "com.fsck.k9.activity.messagelist_state"

.field private static final STATE_KEY_SELECTED_COUNT:Ljava/lang/String; = "com.fsck.k9.activity.messagelist_selected_count"

.field private static final STATE_KEY_SELECTION:Ljava/lang/String; = "com.fsck.k9.activity.messagelist_selection"

.field private static final STATE_QUERY:Ljava/lang/String; = "com.fsck.k9.activity.query"


# instance fields
.field private final batch_ops:[I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/View$OnTouchListener;

.field private mAccount:Lcom/fsck/k9/Account;

.field private mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

.field private mBatchButtonArea:Landroid/view/View;

.field private mBatchDeleteButton:Landroid/widget/Button;

.field private mBatchDoneButton:Landroid/widget/Button;

.field private mBatchFlagButton:Landroid/widget/Button;

.field private mBatchReadButton:Landroid/widget/Button;

.field private mCheckboxes:Z

.field private mController:Lcom/fsck/k9/MessagingController;

.field private mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

.field private mFolderName:Ljava/lang/String;

.field private mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mQueryString:Ljava/lang/String;

.field private mSelectedCount:I

.field private mStars:Z

.field private mTouchView:Z

.field private mUnreadMessageCount:I

.field private sortAscending:Z

.field private sortDateAscending:Z

.field private sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mTouchView:Z

    iput v2, p0, Lcom/fsck/k9/activity/MessageList;->mUnreadMessageCount:I

    new-instance v0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;-><init>(Lcom/fsck/k9/activity/MessageList;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    sget-object v0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->sortAscending:Z

    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageList;->sortDateAscending:Z

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mStars:Z

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mCheckboxes:Z

    iput v2, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageList;->batch_ops:[I

    return-void

    :array_28
    .array-data 0x4
        0xa8t 0x0t 0xbt 0x7ft
        0xa2t 0x0t 0xbt 0x7ft
        0xa4t 0x0t 0xbt 0x7ft
        0xa6t 0x0t 0xbt 0x7ft
        0xa3t 0x0t 0xbt 0x7ft
        0xa5t 0x0t 0xbt 0x7ft
        0xa7t 0x0t 0xbt 0x7ft
        0xa9t 0x0t 0xbt 0x7ft
        0xaat 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/MessageList;)I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$108(Lcom/fsck/k9/activity/MessageList;)I
    .registers 3

    iget v0, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/fsck/k9/activity/MessageList;)I
    .registers 3

    iget v0, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/MessageList;)I
    .registers 2

    iget v0, p0, Lcom/fsck/k9/activity/MessageList;->mUnreadMessageCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/fsck/k9/activity/MessageList;I)I
    .registers 2

    iput p1, p0, Lcom/fsck/k9/activity/MessageList;->mUnreadMessageCount:I

    return p1
.end method

.method static synthetic access$112(Lcom/fsck/k9/activity/MessageList;I)I
    .registers 3

    iget v0, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/activity/MessageList;)Landroid/view/GestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/MessagingController;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fsck/k9/activity/MessageList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->mTouchView:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/fsck/k9/activity/MessageList;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList;->onToggleFlag(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/fsck/k9/activity/MessageList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->mStars:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/fsck/k9/activity/MessageList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->mCheckboxes:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/fsck/k9/activity/MessageList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->sortAscending:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/MessagingController$SORT_TYPE;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/fsck/k9/activity/MessageList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->sortDateAscending:Z

    return v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/MessageList;)V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/MessageList;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    return-object v0
.end method

.method public static actionHandleFolder(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "startup"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_18

    const-string v1, "folder"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private anySelected()Z
    .registers 4

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iget-boolean v2, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private changeSort(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    if-ne v0, p1, :cond_8

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onToggleSortAscending()V

    :goto_7
    return-void

    :cond_8
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->setSortType(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->isSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->sortAscending:Z

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->isSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->sortDateAscending:Z

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->reSort()V

    goto :goto_7
.end method

.method private checkMail(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/fsck/k9/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList;->sendMail(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method private computeBatchDirection(Z)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iget-boolean v3, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    if-eqz v3, :cond_b

    if-eqz p1, :cond_23

    iget-boolean v3, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z

    if-nez v3, :cond_b

    const/4 v2, 0x1

    goto :goto_b

    :cond_23
    iget-boolean v3, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    if-nez v3, :cond_b

    const/4 v2, 0x1

    goto :goto_b

    :cond_29
    return v2
.end method

.method private createMarkAllAsReadDialog()Landroid/app/Dialog;
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v4, v4, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->displayName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/MessageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080018

    new-instance v2, Lcom/fsck/k9/activity/MessageList$3;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/MessageList$3;-><init>(Lcom/fsck/k9/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080019

    new-instance v2, Lcom/fsck/k9/activity/MessageList$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/MessageList$2;-><init>(Lcom/fsck/k9/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private deleteSelected()V
    .registers 11

    const/4 v9, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iget-boolean v4, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    if-eqz v4, :cond_15

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2e
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4, v3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->removeMessages(Ljava/util/List;)V

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v7, v4, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    new-array v4, v9, [Lcom/fsck/k9/mail/Message;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fsck/k9/mail/Message;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v4, v8}, Lcom/fsck/k9/MessagingController;->deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    iput v9, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V

    return-void
.end method

.method private flagSelected(Lcom/fsck/k9/mail/Flag;Z)V
    .registers 12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iget-boolean v0, v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    if-ne p1, v0, :cond_2b

    iput-boolean p2, v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    goto :goto_f

    :cond_2b
    sget-object v0, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    if-ne p1, v0, :cond_f

    iput-boolean p2, v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z

    goto :goto_f

    :cond_32
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/fsck/k9/mail/Message;

    invoke-interface {v8, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/fsck/k9/mail/Message;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Flag;Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method private hideBatchButtons()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mBatchButtonArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private moveOrCopySelected(Z)V
    .registers 2

    return-void
.end method

.method private onAccounts()V
    .registers 1

    invoke-static {p0}, Lcom/fsck/k9/activity/Accounts;->listAccounts(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->finish()V

    return-void
.end method

.method private onCompose()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    goto :goto_8
.end method

.method private onCopy(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 6

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v2

    if-nez v2, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController;->isCopyCapable(Lcom/fsck/k9/mail/Message;)Z

    move-result v2

    if-nez v2, :cond_21

    const v2, 0x7f08012a

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.fsck.k9.ChooseFolder_account"

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_messageuid"

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/fsck/k9/activity/MessageList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a
.end method

.method private onCopyChosen(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    if-eqz p2, :cond_22

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v2, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->copyMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z

    :cond_22
    return-void
.end method

.method private onCycleSort()V
    .registers 6

    invoke-static {}, Lcom/fsck/k9/MessagingController$SORT_TYPE;->values()[Lcom/fsck/k9/MessagingController$SORT_TYPE;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    array-length v3, v2

    if-ge v1, v3, :cond_10

    aget-object v3, v2, v1

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    if-ne v3, v4, :cond_1c

    move v0, v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    array-length v3, v2

    if-ne v0, v3, :cond_16

    const/4 v0, 0x0

    :cond_16
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageList;->changeSort(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V

    return-void

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private onDelete(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;I)V
    .registers 9

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->removeMessage(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v2, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/fsck/k9/mail/Message;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingController;->deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method private onEditAccount()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    return-void
.end method

.method private onExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/fsck/k9/MessagingController;->expunge(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method private onForward(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 4

    iget-object v0, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-static {p0, v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->actionForward(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V

    return-void
.end method

.method private onMarkAllAsRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageList;->showDialog(I)V

    return-void
.end method

.method private onMove(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v2

    if-nez v2, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController;->isMoveCapable(Lcom/fsck/k9/mail/Message;)Z

    move-result v2

    if-nez v2, :cond_21

    const v2, 0x7f08012a

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_b

    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.fsck.k9.ChooseFolder_account"

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_messageuid"

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/fsck/k9/activity/MessageList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b
.end method

.method private onMoveChosen(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    if-eqz p2, :cond_27

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->removeMessage(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v2, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)Z

    :cond_27
    return-void
.end method

.method private onOpenMessage(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 8

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-static {p0, v3, v4}, Lcom/fsck/k9/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V

    :goto_17
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    if-nez v3, :cond_23

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v3}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    :cond_23
    return-void

    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_45
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v4, v4, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    iget-object v5, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->uid:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5, v2}, Lcom/fsck/k9/activity/MessageView;->actionView(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_17
.end method

.method private onReply(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 5

    iget-object v0, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->actionReply(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Z)V

    return-void
.end method

.method private onReplyAll(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 5

    iget-object v0, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->actionReply(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Z)V

    return-void
.end method

.method private onRestoreListState(Landroid/os/Bundle;)V
    .registers 6

    const-string v1, "com.fsck.k9.activity.messagelist_folder"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    const-string v1, "com.fsck.k9.activity.query"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    const-string v1, "com.fsck.k9.activity.messagelist_selection"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1e
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getFolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    :cond_2e
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    const-string v2, "com.fsck.k9.activity.messagelist_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private onShowFolderList()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->finish()V

    return-void
.end method

.method private onToggleFlag(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v2, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->uid:Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    iget-boolean v5, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z

    if-nez v5, :cond_2d

    move v5, v7

    :goto_1d
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V

    iget-boolean v0, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z

    if-nez v0, :cond_2f

    move v0, v7

    :goto_25
    iput-boolean v0, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void

    :cond_2d
    move v5, v6

    goto :goto_1d

    :cond_2f
    move v0, v6

    goto :goto_25
.end method

.method private onToggleRead(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    iget-object v2, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->uid:Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    iget-boolean v5, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    if-nez v5, :cond_2d

    move v5, v7

    :goto_1d
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V

    iget-boolean v0, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    if-nez v0, :cond_2f

    move v0, v7

    :goto_25
    iput-boolean v0, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void

    :cond_2d
    move v5, v6

    goto :goto_1d

    :cond_2f
    move v0, v6

    goto :goto_25
.end method

.method private onToggleSortAscending()V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    iget-boolean v2, p0, Lcom/fsck/k9/activity/MessageList;->sortAscending:Z

    if-nez v2, :cond_24

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->setSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->isSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->sortAscending:Z

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->isSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->sortDateAscending:Z

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->reSort()V

    return-void

    :cond_24
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private reSort()V
    .registers 5

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageList;->sortAscending:Z

    invoke-virtual {v2, v3}, Lcom/fsck/k9/MessagingController$SORT_TYPE;->getToast(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method private sendMail(Lcom/fsck/k9/Account;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method private setAllSelected(Z)V
    .registers 7

    const/4 v4, 0x0

    iput v4, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iput-boolean p1, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    iget v2, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    if-eqz p1, :cond_24

    const/4 v3, 0x1

    :goto_20
    add-int/2addr v2, v3

    iput v2, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    goto :goto_d

    :cond_24
    move v3, v4

    goto :goto_20

    :cond_26
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V

    return-void
.end method

.method private setOpsState(Landroid/view/Menu;ZZ)V
    .registers 9

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->batch_ops:[I

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_19

    aget v2, v0, v1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_19
    return-void
.end method

.method private setSelected(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;Z)V
    .registers 5

    iget-boolean v0, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    if-eq v0, p2, :cond_e

    iput-boolean p2, p1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    iget v0, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    if-eqz p2, :cond_17

    const/4 v1, 0x1

    :goto_b
    add-int/2addr v0, v1

    iput v0, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    :cond_e
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V

    return-void

    :cond_17
    const/4 v1, -0x1

    goto :goto_b
.end method

.method private showBatchButtons()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mBatchButtonArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private toggleBatchButtons()V
    .registers 7

    const/4 v5, 0x0

    iget v4, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    if-gez v4, :cond_7

    iput v5, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    :cond_7
    iget v4, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    if-nez v4, :cond_1f

    const v3, 0x7f08008f

    const v0, 0x7f080091

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->hideBatchButtons()V

    :goto_14
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mBatchReadButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mBatchFlagButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_1f
    invoke-direct {p0, v5}, Lcom/fsck/k9/activity/MessageList;->computeBatchDirection(Z)Z

    move-result v2

    if-eqz v2, :cond_36

    const v3, 0x7f08008f

    :goto_28
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/fsck/k9/activity/MessageList;->computeBatchDirection(Z)Z

    move-result v1

    if-eqz v1, :cond_3a

    const v0, 0x7f080091

    :goto_32
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showBatchButtons()V

    goto :goto_14

    :cond_36
    const v3, 0x7f080090

    goto :goto_28

    :cond_3a
    const v0, 0x7f080092

    goto :goto_32
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    packed-switch p1, :pswitch_data_2c

    goto :goto_3

    :pswitch_8
    if-eqz p3, :cond_3

    const-string v3, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.fsck.k9.ChooseFolder_messageuid"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    packed-switch p1, :pswitch_data_34

    goto :goto_3

    :pswitch_24
    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/activity/MessageList;->onMoveChosen(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_28
    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/activity/MessageList;->onCopyChosen(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13

    const/4 v10, 0x0

    const/4 v5, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mBatchDoneButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_14

    invoke-direct {p0, v10}, Lcom/fsck/k9/activity/MessageList;->setAllSelected(Z)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mBatchFlagButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_44

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->computeBatchDirection(Z)Z

    move-result v5

    :goto_1d
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_27
    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iget-boolean v0, v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mBatchDeleteButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_49

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    :goto_3e
    iget-object v0, v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_44
    invoke-direct {p0, v10}, Lcom/fsck/k9/activity/MessageList;->computeBatchDirection(Z)Z

    move-result v5

    goto :goto_1d

    :cond_49
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mBatchFlagButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_50

    iput-boolean v5, v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z

    goto :goto_3e

    :cond_50
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mBatchReadButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3e

    iput-boolean v5, v6, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    goto :goto_3e

    :cond_57
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v9}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->removeMessages(Ljava/util/List;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mBatchDeleteButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_85

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    new-array v0, v10, [Lcom/fsck/k9/mail/Message;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Message;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/fsck/k9/MessagingController;->deleteMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V

    iput v10, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V

    :goto_7f
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    goto :goto_13

    :cond_85
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    new-array v3, v10, [Lcom/fsck/k9/mail/Message;

    invoke-interface {v8, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/fsck/k9/mail/Message;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mBatchReadButton:Landroid/widget/Button;

    if-ne p1, v4, :cond_9f

    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    :goto_9b
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_7f

    :cond_9f
    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    goto :goto_9b

    :cond_a2
    const v0, 0x7f0801c8

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7f
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_52

    :goto_17
    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :sswitch_1c
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onOpenMessage(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_20
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/fsck/k9/activity/MessageList;->setSelected(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;Z)V

    goto :goto_17

    :sswitch_25
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/fsck/k9/activity/MessageList;->setSelected(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;Z)V

    goto :goto_17

    :sswitch_2a
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0, v2}, Lcom/fsck/k9/activity/MessageList;->onDelete(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;I)V

    goto :goto_17

    :sswitch_30
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onReply(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_34
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onReplyAll(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_38
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onForward(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_3c
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onToggleRead(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_40
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onToggleFlag(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_44
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onMove(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_48
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onCopy(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_4c
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p0, v2, v0}, Lcom/fsck/k9/activity/MessageList;->onSendAlternate(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_17

    :sswitch_data_52
    .sparse-switch
        0x7f0b0054 -> :sswitch_30
        0x7f0b0055 -> :sswitch_34
        0x7f0b0056 -> :sswitch_38
        0x7f0b005d -> :sswitch_2a
        0x7f0b006f -> :sswitch_1c
        0x7f0b0082 -> :sswitch_3c
        0x7f0b0083 -> :sswitch_40
        0x7f0b0084 -> :sswitch_44
        0x7f0b0085 -> :sswitch_48
        0x7f0b0086 -> :sswitch_4c
        0x7f0b0096 -> :sswitch_20
        0x7f0b0097 -> :sswitch_25
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->requestWindowFeature(I)Z

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->requestWindowFeature(I)Z

    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->setContentView(I)V

    const v2, 0x7f0b0049

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->registerForContextMenu(Landroid/view/View;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0044

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchButtonArea:Landroid/view/View;

    const v2, 0x7f0b0045

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchReadButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchReadButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0046

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchDeleteButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0047

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchFlagButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchFlagButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0048

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchDoneButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mBatchDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/Account;

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    if-nez p1, :cond_11b

    const-string v2, "folder"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    if-nez v2, :cond_c2

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    if-nez v2, :cond_c2

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    :cond_c2
    :goto_c2
    new-instance v2, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;-><init>(Lcom/fsck/k9/activity/MessageList;)V

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_da

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_da
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    if-eqz v2, :cond_ea

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getFolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    :cond_ea
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p1, :cond_100

    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList;->onRestoreListState(Landroid/os/Bundle;)V

    :cond_100
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/fsck/k9/activity/MessageList$MyGestureDetector;

    invoke-direct {v3, p0}, Lcom/fsck/k9/activity/MessageList$MyGestureDetector;-><init>(Lcom/fsck/k9/activity/MessageList;)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lcom/fsck/k9/activity/MessageList$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/MessageList$1;-><init>(Lcom/fsck/k9/activity/MessageList;)V

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->gestureListener:Landroid/view/View$OnTouchListener;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->gestureListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_11b
    const-string v2, "com.fsck.k9.activity.messagelist_folder"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    const-string v2, "com.fsck.k9.activity.query"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    const-string v2, "com.fsck.k9.activity.messagelist_selected_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    goto :goto_c2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13

    const v8, 0x7f0b0097

    const v7, 0x7f0b0096

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/K9Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    if-nez v2, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v3, v2, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->subject:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-boolean v3, v2, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z

    if-eqz v3, :cond_3c

    const v3, 0x7f0b0082

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f080046

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3c
    iget-boolean v3, v2, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->flagged:Z

    if-eqz v3, :cond_4d

    const v3, 0x7f0b0083

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f080044

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_4d
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v4, v2, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v3

    if-nez v3, :cond_61

    const v3, 0x7f0b0085

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_61
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v4, v2, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v3

    if-nez v3, :cond_75

    const v3, 0x7f0b0084

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_75
    iget-boolean v3, v2, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    if-eqz v3, :cond_88

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1b

    :cond_88
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1b
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3

    packed-switch p1, :pswitch_data_e

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->createMarkAllAsReadDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    if-eqz v1, :cond_1e

    add-int/lit8 v1, p3, 0x1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
    invoke-static {v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/MessagingController;->loadMoreMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1, p3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iget v1, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    if-lez v1, :cond_35

    iget-boolean v1, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z

    if-nez v1, :cond_33

    const/4 v1, 0x1

    :goto_2f
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/activity/MessageList;->setSelected(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;Z)V

    goto :goto_1d

    :cond_33
    const/4 v1, 0x0

    goto :goto_2f

    :cond_35
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onOpenMessage(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_1d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_a6

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1a

    :try_start_d
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v3, v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_9f

    if-eqz v0, :cond_1a

    sparse-switch p1, :sswitch_data_c4

    :cond_1a
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_1e
    return v3

    :sswitch_1f
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mBatchButtonArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_29

    move v3, v5

    goto :goto_1e

    :cond_29
    move v3, v4

    goto :goto_1e

    :sswitch_2b
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mBatchButtonArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_35

    move v3, v5

    goto :goto_1e

    :cond_35
    move v3, v4

    goto :goto_1e

    :sswitch_37
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onCompose()V

    move v3, v4

    goto :goto_1e

    :sswitch_3c
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onShowFolderList()V

    move v3, v4

    goto :goto_1e

    :sswitch_41
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onCycleSort()V

    move v3, v4

    goto :goto_1e

    :sswitch_46
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onToggleSortAscending()V

    move v3, v4

    goto :goto_1e

    :sswitch_4b
    const v3, 0x7f0801b9

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v3, v4

    goto :goto_1e

    :sswitch_57
    :try_start_57
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/activity/MessageList;->onDelete(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;I)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :sswitch_5f
    :try_start_5f
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/activity/MessageList;->onDelete(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;I)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :sswitch_67
    :try_start_67
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onForward(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :sswitch_6f
    :try_start_6f
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onReplyAll(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :sswitch_77
    :try_start_77
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onReply(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :sswitch_7f
    :try_start_7f
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onToggleFlag(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :sswitch_87
    :try_start_87
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onMove(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :sswitch_8f
    :try_start_8f
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onCopy(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :sswitch_97
    :try_start_97
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->onToggleRead(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9f

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e

    :catchall_9f
    move-exception v3

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_1e

    :sswitch_data_a6
    .sparse-switch
        0x15 -> :sswitch_1f
        0x16 -> :sswitch_2b
        0x1f -> :sswitch_37
        0x24 -> :sswitch_4b
        0x25 -> :sswitch_46
        0x2b -> :sswitch_41
        0x2d -> :sswitch_3c
    .end sparse-switch

    :sswitch_data_c4
    .sparse-switch
        0x1d -> :sswitch_6f
        0x20 -> :sswitch_5f
        0x22 -> :sswitch_67
        0x23 -> :sswitch_7f
        0x29 -> :sswitch_87
        0x2e -> :sswitch_77
        0x35 -> :sswitch_8f
        0x36 -> :sswitch_97
        0x43 -> :sswitch_57
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_d6

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    if-eqz v1, :cond_5c

    move v1, v2

    :goto_e
    return v1

    :sswitch_f
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/MessageList;->checkMail(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    :cond_1a
    move v1, v3

    goto :goto_e

    :sswitch_1c
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageList;->sendMail(Lcom/fsck/k9/Account;)V

    move v1, v3

    goto :goto_e

    :sswitch_23
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onCompose()V

    move v1, v3

    goto :goto_e

    :sswitch_28
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onAccounts()V

    move v1, v3

    goto :goto_e

    :sswitch_2d
    sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageList;->changeSort(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V

    move v1, v3

    goto :goto_e

    :sswitch_34
    sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_SUBJECT:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageList;->changeSort(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V

    move v1, v3

    goto :goto_e

    :sswitch_3b
    sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_SENDER:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageList;->changeSort(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V

    move v1, v3

    goto :goto_e

    :sswitch_42
    sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_FLAGGED:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageList;->changeSort(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V

    move v1, v3

    goto :goto_e

    :sswitch_49
    sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_UNREAD:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageList;->changeSort(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V

    move v1, v3

    goto :goto_e

    :sswitch_50
    sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_ATTACHMENT:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageList;->changeSort(Lcom/fsck/k9/MessagingController$SORT_TYPE;)V

    move v1, v3

    goto :goto_e

    :sswitch_57
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onShowFolderList()V

    move v1, v3

    goto :goto_e

    :cond_5c
    sparse-switch v0, :sswitch_data_104

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_e

    :sswitch_64
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/MessageList;->onMarkAllAsRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    :cond_6f
    move v1, v3

    goto :goto_e

    :sswitch_71
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/fsck/k9/activity/setup/FolderSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    :cond_7c
    move v1, v3

    goto :goto_e

    :sswitch_7e
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onEditAccount()V

    move v1, v3

    goto :goto_e

    :sswitch_83
    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageList;->setAllSelected(Z)V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V

    move v1, v3

    goto :goto_e

    :sswitch_8b
    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/MessageList;->setAllSelected(Z)V

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V

    move v1, v3

    goto/16 :goto_e

    :sswitch_94
    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/MessageList;->moveOrCopySelected(Z)V

    move v1, v3

    goto/16 :goto_e

    :sswitch_9a
    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageList;->moveOrCopySelected(Z)V

    move v1, v3

    goto/16 :goto_e

    :sswitch_a0
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->deleteSelected()V

    move v1, v3

    goto/16 :goto_e

    :sswitch_a6
    sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-direct {p0, v1, v3}, Lcom/fsck/k9/activity/MessageList;->flagSelected(Lcom/fsck/k9/mail/Flag;Z)V

    move v1, v3

    goto/16 :goto_e

    :sswitch_ae
    sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/MessageList;->flagSelected(Lcom/fsck/k9/mail/Flag;Z)V

    move v1, v3

    goto/16 :goto_e

    :sswitch_b6
    sget-object v1, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-direct {p0, v1, v3}, Lcom/fsck/k9/activity/MessageList;->flagSelected(Lcom/fsck/k9/mail/Flag;Z)V

    move v1, v3

    goto/16 :goto_e

    :sswitch_be
    sget-object v1, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/MessageList;->flagSelected(Lcom/fsck/k9/mail/Flag;Z)V

    move v1, v3

    goto/16 :goto_e

    :sswitch_c6
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/MessageList;->onExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    :cond_d3
    move v1, v3

    goto/16 :goto_e

    :sswitch_data_d6
    .sparse-switch
        0x7f0b0070 -> :sswitch_f
        0x7f0b0078 -> :sswitch_23
        0x7f0b007f -> :sswitch_1c
        0x7f0b0087 -> :sswitch_57
        0x7f0b0088 -> :sswitch_28
        0x7f0b0099 -> :sswitch_2d
        0x7f0b009a -> :sswitch_34
        0x7f0b009b -> :sswitch_3b
        0x7f0b009c -> :sswitch_42
        0x7f0b009d -> :sswitch_49
        0x7f0b009e -> :sswitch_50
    .end sparse-switch

    :sswitch_data_104
    .sparse-switch
        0x7f0b007e -> :sswitch_64
        0x7f0b0080 -> :sswitch_71
        0x7f0b0081 -> :sswitch_c6
        0x7f0b0089 -> :sswitch_7e
        0x7f0b00a2 -> :sswitch_a0
        0x7f0b00a3 -> :sswitch_a6
        0x7f0b00a4 -> :sswitch_b6
        0x7f0b00a5 -> :sswitch_ae
        0x7f0b00a6 -> :sswitch_be
        0x7f0b00a7 -> :sswitch_9a
        0x7f0b00a8 -> :sswitch_94
        0x7f0b00a9 -> :sswitch_83
        0x7f0b00aa -> :sswitch_8b
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onPause()V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->removeListener(Lcom/fsck/k9/MessagingListener;)V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7

    packed-switch p1, :pswitch_data_22

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    if-eqz v0, :cond_6

    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f080042

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->displayName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/MessageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10

    const v7, 0x7f0b0081

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    if-eqz v3, :cond_42

    const v3, 0x7f0b009f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b007e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b0080

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b0089

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b0087

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_42
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->anySelected()Z

    move-result v0

    invoke-direct {p0, p1, v6, v0}, Lcom/fsck/k9/activity/MessageList;->setOpsState(Landroid/view/Menu;ZZ)V

    invoke-direct {p0, v6}, Lcom/fsck/k9/activity/MessageList;->computeBatchDirection(Z)Z

    move-result v1

    invoke-direct {p0, v5}, Lcom/fsck/k9/activity/MessageList;->computeBatchDirection(Z)Z

    move-result v2

    const v3, 0x7f0b00a4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b00a6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v1, :cond_d3

    move v4, v6

    :goto_65
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b00a3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b00a5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v2, :cond_d5

    move v4, v6

    :goto_7c
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b00aa

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b00a9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b00a7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0b00a8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    if-eqz v3, :cond_d7

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-boolean v3, v3, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->outbox:Z

    if-eqz v3, :cond_d7

    const v3, 0x7f0b0070

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_bb
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    if-eqz v3, :cond_d2

    sget-object v3, Lcom/fsck/k9/K9;->ERROR_FOLDER_NAME:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;

    iget-object v4, v4, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d2
    return v6

    :cond_d3
    move v4, v5

    goto :goto_65

    :cond_d5
    move v4, v5

    goto :goto_7c

    :cond_d7
    const v3, 0x7f0b007f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_bb
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onResume()V

    invoke-static {}, Lcom/fsck/k9/K9;->messageListStars()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mStars:Z

    invoke-static {}, Lcom/fsck/k9/K9;->messageListCheckboxes()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mCheckboxes:Z

    invoke-static {}, Lcom/fsck/k9/K9;->messageListTouchable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mTouchView:Z

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    invoke-virtual {v1}, Lcom/fsck/k9/MessagingController;->getSortType()Lcom/fsck/k9/MessagingController$SORT_TYPE;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->sortType:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/MessagingController;->isSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->sortAscending:Z

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    sget-object v2, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/MessagingController;->isSortAscending(Lcom/fsck/k9/MessagingController$SORT_TYPE;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->sortDateAscending:Z

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/MessagingController;->addListener(Lcom/fsck/k9/MessagingListener;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
    invoke-static {v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/MessagingController;->listLocalMessagesSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v1, -0x3e8

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
    invoke-static {v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/MessagingController;->getFolderUnreadMessageCount(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    :cond_89
    :goto_89
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void

    :cond_8f
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
    invoke-static {v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/MessagingController;->searchLocalMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V

    goto :goto_89
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.fsck.k9.activity.messagelist_state"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.fsck.k9.activity.messagelist_selection"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.fsck.k9.activity.messagelist_folder"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.fsck.k9.activity.query"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.fsck.k9.activity.messagelist_selected_count"

    iget v1, p0, Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSendAlternate(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;

    iget-object v1, p2, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v0, p0, p1, v1}, Lcom/fsck/k9/MessagingController;->sendAlternate(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)V

    return-void
.end method

.method public showProgressIndicator(Z)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    if-eqz p1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_10

    :cond_1c
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_10
.end method
