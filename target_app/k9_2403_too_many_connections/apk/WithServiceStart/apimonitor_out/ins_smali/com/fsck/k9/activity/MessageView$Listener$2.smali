.class  Lcom/fsck/k9/activity/MessageView$Listener$2;
.super Ljava/lang/Object;
.source "MessageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$Listener;
.field final synthetic val$emailText:Ljava/lang/String;
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$Listener;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$Listener$2;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;
iput-object p2, p0, Lcom/fsck/k9/activity/MessageView$Listener$2;->val$emailText:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener$2;->this$1:Lcom/fsck/k9/activity/MessageView$Listener;
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$000(Lcom/fsck/k9/activity/MessageView;)Landroid/webkit/WebView;
move-result-object v0
const-string v1, "email://"
iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$Listener$2;->val$emailText:Ljava/lang/String;
const-string v3, "text/html"
const-string v4, "utf-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method