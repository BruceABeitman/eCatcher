.class  Lcom/fsck/k9/activity/MessageCompose$4;
.super Ljava/lang/Object;
.source "MessageCompose.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;
.field final synthetic val$uri:Landroid/net/Uri;
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;Landroid/net/Uri;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$4;->this$0:Lcom/fsck/k9/activity/MessageCompose;
iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$4;->val$uri:Landroid/net/Uri;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$4;->this$0:Lcom/fsck/k9/activity/MessageCompose;
iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$4;->val$uri:Landroid/net/Uri;
#calls: Lcom/fsck/k9/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)V
invoke-static {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->access$300(Lcom/fsck/k9/activity/MessageCompose;Landroid/net/Uri;)V
return-void
.end method