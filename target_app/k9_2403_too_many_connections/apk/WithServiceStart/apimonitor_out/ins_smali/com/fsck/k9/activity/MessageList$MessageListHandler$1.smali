.class  Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;
.super Ljava/lang/Object;
.source "MessageList.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
.field final synthetic val$messages:Ljava/util/List;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iput-object p2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->val$messages:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->val$messages:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
:cond_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_59
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
if-eqz v1, :cond_6
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_34
iget-object v2, v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
if-eqz v2, :cond_6
iget-object v2, v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->folder:Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v3, v3, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;
invoke-static {v3}, Lcom/fsck/k9/activity/MessageList;->access$000(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
:cond_34
iget-boolean v2, v1, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z
if-eqz v2, :cond_49
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$100(Lcom/fsck/k9/activity/MessageList;)I
move-result v2
if-lez v2, :cond_49
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$110(Lcom/fsck/k9/activity/MessageList;)I
:cond_49
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v2
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_6
:cond_59
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v2
invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v2, v2, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#calls: Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V
invoke-static {v2}, Lcom/fsck/k9/activity/MessageList;->access$400(Lcom/fsck/k9/activity/MessageList;)V
return-void
.end method