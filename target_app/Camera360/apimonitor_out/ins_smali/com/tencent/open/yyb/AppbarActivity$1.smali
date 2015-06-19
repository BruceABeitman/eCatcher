.class  Lcom/tencent/open/yyb/AppbarActivity$1;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Lcom/tencent/tauth/IUiListener;
.field final synthetic a:Lcom/tencent/connect/auth/QQToken;
.field final synthetic b:Lcom/tencent/open/yyb/AppbarActivity;
.method constructor <init>(Lcom/tencent/open/yyb/AppbarActivity;Lcom/tencent/connect/auth/QQToken;)V
.registers 3
iput-object p1, p0, Lcom/tencent/open/yyb/AppbarActivity$1;->b:Lcom/tencent/open/yyb/AppbarActivity;
iput-object p2, p0, Lcom/tencent/open/yyb/AppbarActivity$1;->a:Lcom/tencent/connect/auth/QQToken;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel()V
.registers 3
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "-->(AppbarActivity)shareToQQ onCancel"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$1;->b:Lcom/tencent/open/yyb/AppbarActivity;
#getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseShareFail(I)V
return-void
.end method
.method public onComplete(Ljava/lang/Object;)V
.registers 5
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "-->(AppbarActivity)shareToQQ onComplete"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$1;->b:Lcom/tencent/open/yyb/AppbarActivity;
#getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseShare(I)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$1;->a:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "400"
const-string/jumbo v2, "SDK.APPBAR.HOME.SHARE.QQ"
invoke-static {v0, v1, v2}, Lcom/tencent/open/yyb/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onError(Lcom/tencent/tauth/UiError;)V
.registers 4
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "-->(AppbarActivity)shareToQQ onError"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$1;->b:Lcom/tencent/open/yyb/AppbarActivity;
#getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseShareFail(I)V
return-void
.end method