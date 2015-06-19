.class public Lcom/fsck/k9/activity/ChooseFolder;
.super Lcom/fsck/k9/K9ListActivity;
.source "ChooseFolder.java"
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_account"
.field public static final EXTRA_CUR_FOLDER:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_curfolder"
.field public static final EXTRA_MESSAGE_UID:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_messageuid"
.field public static final EXTRA_NEW_FOLDER:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_newfolder"
.field public static final EXTRA_SHOW_CURRENT:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_showcurrent"
.field public static final EXTRA_SHOW_DISPLAYABLE_ONLY:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_showDisplayableOnly"
.field public static final EXTRA_SHOW_FOLDER_NONE:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_showOptionNone"
.field  adapter:Landroid/widget/ArrayAdapter;
.field  heldInbox:Ljava/lang/String;
.field  hideCurrentFolder:Z
.field  mAccount:Lcom/fsck/k9/Account;
.field  mFolder:Ljava/lang/String;
.field private mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
.field private mListener:Lcom/fsck/k9/MessagingListener;
.field  mUID:Ljava/lang/String;
.field  showDisplayableOnly:Z
.field  showOptionNone:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/fsck/k9/K9ListActivity;-><init>()V
new-instance v0, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;-><init>(Lcom/fsck/k9/activity/ChooseFolder;)V
iput-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->heldInbox:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->hideCurrentFolder:Z
iput-boolean v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->showOptionNone:Z
iput-boolean v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->showDisplayableOnly:Z
new-instance v0, Lcom/fsck/k9/activity/ChooseFolder$2;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/ChooseFolder$2;-><init>(Lcom/fsck/k9/activity/ChooseFolder;)V
iput-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mListener:Lcom/fsck/k9/MessagingListener;
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/fsck/k9/activity/ChooseFolder; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onCreate(Landroid/os/Bundle;)V
const/4 v1, 0x5
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/ChooseFolder;->requestWindowFeature(I)Z
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.fsck.k9.ChooseFolder_account"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v1
check-cast v1, Lcom/fsck/k9/Account;
iput-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;
const-string v1, "com.fsck.k9.ChooseFolder_messageuid"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mUID:Ljava/lang/String;
const-string v1, "com.fsck.k9.ChooseFolder_curfolder"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;
const-string v1, "com.fsck.k9.ChooseFolder_showcurrent"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_4d
iput-boolean v4, p0, Lcom/fsck/k9/activity/ChooseFolder;->hideCurrentFolder:Z
:cond_4d
const-string v1, "com.fsck.k9.ChooseFolder_showOptionNone"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_57
iput-boolean v2, p0, Lcom/fsck/k9/activity/ChooseFolder;->showOptionNone:Z
:cond_57
const-string v1, "com.fsck.k9.ChooseFolder_showDisplayableOnly"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_61
iput-boolean v2, p0, Lcom/fsck/k9/activity/ChooseFolder;->showDisplayableOnly:Z
:cond_61
iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;
if-nez v1, :cond_69
const-string v1, ""
iput-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;
:cond_69
new-instance v1, Landroid/widget/ArrayAdapter;
const v2, 0x1090003
invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->adapter:Landroid/widget/ArrayAdapter;
iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->adapter:Landroid/widget/ArrayAdapter;
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/ChooseFolder;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getApplication()Landroid/app/Application;
move-result-object v1
invoke-static {v1}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;
iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mListener:Lcom/fsck/k9/MessagingListener;
invoke-virtual {v1, v2, v4, v3}, Lcom/fsck/k9/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/MessagingListener;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;
move-result-object v1
new-instance v2, Lcom/fsck/k9/activity/ChooseFolder$1;
invoke-direct {v2, p0}, Lcom/fsck/k9/activity/ChooseFolder$1;-><init>(Lcom/fsck/k9/activity/ChooseFolder;)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const-string v1, " - Lcom/fsck/k9/activity/ChooseFolder; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method