.class  Lcom/pinguo/camera360/lib/ui/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/lib/ui/WebViewActivity;
.method constructor <init>(Lcom/pinguo/camera360/lib/ui/WebViewActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity$1;->this$0:Lcom/pinguo/camera360/lib/ui/WebViewActivity;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.registers 4
invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 4
invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
const-string/jumbo v0, "webview loadurl"
invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
return v0
.end method