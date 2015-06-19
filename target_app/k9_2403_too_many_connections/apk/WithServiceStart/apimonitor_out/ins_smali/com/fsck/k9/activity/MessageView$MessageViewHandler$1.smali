.class  Lcom/fsck/k9/activity/MessageView$MessageViewHandler$1;
.super Ljava/lang/Object;
.source "MessageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
.field final synthetic val$progress:Z
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Z)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$1;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$1;->val$progress:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$1;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$1;->val$progress:Z
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setProgressBarIndeterminateVisibility(Z)V
return-void
.end method