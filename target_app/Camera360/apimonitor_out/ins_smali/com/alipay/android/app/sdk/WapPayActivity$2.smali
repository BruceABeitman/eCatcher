.class  Lcom/alipay/android/app/sdk/WapPayActivity$2;
.super Ljava/lang/Object;
.source "WapPayActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
.method constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$2;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/sdk/WapPayActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$2;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$6(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/webkit/WebView;
move-result-object v0
invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
const-string v1, " - Lcom/alipay/android/app/sdk/WapPayActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method