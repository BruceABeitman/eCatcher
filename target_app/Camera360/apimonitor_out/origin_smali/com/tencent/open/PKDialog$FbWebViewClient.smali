.class Lcom/tencent/open/PKDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/PKDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/open/PKDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/PKDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/PKDialog;Lcom/tencent/open/PKDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tencent/open/PKDialog$FbWebViewClient;-><init>(Lcom/tencent/open/PKDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    #getter for: Lcom/tencent/open/PKDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/tencent/open/PKDialog;->access$600(Lcom/tencent/open/PKDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    invoke-static {}, Lcom/tencent/open/PKDialog;->access$300()Ljava/lang/String;

    move-result-object v0

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

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    #getter for: Lcom/tencent/open/PKDialog;->mListener:Lcom/tencent/open/PKDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/open/PKDialog;->access$500(Lcom/tencent/open/PKDialog;)Lcom/tencent/open/PKDialog$OnTimeListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/PKDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/open/PKDialog;->access$300()Ljava/lang/String;

    move-result-object v0

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

    invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v3, "auth://tauth.qq.com/"

    invoke-virtual {v2, v0, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    #getter for: Lcom/tencent/open/PKDialog;->mListener:Lcom/tencent/open/PKDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/open/PKDialog;->access$500(Lcom/tencent/open/PKDialog;)Lcom/tencent/open/PKDialog$OnTimeListener;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/utils/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/open/PKDialog$OnTimeListener;->onComplete(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    move v0, v1

    :goto_4a
    return v0

    :cond_4b
    const-string/jumbo v0, "auth://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    #getter for: Lcom/tencent/open/PKDialog;->mListener:Lcom/tencent/open/PKDialog$OnTimeListener;
    invoke-static {v0}, Lcom/tencent/open/PKDialog;->access$500(Lcom/tencent/open/PKDialog;)Lcom/tencent/open/PKDialog$OnTimeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog$OnTimeListener;->onCancel()V

    iget-object v0, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    move v0, v1

    goto :goto_4a

    :cond_64
    const-string/jumbo v0, "auth://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/tencent/open/PKDialog$FbWebViewClient;->this$0:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    move v0, v1

    goto :goto_4a

    :cond_74
    const/4 v0, 0x0

    goto :goto_4a
.end method
