.class  Lcom/fsck/k9/activity/MessageList$MessageListHandler;
.super Landroid/os/Handler;
.source "MessageList.java"
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method static synthetic access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
return-void
.end method
.method static synthetic access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
return-void
.end method
.method static synthetic access$700(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->setWindowTitle()V
return-void
.end method
.method static synthetic access$800(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->setWindowProgress()V
return-void
.end method
.method private refreshTitle()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
new-instance v1, Lcom/fsck/k9/activity/MessageList$MessageListHandler$5;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler$5;-><init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private setWindowProgress()V
.registers 5
const/16 v3, 0x2710
const/16 v0, 0x2710
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v1
if-eqz v1, :cond_4a
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v1
iget-boolean v1, v1, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->loading:Z
if-eqz v1, :cond_4a
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v1
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/activity/ActivityListener;->getFolderTotal()I
move-result v1
if-lez v1, :cond_4a
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v1
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/activity/ActivityListener;->getFolderTotal()I
move-result v1
div-int v1, v3, v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v2
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v2
invoke-virtual {v2}, Lcom/fsck/k9/activity/ActivityListener;->getFolderCompleted()I
move-result v2
mul-int v0, v1, v2
if-le v0, v3, :cond_4a
const/16 v0, 0x2710
:cond_4a
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageList;->getWindow()Landroid/view/Window;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V
return-void
.end method
.method private setWindowTitle()V
.registers 10
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_57
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v1
const-string v2, "INBOX"
invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1f
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
const v3, 0x7f080072
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v1
:cond_1f
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v2
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v2
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
const v5, 0x7f08000d
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
iget-object v8, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v8}, Lcom/fsck/k9/activity/MessageList;->access$1000(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;
move-result-object v8
invoke-virtual {v8}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x1
aput-object v1, v6, v7
invoke-virtual {v4, v5, v6}, Lcom/fsck/k9/activity/MessageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mUnreadMessageCount:I
invoke-static {v5}, Lcom/fsck/k9/activity/MessageList;->access$1100(Lcom/fsck/k9/activity/MessageList;)I
move-result v5
invoke-virtual {v2, v3, v4, v5}, Lcom/fsck/k9/activity/ActivityListener;->formatHeader(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-virtual {v2, v0}, Lcom/fsck/k9/activity/MessageList;->setTitle(Ljava/lang/CharSequence;)V
:cond_56
:goto_56
return-void
:cond_57
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_56
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
const v5, 0x7f080033
invoke-virtual {v4, v5}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageList;->access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageList;->setTitle(Ljava/lang/CharSequence;)V
goto :goto_56
.end method
.method private sortMessages()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
new-instance v1, Lcom/fsck/k9/activity/MessageList$MessageListHandler$4;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler$4;-><init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public addMessages(Ljava/util/List;)V
.registers 7
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v3
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
move-result v2
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_12
:goto_12
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_45
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_3a
iget-object v3, v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
if-eqz v3, :cond_12
iget-object v3, v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
iget-object v3, v3, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageList;->access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_12
:cond_3a
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
new-instance v4, Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;
invoke-direct {v4, p0, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;-><init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V
goto :goto_12
:cond_45
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
new-instance v4, Lcom/fsck/k9/activity/MessageList$MessageListHandler$3;
invoke-direct {v4, p0, v2}, Lcom/fsck/k9/activity/MessageList$MessageListHandler$3;-><init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;Z)V
invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public folderLoading(Ljava/lang/String;Z)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v0
iput-boolean p2, v0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->loading:Z
:cond_1e
return-void
.end method
.method public progress(Z)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
new-instance v1, Lcom/fsck/k9/activity/MessageList$MessageListHandler$6;
invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler$6;-><init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;Z)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public removeMessage(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
new-instance v1, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;
invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;-><init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;Ljava/util/List;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method