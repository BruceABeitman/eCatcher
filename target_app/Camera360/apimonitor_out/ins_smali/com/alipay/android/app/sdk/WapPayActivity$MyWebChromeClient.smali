.class  Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WapPayActivity.java"
.field final synthetic this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
.method private constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity;Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;)V
.registers 3
invoke-direct {p0, p1}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
return-void
.end method
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 9
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_confirm_title()I
move-result v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_ensure()I
move-result v2
new-instance v3, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$1;
invoke-direct {v3, p0, p4}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$1;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_cancel()I
move-result v2
new-instance v3, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$2;
invoke-direct {v3, p0, p4}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$2;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
const/4 v1, 0x1
return v1
.end method
.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 9
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_confirm_title()I
move-result v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_ensure()I
move-result v2
new-instance v3, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$3;
invoke-direct {v3, p0, p4}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$3;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_cancel()I
move-result v2
new-instance v3, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$4;
invoke-direct {v3, p0, p4}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$4;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
const/4 v1, 0x1
return v1
.end method
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.registers 10
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_confirm_title()I
move-result v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_ensure()I
move-result v2
new-instance v3, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$5;
invoke-direct {v3, p0, p5}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$5;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getString_cancel()I
move-result v2
new-instance v3, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$6;
invoke-direct {v3, p0, p5}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$6;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
const/4 v1, 0x1
return v1
.end method