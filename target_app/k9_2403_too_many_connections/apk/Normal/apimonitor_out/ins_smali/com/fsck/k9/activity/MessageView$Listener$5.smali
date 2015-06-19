.class  Lcom/fsck/k9/activity/MessageView$Listener$5;
.super Ljava/lang/Object;
.source "MessageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$Listener;
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$Listener;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$Listener$5;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$5;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setProgressBarIndeterminateVisibility(Z)V
return-void
.end method