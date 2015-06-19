.class Lcom/tencent/open/yyb/AppbarActivity$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/yyb/AppbarActivity;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/yyb/AppbarActivity;


# direct methods
.method constructor <init>(Lcom/tencent/open/yyb/AppbarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 6

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "-->(AppbarJsBridge)openLoginActivity onCancel"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    #getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
    invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;

    move-result-object v0

    const-string/jumbo v1, "loginCallback"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 10

    const/4 v7, -0x5

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "-->(AppbarJsBridge)openLoginActivity onComplete"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    const-string/jumbo v0, "ret"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    #getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
    invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;

    move-result-object v0

    const-string/jumbo v1, "loginCallback"

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V

    :goto_24
    return-void

    :cond_25
    :try_start_25
    const-string/jumbo v0, "openid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    #calls: Lcom/tencent/open/yyb/AppbarActivity;->getToken()Lcom/tencent/connect/auth/QQToken;
    invoke-static {v2}, Lcom/tencent/open/yyb/AppbarActivity;->access$500(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_3c} :catch_77

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    #getter for: Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/tencent/open/yyb/AppbarActivity;->access$600(Lcom/tencent/open/yyb/AppbarActivity;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v1, v2}, Lcom/tencent/open/yyb/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_51
    const-string/jumbo v3, "logintype"

    const-string/jumbo v4, "SSO"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "openid"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "accesstoken"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_66} :catch_8e

    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    #getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
    invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;

    move-result-object v0

    const-string/jumbo v1, "loginCallback"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catch_77
    move-exception v0

    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    #getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
    invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;

    move-result-object v0

    const-string/jumbo v1, "loginCallback"

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "-->(AppbarJsBridge)openLoginActivity onComplete: get keys failed."

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catch_8e
    move-exception v0

    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    #getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
    invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;

    move-result-object v0

    const-string/jumbo v1, "loginCallback"

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "-->(AppbarJsBridge)openLoginActivity onComplete: put keys callback failed."

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 7

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "-->(AppbarJsBridge)openLoginActivity onError"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$2;->a:Lcom/tencent/open/yyb/AppbarActivity;

    #getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
    invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;

    move-result-object v0

    const-string/jumbo v1, "loginCallback"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method
