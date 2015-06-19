.class  Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;
.super Ljava/lang/Object;
.source "MessageList.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v2, v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;
#calls: Lcom/fsck/k9/activity/MessageList;->onToggleFlag(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
invoke-static {v1, v0}, Lcom/fsck/k9/activity/MessageList;->access$2300(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
const-string v1, " - Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method