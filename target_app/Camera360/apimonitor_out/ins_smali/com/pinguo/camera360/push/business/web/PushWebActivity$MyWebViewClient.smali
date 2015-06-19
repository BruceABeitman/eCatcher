.class  Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PushWebActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/push/business/web/PushWebActivity;
.method private constructor <init>(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;->this$0:Lcom/pinguo/camera360/push/business/web/PushWebActivity;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/push/business/web/PushWebActivity;Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;-><init>(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;->this$0:Lcom/pinguo/camera360/push/business/web/PushWebActivity;
#getter for: Lcom/pinguo/camera360/push/business/web/PushWebActivity;->process:Landroid/widget/ProgressBar;
invoke-static {v0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->access$0(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)Landroid/widget/ProgressBar;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;->this$0:Lcom/pinguo/camera360/push/business/web/PushWebActivity;
#getter for: Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;
invoke-static {v0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->access$1(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)Landroid/webkit/WebView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
return-void
.end method