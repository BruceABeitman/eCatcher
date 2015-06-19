.class Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/connect/auth/AuthDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/connect/auth/AuthDialog;Lcom/tencent/connect/auth/AuthDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;-><init>(Lcom/tencent/connect/auth/AuthDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->d(Lcom/tencent/connect/auth/AuthDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    const-string/jumbo v0, "AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/utils/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3b
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_36
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "AuthDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Redirect URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/utils/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "auth://browser"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-static {p2}, Lcom/tencent/utils/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v3}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;Z)Z

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->b(Lcom/tencent/connect/auth/AuthDialog;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_3c
    :goto_3c
    move v0, v1

    :goto_3d
    return v0

    :cond_3e
    const-string/jumbo v2, "fail_cb"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    const-string/jumbo v3, "fail_cb"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/tencent/connect/auth/AuthDialog;->callJs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_57
    const-string/jumbo v2, "fall_to_wv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_94

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->c(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_90

    const-string/jumbo v0, "&"

    :goto_75
    invoke-static {v2, v0}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    const-string/jumbo v2, "browser_error=1"

    invoke-static {v0, v2}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->d(Lcom/tencent/connect/auth/AuthDialog;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->c(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3c

    :cond_90
    const-string/jumbo v0, "?"

    goto :goto_75

    :cond_94
    const-string/jumbo v2, "redir"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->d(Lcom/tencent/connect/auth/AuthDialog;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3c

    :cond_a7
    invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;

    move-result-object v2

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v3, "auth://tauth.qq.com/"

    invoke-virtual {v2, v0, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/utils/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;->onComplete(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    move v0, v1

    goto/16 :goto_3d

    :cond_d7
    const-string/jumbo v0, "auth://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;->onCancel()V

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    move v0, v1

    goto/16 :goto_3d

    :cond_f1
    const-string/jumbo v0, "auth://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    move v0, v1

    goto/16 :goto_3d

    :cond_102
    const-string/jumbo v0, "download://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    const-string/jumbo v0, "download://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_148

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_148

    invoke-static {}, Lcom/tencent/connect/auth/AuthDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_148
    move v0, v1

    goto/16 :goto_3d

    :cond_14b
    const/4 v0, 0x0

    goto/16 :goto_3d
.end method
