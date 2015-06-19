.class public Lcom/fsck/k9/activity/Accounts;
.super Lcom/fsck/k9/K9ListActivity;
.source "Accounts.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.field private static final DIALOG_REMOVE_ACCOUNT:I = 0x1
.field public static final EXTRA_STARTUP:Ljava/lang/String; = "startup"
.field private static SELECTED_CONTEXT_ACCOUNT:Ljava/lang/String;
.field private static UNREAD_MESSAGE_COUNTS:Ljava/lang/String;
.field private mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
.field private mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
.field  mListener:Lcom/fsck/k9/activity/ActivityListener;
.field private mSelectedContextAccount:Lcom/fsck/k9/Account;
.field private mUnreadMessageCount:I
.field private pendingWork:Ljava/util/concurrent/ConcurrentHashMap;
.field private unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
.method static constructor <clinit>()V
.registers 1
const-string v0, "unreadMessageCounts"
sput-object v0, Lcom/fsck/k9/activity/Accounts;->UNREAD_MESSAGE_COUNTS:Ljava/lang/String;
const-string v0, "selectedContextAccount"
sput-object v0, Lcom/fsck/k9/activity/Accounts;->SELECTED_CONTEXT_ACCOUNT:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/K9ListActivity;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentHashMap;
const/4 v0, 0x0
iput v0, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I
new-instance v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;-><init>(Lcom/fsck/k9/activity/Accounts;)V
iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
new-instance v0, Lcom/fsck/k9/activity/Accounts$1;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/Accounts$1;-><init>(Lcom/fsck/k9/activity/Accounts;)V
iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/activity/Accounts;)I
.registers 2
iget v0, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I
return v0
.end method
.method static synthetic access$012(Lcom/fsck/k9/activity/Accounts;I)I
.registers 3
iget v0, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I
add-int/2addr v0, p1
iput v0, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I
return v0
.end method
.method static synthetic access$200(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
return-object v0
.end method
.method static synthetic access$300(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
return-object v0
.end method
.method static synthetic access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
return-object v0
.end method
.method static synthetic access$500(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentHashMap;
return-object v0
.end method
.method static synthetic access$600(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/Account;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
return-object v0
.end method
.method static synthetic access$700(Lcom/fsck/k9/activity/Accounts;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->refresh()V
return-void
.end method
.method public static actionLaunch(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/Accounts;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "startup"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private createRemoveAccountDialog()Landroid/app/Dialog;
.registers 6
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f0801b1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0801b2
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f080018
new-instance v2, Lcom/fsck/k9/activity/Accounts$3;
invoke-direct {v2, p0}, Lcom/fsck/k9/activity/Accounts$3;-><init>(Lcom/fsck/k9/activity/Accounts;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f080019
new-instance v2, Lcom/fsck/k9/activity/Accounts$2;
invoke-direct {v2, p0}, Lcom/fsck/k9/activity/Accounts$2;-><init>(Lcom/fsck/k9/activity/Accounts;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
return-object v0
.end method
.method private getVersionNumber()Ljava/lang/String;
.registers 6
const-string v1, "?"
:try_start_2
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getPackageName()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:try_end_11
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_11} :catch_12
:goto_11
return-object v1
:catch_12
move-exception v2
goto :goto_11
.end method
.method public static listAccounts(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/Accounts;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "startup"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private onAbout()V
.registers 14
const v11, 0x7f080004
const/4 v9, 0x0
const/4 v8, 0x1
const-string v12, "\">"
const-string v10, "<p>"
const/high16 v3, 0x7f08
invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Landroid/webkit/WebView;
invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "<h1>"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const v4, 0x7f080009
invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v5, v8, [Ljava/lang/Object;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "<a href=\""
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const v7, 0x7f080006
invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "\">"
invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "</a>"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v9
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "</h1>"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "<p>"
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const v4, 0x7f080082
invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v5, v8, [Ljava/lang/Object;
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->getVersionNumber()Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v9
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "</p>"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "<p>"
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const v4, 0x7f080003
invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v5, v8, [Ljava/lang/Object;
const v6, 0x7f080002
invoke-virtual {p0, v6}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v9
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "</p>"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "<p>"
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const v4, 0x7f080005
invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v5, v8, [Ljava/lang/Object;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "<a href=\""
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "\">"
invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "</a></p>"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v9
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string v3, "text/html"
const-string v4, "utf-8"
invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Landroid/app/AlertDialog$Builder;
invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v3
invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v3
const v4, 0x7f080018
new-instance v5, Lcom/fsck/k9/activity/Accounts$4;
invoke-direct {v5, p0}, Lcom/fsck/k9/activity/Accounts$4;-><init>(Lcom/fsck/k9/activity/Accounts;)V
invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v3
invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
return-void
.end method
.method private onAddNewAccount()V
.registers 1
invoke-static {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/content/Context;)V
return-void
.end method
.method private onCheckMail(Lcom/fsck/k9/Account;)V
.registers 8
const/4 v3, 0x1
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
const/4 v5, 0x0
move-object v1, p0
move-object v2, p1
move v4, v3
invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private onClear(Lcom/fsck/k9/Account;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
const v1, 0x7f080066
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->workingAccount(Lcom/fsck/k9/Account;I)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/MessagingController;->clear(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private onClearCommands(Lcom/fsck/k9/Account;)V
.registers 3
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/fsck/k9/MessagingController;->clearAllPending(Lcom/fsck/k9/Account;)V
return-void
.end method
.method private onCompact(Lcom/fsck/k9/Account;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
const v1, 0x7f080065
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->workingAccount(Lcom/fsck/k9/Account;I)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/MessagingController;->compact(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private onCompose()V
.registers 3
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;
move-result-object v0
if-eqz v0, :cond_e
invoke-static {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V
:goto_d
return-void
:cond_e
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onAddNewAccount()V
goto :goto_d
.end method
.method private onDeleteAccount(Lcom/fsck/k9/Account;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/Accounts;->showDialog(I)V
return-void
.end method
.method private onEditAccount(Lcom/fsck/k9/Account;)V
.registers 2
invoke-static {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V
return-void
.end method
.method private onEditPrefs()V
.registers 1
invoke-static {p0}, Lcom/fsck/k9/activity/setup/Prefs;->actionPrefs(Landroid/content/Context;)V
return-void
.end method
.method private onEmptyTrash(Lcom/fsck/k9/Account;)V
.registers 4
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/MessagingController;->emptyTrash(Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method
.method private onOpenAccount(Lcom/fsck/k9/Account;Z)V
.registers 5
const-string v0, "-NONE-"
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
invoke-static {p0, p1, p2}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
:goto_f
return-void
:cond_10
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0, p2}, Lcom/fsck/k9/activity/MessageList;->actionHandleFolder(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
goto :goto_f
.end method
.method private refresh()V
.registers 9
const/4 v7, 0x0
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v5
invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;
move-result-object v1
new-instance v5, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
invoke-direct {v5, p0, v1}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;-><init>(Lcom/fsck/k9/activity/Accounts;[Lcom/fsck/k9/Account;)V
iput-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getListView()Landroid/widget/ListView;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
array-length v5, v1
if-lez v5, :cond_21
iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-virtual {v5, v7}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(I)V
:cond_21
iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
iput v7, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I
iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
move-object v2, v1
array-length v4, v2
const/4 v3, 0x0
:goto_30
if-ge v3, v4, :cond_4b
aget-object v0, v2, v3
iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentHashMap;
const-string v6, "true"
invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v5
invoke-static {v5}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-virtual {v5, p0, v0, v6}, Lcom/fsck/k9/MessagingController;->getAccountUnreadCount(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
add-int/lit8 v3, v3, 0x1
goto :goto_30
:cond_4b
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/Accounts; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const v1, 0x7f0b0005
if-ne v0, v1, :cond_c
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onAddNewAccount()V
:cond_c
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/Accounts; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
move-result-object v0
check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
if-eqz v0, :cond_16
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getListView()Landroid/widget/ListView;
move-result-object v1
iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/Account;
iput-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
:cond_16
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_50
:goto_1d
:pswitch_1d
const/4 v1, 0x1
move v2, v1
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:pswitch_1f
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onDeleteAccount(Lcom/fsck/k9/Account;)V
goto :goto_1d
:pswitch_25
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onEditAccount(Lcom/fsck/k9/Account;)V
goto :goto_1d
:pswitch_2b
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
const/4 v2, 0x0
invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/Accounts;->onOpenAccount(Lcom/fsck/k9/Account;Z)V
goto :goto_1d
:pswitch_32
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onCheckMail(Lcom/fsck/k9/Account;)V
goto :goto_1d
:pswitch_38
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onClearCommands(Lcom/fsck/k9/Account;)V
goto :goto_1d
:pswitch_3e
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onEmptyTrash(Lcom/fsck/k9/Account;)V
goto :goto_1d
:pswitch_44
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onCompact(Lcom/fsck/k9/Account;)V
goto :goto_1d
:pswitch_4a
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onClear(Lcom/fsck/k9/Account;)V
goto :goto_1d
:pswitch_data_50
.packed-switch 0x7f0b006f
:pswitch_2b
:pswitch_32
:pswitch_3e
:pswitch_25
:pswitch_1d
:pswitch_44
:pswitch_4a
:pswitch_1f
:pswitch_38
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/fsck/k9/activity/Accounts; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
const/4 v6, 0x1
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v5
invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v5, "startup"
invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v4
if-eqz v4, :cond_25
array-length v5, v0
if-ne v5, v6, :cond_25
aget-object v5, v0, v7
invoke-direct {p0, v5, v6}, Lcom/fsck/k9/activity/Accounts;->onOpenAccount(Lcom/fsck/k9/Account;Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->finish()V
:goto_24
:cond_24
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_25
const/4 v5, 0x5
invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/Accounts;->requestWindowFeature(I)Z
const/4 v5, 0x2
invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/Accounts;->requestWindowFeature(I)Z
const v5, 0x7f030008
invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/Accounts;->setContentView(I)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getListView()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V
const v5, 0x7f0b002b
invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/Accounts;->findViewById(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v2, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
const v5, 0x7f0b0005
invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/Accounts;->findViewById(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/Accounts;->registerForContextMenu(Landroid/view/View;)V
if-eqz p1, :cond_68
sget-object v5, Lcom/fsck/k9/activity/Accounts;->SELECTED_CONTEXT_ACCOUNT:Ljava/lang/String;
invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_68
const-string v5, "selectedContextAccount"
invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v5
check-cast v5, Lcom/fsck/k9/Account;
iput-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
:cond_68
if-eqz p1, :cond_24
sget-object v5, Lcom/fsck/k9/activity/Accounts;->UNREAD_MESSAGE_COUNTS:Ljava/lang/String;
invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/Map;
if-eqz v3, :cond_24
iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
goto :goto_24
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/Accounts; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/K9ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
const v0, 0x7f080054
invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const/high16 v1, 0x7f0a
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateDialog(I)Landroid/app/Dialog;
.registers 3
packed-switch p1, :pswitch_data_e
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onCreateDialog(I)Landroid/app/Dialog;
move-result-object v0
:goto_7
return-object v0
:pswitch_8
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->createRemoveAccountDialog()Landroid/app/Dialog;
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
const-string v0, " + Lcom/fsck/k9/activity/Accounts; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const v1, 0x7f0a0001
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/Accounts; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/Account;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fsck/k9/activity/Accounts;->onOpenAccount(Lcom/fsck/k9/Account;Z)V
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/Accounts; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/Accounts; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_26
:pswitch_7
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_b
move v2, v0
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onAddNewAccount()V
:goto_f
const/4 v0, 0x1
goto :goto_b
:pswitch_11
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onEditPrefs()V
goto :goto_f
:pswitch_15
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->onCheckMail(Lcom/fsck/k9/Account;)V
goto :goto_f
:pswitch_1a
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onCompose()V
goto :goto_f
:pswitch_1e
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onAbout()V
goto :goto_f
:pswitch_22
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->onSearchRequested()Z
goto :goto_f
:pswitch_data_26
.packed-switch 0x7f0b0070
:pswitch_15
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_1a
:pswitch_22
:pswitch_c
:pswitch_11
:pswitch_1e
.end packed-switch
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/fsck/k9/activity/Accounts; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/fsck/k9/K9ListActivity;->onPause()V
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->removeListener(Lcom/fsck/k9/MessagingListener;)V
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareDialog(ILandroid/app/Dialog;)V
.registers 9
packed-switch p1, :pswitch_data_22
:goto_3
invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
return-void
:pswitch_7
move-object v0, p2
check-cast v0, Landroid/app/AlertDialog;
move-object v1, v0
const v2, 0x7f0801b2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_3
:pswitch_data_22
.packed-switch 0x1
:pswitch_7
.end packed-switch
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/fsck/k9/activity/Accounts; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/fsck/k9/K9ListActivity;->onResume()V
invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->refresh()V
invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->addListener(Lcom/fsck/k9/MessagingListener;)V
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/fsck/k9/activity/Accounts; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
if-eqz v0, :cond_e
sget-object v0, Lcom/fsck/k9/activity/Accounts;->SELECTED_CONTEXT_ACCOUNT:Ljava/lang/String;
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
:cond_e
sget-object v0, Lcom/fsck/k9/activity/Accounts;->UNREAD_MESSAGE_COUNTS:Ljava/lang/String;
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, " - Lcom/fsck/k9/activity/Accounts; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method