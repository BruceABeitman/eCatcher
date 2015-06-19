.class  Lcom/fsck/k9/activity/MessageList$3;
.super Ljava/lang/Object;
.source "MessageList.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$3;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/MessageList$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$3;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageList;->dismissDialog(I)V
:try_start_6
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$3;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mController:Lcom/fsck/k9/MessagingController;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$1600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/MessagingController;
move-result-object v2
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$3;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$1000(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;
move-result-object v3
iget-object v4, p0, Lcom/fsck/k9/activity/MessageList$3;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCurrentFolder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageList;->access$600(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
move-result-object v4
iget-object v4, v4, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/MessagingController;->markAllMessagesRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$3;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v2
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_3d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->read:Z
goto :goto_2b
:catch_3b
move-exception v2
:goto_3c
const-string v1, " - Lcom/fsck/k9/activity/MessageList$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3d
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$3;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;
move-result-object v2
#calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
:try_end_46
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_46} :catch_3b
goto :goto_3c
.end method