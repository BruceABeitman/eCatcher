.class  Lcom/fsck/k9/activity/MessageView$Listener$6;
.super Ljava/lang/Object;
.source "MessageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$Listener;
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$Listener;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$Listener$6;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$6;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$000(Lcom/fsck/k9/activity/MessageView;)Landroid/webkit/WebView;
move-result-object v0
const-string v1, "file:///android_asset/loading.html"
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$6;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView;->setProgressBarIndeterminateVisibility(Z)V
return-void
.end method