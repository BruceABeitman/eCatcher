.class  Lcom/fsck/k9/activity/MessageView$MessageViewHandler$7;
.super Ljava/lang/Object;
.source "MessageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
.field final synthetic val$filename:Ljava/lang/String;
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$7;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iput-object p2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$7;->val$filename:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const/4 v5, 0x1
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$7;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$7;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
const v2, 0x7f0800a6
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageView;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v5, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$7;->val$filename:Ljava/lang/String;
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method