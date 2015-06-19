.class Lcom/tencent/weibo/sdk/android/component/Authorize$4;
.super Landroid/webkit/WebViewClient;
.source "Authorize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/Authorize;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$4;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "backurl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "access_token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$4;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    #getter for: Lcom/tencent/weibo/sdk/android/component/Authorize;->isShow:Z
    invoke-static {v0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->access$0(Lcom/tencent/weibo/sdk/android/component/Authorize;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$4;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    invoke-virtual {v0, p2}, Lcom/tencent/weibo/sdk/android/component/Authorize;->jumpResultParser(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$4;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    #getter for: Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->access$1(Lcom/tencent/weibo/sdk/android/component/Authorize;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$4;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    #getter for: Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->access$1(Lcom/tencent/weibo/sdk/android/component/Authorize;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$4;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    #getter for: Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->access$1(Lcom/tencent/weibo/sdk/android/component/Authorize;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_3a
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "access_token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$4;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    #getter for: Lcom/tencent/weibo/sdk/android/component/Authorize;->isShow:Z
    invoke-static {v0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->access$0(Lcom/tencent/weibo/sdk/android/component/Authorize;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$4;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    invoke-virtual {v0, p2}, Lcom/tencent/weibo/sdk/android/component/Authorize;->jumpResultParser(Ljava/lang/String;)V

    :cond_17
    const/4 v0, 0x0

    return v0
.end method
