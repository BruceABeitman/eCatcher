.class  Lcom/tencent/weibo/sdk/android/component/Authorize$3;
.super Landroid/webkit/WebChromeClient;
.source "Authorize.java"
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$3;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method public onProgressChanged(Landroid/webkit/WebView;I)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
const-string/jumbo v0, "newProgress"
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ".."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method