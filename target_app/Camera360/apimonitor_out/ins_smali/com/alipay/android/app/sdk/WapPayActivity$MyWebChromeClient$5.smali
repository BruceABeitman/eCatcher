.class  Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$5;
.super Ljava/lang/Object;
.source "WapPayActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;
.field private final synthetic val$result:Landroid/webkit/JsPromptResult;
.method constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V
.registers 3
iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$5;->this$1:Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;
iput-object p2, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$5;->val$result:Landroid/webkit/JsPromptResult;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$5;->val$result:Landroid/webkit/JsPromptResult;
invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->confirm()V
const-string v1, " - Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method