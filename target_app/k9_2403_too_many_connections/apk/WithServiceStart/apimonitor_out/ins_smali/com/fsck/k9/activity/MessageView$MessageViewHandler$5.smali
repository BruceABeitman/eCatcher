.class  Lcom/fsck/k9/activity/MessageView$MessageViewHandler$5;
.super Ljava/lang/Object;
.source "MessageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$5;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$5;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
const v1, 0x7f08005a
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method