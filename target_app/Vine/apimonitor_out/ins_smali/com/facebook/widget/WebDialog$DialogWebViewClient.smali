.class  Lcom/facebook/widget/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;
.method private constructor <init>(Lcom/facebook/widget/WebDialog;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;)V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#getter for: Lcom/facebook/widget/WebDialog;->isDetached:Z
invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#getter for: Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_15
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#getter for: Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;
invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$600(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#getter for: Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;
invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$700(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#getter for: Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$800(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 7
const-string v0, "FacebookSDK.WebDialog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Webview loading URL: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#getter for: Lcom/facebook/widget/WebDialog;->isDetached:Z
invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#getter for: Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_2c
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
new-instance v1, Lcom/facebook/FacebookDialogException;
invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V
#calls: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
invoke-static {v0, v1}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V
return-void
.end method
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.registers 8
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
new-instance v1, Lcom/facebook/FacebookDialogException;
const/16 v2, -0xb
invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V
#calls: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
invoke-static {v0, v1}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V
invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 15
const/4 v7, 0x1
const-string v8, "FacebookSDK.WebDialog"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "Redirect URL: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
const-string v8, "fbconnect://success"
invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_97
invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v6
const-string v8, "error"
invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_33
const-string v8, "error_type"
invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_33
const-string v8, "error_msg"
invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_41
const-string v8, "error_description"
invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:cond_41
const-string v8, "error_code"
invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v1, -0x1
invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v8
if-nez v8, :cond_52
:try_start_4e
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_51
.catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_51} :catch_6c
move-result v1
:goto_52
:cond_52
invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_6f
invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_6f
const/4 v8, -0x1
if-ne v1, v8, :cond_6f
iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#calls: Lcom/facebook/widget/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V
invoke-static {v8, v6}, Lcom/facebook/widget/WebDialog;->access$200(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V
:goto_66
iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
invoke-virtual {v8}, Lcom/facebook/widget/WebDialog;->dismiss()V
:goto_6b
return v7
:catch_6c
move-exception v4
const/4 v1, -0x1
goto :goto_52
:cond_6f
if-eqz v0, :cond_87
const-string v8, "access_denied"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_81
const-string v8, "OAuthAccessDeniedException"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_87
:cond_81
iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#calls: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
invoke-static {v8}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V
goto :goto_66
:cond_87
new-instance v5, Lcom/facebook/FacebookRequestError;
invoke-direct {v5, v1, v0, v3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
new-instance v9, Lcom/facebook/FacebookServiceException;
invoke-direct {v9, v5, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V
#calls: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
invoke-static {v8, v9}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V
goto :goto_66
:cond_97
const-string v8, "fbconnect://cancel"
invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_aa
iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
#calls: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
invoke-static {v8}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V
iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
invoke-virtual {v8}, Lcom/facebook/widget/WebDialog;->dismiss()V
goto :goto_6b
:cond_aa
const-string v8, "touch"
invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_b4
const/4 v7, 0x0
goto :goto_6b
:cond_b4
iget-object v8, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;
invoke-virtual {v8}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;
move-result-object v8
new-instance v9, Landroid/content/Intent;
const-string v10, "android.intent.action.VIEW"
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v11
invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_6b
.end method