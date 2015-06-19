.class  Lcom/fsck/k9/activity/MessageList$MessageListHandler$4;
.super Ljava/lang/Object;
.source "MessageList.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$4;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$4;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v0
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;
move-result-object v0
monitor-enter v0
:try_start_d
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$4;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v1
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;
move-result-object v1
invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
monitor-exit v0
:try_end_1d
.catchall {:try_start_d .. :try_end_1d} :catchall_29
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$4;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V
return-void
:catchall_29
move-exception v1
:try_start_2a
monitor-exit v0
:try_end_2b
.catchall {:try_start_2a .. :try_end_2b} :catchall_29
throw v1
.end method