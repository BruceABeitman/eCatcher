.class public Lcom/fsck/k9/activity/FolderList;
.super Lcom/fsck/k9/K9ListActivity;
.source "FolderList.java"
.field private static final DIALOG_MARK_ALL_AS_READ:I = 0x1
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"
.field private static final EXTRA_CLEAR_NOTIFICATION:Ljava/lang/String; = "clearNotification"
.field private static final EXTRA_INITIAL_FOLDER:Ljava/lang/String; = "initialFolder"
.field private static final EXTRA_STARTUP:Ljava/lang/String; = "startup"
.field private static final REFRESH_REMOTE:Z = true
.field private static final STATE_CURRENT_FOLDER:Ljava/lang/String; = "com.fsck.k9.activity.folderlist_folder"
.field private mAccount:Lcom/fsck/k9/Account;
.field private mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
.field private mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
.field private mInflater:Landroid/view/LayoutInflater;
.field private mListView:Landroid/widget/ListView;
.field private mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
.field private mStartup:Z
.field private mUnreadMessageCount:I
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/fsck/k9/K9ListActivity;-><init>()V
new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;-><init>(Lcom/fsck/k9/activity/FolderList;)V
iput-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
iput-boolean v1, p0, Lcom/fsck/k9/activity/FolderList;->mStartup:Z
iput v1, p0, Lcom/fsck/k9/activity/FolderList;->mUnreadMessageCount:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
return-object v0
.end method
.method static synthetic access$100(Lcom/fsck/k9/activity/FolderList;)I
.registers 2
iget v0, p0, Lcom/fsck/k9/activity/FolderList;->mUnreadMessageCount:I
return v0
.end method
.method static synthetic access$102(Lcom/fsck/k9/activity/FolderList;I)I
.registers 2
iput p1, p0, Lcom/fsck/k9/activity/FolderList;->mUnreadMessageCount:I
return p1
.end method
.method static synthetic access$200(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
return-object v0
.end method
.method static synthetic access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
return-object v0
.end method
.method static synthetic access$600(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
return-object v0
.end method
.method static synthetic access$700(Lcom/fsck/k9/activity/FolderList;)Landroid/view/LayoutInflater;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mInflater:Landroid/view/LayoutInflater;
return-object v0
.end method
.method static synthetic access$800(Lcom/fsck/k9/activity/FolderList;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/fsck/k9/activity/FolderList;->truncateStatus(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
return-void
.end method
.method private static actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
.registers 6
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/FolderList;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "account"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const-string v1, "startup"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
if-eqz p2, :cond_18
const-string v1, "initialFolder"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_18
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, v0, p2}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
return-void
.end method
.method public static actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public static actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/content/Intent;
.registers 8
const/4 v4, 0x1
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "email://accounts/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAccountNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
const-class v3, Lcom/fsck/k9/activity/FolderList;
invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v1, "account"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const-string v1, "clearNotification"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
if-eqz p2, :cond_3c
const-string v1, "initialFolder"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:goto_3b
return-object v0
:cond_3c
const-string v1, "startup"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
goto :goto_3b
.end method
.method private checkMail(Lcom/fsck/k9/Account;)V
.registers 8
const/4 v3, 0x1
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v5
move-object v1, p0
move-object v2, p1
move v4, v3
invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private checkMail(Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;)V
.registers 8
const-string v3, "power"
invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/FolderList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/PowerManager;
const/4 v3, 0x1
const-string v4, "Email - UpdateWorker"
invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
const-wide/32 v3, 0x927c0
invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
new-instance v0, Lcom/fsck/k9/activity/FolderList$1;
invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/FolderList$1;-><init>(Lcom/fsck/k9/activity/FolderList;Landroid/os/PowerManager$WakeLock;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v3
invoke-static {v3}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v3
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
iget-object v5, p1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {v3, v4, v5, v0}, Lcom/fsck/k9/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v3}, Lcom/fsck/k9/activity/FolderList;->sendMail(Lcom/fsck/k9/Account;)V
return-void
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
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
iget-object v4, v4, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f080018
new-instance v2, Lcom/fsck/k9/activity/FolderList$4;
invoke-direct {v2, p0}, Lcom/fsck/k9/activity/FolderList$4;-><init>(Lcom/fsck/k9/activity/FolderList;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f080019
new-instance v2, Lcom/fsck/k9/activity/FolderList$3;
invoke-direct {v2, p0}, Lcom/fsck/k9/activity/FolderList$3;-><init>(Lcom/fsck/k9/activity/FolderList;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
return-object v0
.end method
.method private initializeActivityView()V
.registers 5
const/4 v3, 0x1
const/4 v1, 0x5
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList;->requestWindowFeature(I)Z
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getListView()Landroid/widget/ListView;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;
const/high16 v2, 0x300
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setLongClickable(Z)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;
new-instance v2, Lcom/fsck/k9/activity/FolderList$2;
invoke-direct {v2, p0}, Lcom/fsck/k9/activity/FolderList$2;-><init>(Lcom/fsck/k9/activity/FolderList;)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList;->registerForContextMenu(Landroid/view/View;)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mInflater:Landroid/view/LayoutInflater;
new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;-><init>(Lcom/fsck/k9/activity/FolderList;)V
iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_4f
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
check-cast v0, Ljava/util/ArrayList;
#setter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
invoke-static {v1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$402(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
:cond_4f
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList;->setListAdapter(Landroid/widget/ListAdapter;)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method private onAccounts()V
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/activity/FolderList;->mStartup:Z
if-nez v0, :cond_a
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->isTaskRoot()Z
move-result v0
if-eqz v0, :cond_d
:cond_a
invoke-static {p0}, Lcom/fsck/k9/activity/Accounts;->listAccounts(Landroid/content/Context;)V
:cond_d
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->finish()V
return-void
.end method
.method private onClear(Lcom/fsck/k9/Account;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
const v1, 0x7f080066
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->workingAccount(I)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/MessagingController;->clear(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private onCompact(Lcom/fsck/k9/Account;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
const v1, 0x7f080065
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->workingAccount(I)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/MessagingController;->compact(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private onEditAccount()V
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V
return-void
.end method
.method private onEditFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/fsck/k9/activity/setup/FolderSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V
return-void
.end method
.method private onEmptyTrash(Lcom/fsck/k9/Account;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/MessagingController;->emptyTrash(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private onExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, p2, v1}, Lcom/fsck/k9/MessagingController;->expunge(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private onMarkAllAsRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-virtual {v0, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/FolderList;->showDialog(I)V
return-void
.end method
.method private onOpenFolder(Ljava/lang/String;Z)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {p0, v0, p1, p2}, Lcom/fsck/k9/activity/MessageList;->actionHandleFolder(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
return-void
.end method
.method private onRefresh(Z)V
.registers 5
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v2
invoke-virtual {v0, v1, p1, v2}, Lcom/fsck/k9/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private sendMail(Lcom/fsck/k9/Account;)V
.registers 4
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v1
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private truncateStatus(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/16 v1, 0x1b
if-eqz p1, :cond_f
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v1, :cond_f
const/4 v0, 0x0
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:cond_f
return-object p1
.end method
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/FolderList; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
move-result-object v1
check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v2
sparse-switch v2, :sswitch_data_4c
:goto_17
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
move-result v2
const-string v1, " - Lcom/fsck/k9/activity/FolderList; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
:sswitch_1c
iget-object v2, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
const/4 v3, 0x0
invoke-direct {p0, v2, v3}, Lcom/fsck/k9/activity/FolderList;->onOpenFolder(Ljava/lang/String;Z)V
goto :goto_17
:sswitch_23
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-direct {p0, v2, v3}, Lcom/fsck/k9/activity/FolderList;->onMarkAllAsRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V
goto :goto_17
:sswitch_2b
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v2}, Lcom/fsck/k9/activity/FolderList;->sendMail(Lcom/fsck/k9/Account;)V
goto :goto_17
:sswitch_31
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->checkMail(Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;)V
goto :goto_17
:sswitch_35
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-direct {p0, v2, v3}, Lcom/fsck/k9/activity/FolderList;->onEditFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
goto :goto_17
:sswitch_3d
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v2}, Lcom/fsck/k9/activity/FolderList;->onEmptyTrash(Lcom/fsck/k9/Account;)V
goto :goto_17
:sswitch_43
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-direct {p0, v2, v3}, Lcom/fsck/k9/activity/FolderList;->onExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
goto :goto_17
nop
:sswitch_data_4c
.sparse-switch
0x7f0b0070 -> :sswitch_31
0x7f0b0071 -> :sswitch_3d
0x7f0b007d -> :sswitch_1c
0x7f0b007e -> :sswitch_23
0x7f0b007f -> :sswitch_2b
0x7f0b0080 -> :sswitch_35
0x7f0b0081 -> :sswitch_43
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/fsck/k9/activity/FolderList; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onCreate(Landroid/os/Bundle;)V
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v3, "account"
invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v3
check-cast v3, Lcom/fsck/k9/Account;
iput-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
if-nez p1, :cond_45
const-string v3, "initialFolder"
invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "startup"
invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v3
iput-boolean v3, p0, Lcom/fsck/k9/activity/FolderList;->mStartup:Z
if-nez v0, :cond_2f
iget-boolean v3, p0, Lcom/fsck/k9/activity/FolderList;->mStartup:Z
if-eqz v3, :cond_2f
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v3}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;
move-result-object v0
:goto_2f
:cond_2f
iget-boolean v3, p0, Lcom/fsck/k9/activity/FolderList;->mStartup:Z
if-eqz v3, :cond_59
if-eqz v0, :cond_59
const-string v3, "-NONE-"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_59
const/4 v3, 0x1
invoke-direct {p0, v0, v3}, Lcom/fsck/k9/activity/FolderList;->onOpenFolder(Ljava/lang/String;Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->finish()V
:goto_44
const-string v1, " - Lcom/fsck/k9/activity/FolderList; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_45
const/4 v0, 0x0
iput-boolean v4, p0, Lcom/fsck/k9/activity/FolderList;->mStartup:Z
const-string v3, "com.fsck.k9.activity.folderlist_folder"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2f
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-virtual {v3, v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
move-result-object v3
iput-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
goto :goto_2f
:cond_59
invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->initializeActivityView()V
goto :goto_44
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/FolderList; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/K9ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
move-object v0, p3
check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
move-object v2, v0
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v3
const v4, 0x7f0a0002
invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
iget-object v3, v1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
iget-object v3, v1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v4}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_39
const v3, 0x7f0b0071
invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;
move-result-object v3
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
:cond_39
iget-boolean v3, v1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->outbox:Z
if-eqz v3, :cond_61
const v3, 0x7f0b0070
invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;
move-result-object v3
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
:goto_47
sget-object v3, Lcom/fsck/k9/K9;->ERROR_FOLDER_NAME:Ljava/lang/String;
iget-object v4, v1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5b
const v3, 0x7f0b0081
invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;
move-result-object v3
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
:cond_5b
iget-object v3, v1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
const-string v1, " - Lcom/fsck/k9/activity/FolderList; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_61
const v3, 0x7f0b007f
invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;
move-result-object v3
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
goto :goto_47
.end method
.method public onCreateDialog(I)Landroid/app/Dialog;
.registers 3
packed-switch p1, :pswitch_data_e
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onCreateDialog(I)Landroid/app/Dialog;
move-result-object v0
:goto_7
return-object v0
:pswitch_8
invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->createMarkAllAsReadDialog()Landroid/app/Dialog;
move-result-object v0
goto :goto_7
nop
:pswitch_data_e
.packed-switch 0x1
:pswitch_8
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/FolderList; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const v1, 0x7f0a0004
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/fsck/k9/activity/FolderList; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v2, 0x1
sparse-switch p1, :sswitch_data_20
invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v1
:goto_8
return v1
:sswitch_9
invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onAccounts()V
move v1, v2
goto :goto_8
:sswitch_e
invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onEditAccount()V
move v1, v2
goto :goto_8
:sswitch_13
const v1, 0x7f0801b9
invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
move v1, v2
goto :goto_8
nop
:sswitch_data_20
.sparse-switch
0x24 -> :sswitch_13
0x2d -> :sswitch_9
0x2f -> :sswitch_e
.end sparse-switch
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/FolderList; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
sparse-switch v0, :sswitch_data_50
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_c
move v2, v0
const-string v1, " - Lcom/fsck/k9/activity/FolderList; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:sswitch_d
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V
move v0, v3
goto :goto_c
:sswitch_14
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->checkMail(Lcom/fsck/k9/Account;)V
move v0, v3
goto :goto_c
:sswitch_1b
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
move v0, v3
goto :goto_c
:sswitch_2b
invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onAccounts()V
move v0, v3
goto :goto_c
:sswitch_30
invoke-direct {p0, v3}, Lcom/fsck/k9/activity/FolderList;->onRefresh(Z)V
move v0, v3
goto :goto_c
:sswitch_35
invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onEditAccount()V
move v0, v3
goto :goto_c
:sswitch_3a
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->onEmptyTrash(Lcom/fsck/k9/Account;)V
move v0, v3
goto :goto_c
:sswitch_41
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->onCompact(Lcom/fsck/k9/Account;)V
move v0, v3
goto :goto_c
:sswitch_48
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->onClear(Lcom/fsck/k9/Account;)V
move v0, v3
goto :goto_c
nop
:sswitch_data_50
.sparse-switch
0x7f0b0070 -> :sswitch_14
0x7f0b0071 -> :sswitch_3a
0x7f0b0074 -> :sswitch_41
0x7f0b0075 -> :sswitch_48
0x7f0b0078 -> :sswitch_d
0x7f0b007f -> :sswitch_1b
0x7f0b0087 -> :sswitch_30
0x7f0b0088 -> :sswitch_2b
0x7f0b0089 -> :sswitch_35
.end sparse-switch
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/fsck/k9/activity/FolderList; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/fsck/k9/K9ListActivity;->onPause()V
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->removeListener(Lcom/fsck/k9/MessagingListener;)V
const-string v1, " - Lcom/fsck/k9/activity/FolderList; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareDialog(ILandroid/app/Dialog;)V
.registers 7
packed-switch p1, :pswitch_data_1e
invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
:goto_6
return-void
:pswitch_7
check-cast p2, Landroid/app/AlertDialog;
const v0, 0x7f080042
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
iget-object v3, v3, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_6
:pswitch_data_1e
.packed-switch 0x1
:pswitch_7
.end packed-switch
.end method
.method public onResume()V
.registers 5
const-string v1, " + Lcom/fsck/k9/activity/FolderList; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/fsck/k9/K9ListActivity;->onResume()V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
if-nez v1, :cond_a
invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->initializeActivityView()V
:cond_a
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v1
invoke-static {v1}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/MessagingController;->addListener(Lcom/fsck/k9/MessagingListener;)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->refresh(Lcom/fsck/k9/Preferences;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v1
invoke-static {v1}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v3
invoke-virtual {v1, p0, v2, v3}, Lcom/fsck/k9/MessagingController;->getAccountUnreadCount(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/FolderList;->onRefresh(Z)V
const-string v1, "notification"
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getAccountNumber()I
move-result v1
invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
const/16 v1, -0x3e8
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v2}, Lcom/fsck/k9/Account;->getAccountNumber()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
const-string v1, " - Lcom/fsck/k9/activity/FolderList; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/ArrayList;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/fsck/k9/activity/FolderList; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
if-eqz v0, :cond_10
const-string v0, "com.fsck.k9.activity.folderlist_folder"
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mSelectedContextFolder:Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_10
const-string v1, " - Lcom/fsck/k9/activity/FolderList; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method