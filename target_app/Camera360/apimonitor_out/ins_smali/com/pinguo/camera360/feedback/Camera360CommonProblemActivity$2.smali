.class  Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$2;
.super Landroid/webkit/WebViewClient;
.source "Camera360CommonProblemActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;
.method constructor <init>(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$2;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$2;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRefreshBtn:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->access$0(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$2;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRefreshBtn:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->access$0(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$2;->this$0:Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;
#getter for: Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mOfflineHtmlUrl:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->access$1(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 4
invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
const/4 v0, 0x1
return v0
.end method