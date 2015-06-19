.class  Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;
.super Ljava/lang/Object;
.source "MessageList.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
.field final synthetic val$message:Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iput-object p2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;->val$message:Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v1
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;->val$message:Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I
move-result v0
if-gez v0, :cond_19
mul-int/lit8 v1, v0, -0x1
const/4 v2, 0x1
sub-int v0, v1, v2
:cond_19
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v1
#getter for: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->messages:Ljava/util/List;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$300(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$2;->val$message:Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
return-void
.end method