.class  Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;
.super Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.source "AuthorizationClient.java"
.field private static final serialVersionUID:J = 0x1L
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
return-void
.end method
.method private handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
.registers 7
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string v4, "error"
invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_13
const-string v4, "error_type"
invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_13
if-nez v0, :cond_28
iget-object v3, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
iget-object v3, v3, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v3}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;
move-result-object v3
sget-object v4, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;
invoke-static {v3, v1, v4}, Lcom/facebook/AccessToken;->createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
move-result-object v2
invoke-static {v2}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v3
:goto_27
:cond_27
return-object v3
:cond_28
sget-object v4, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;
invoke-interface {v4, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_27
sget-object v4, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;
invoke-interface {v4, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3d
invoke-static {v3}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v3
goto :goto_27
:cond_3d
const-string v3, "error_description"
invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v3
goto :goto_27
.end method
.method  onActivityResult(IILandroid/content/Intent;)Z
.registers 7
if-nez p3, :cond_11
const-string v1, "Operation canceled"
invoke-static {v1}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
:goto_8
if-eqz v0, :cond_2e
iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V
:goto_f
const/4 v1, 0x1
return v1
:cond_11
if-nez p2, :cond_1e
const-string v1, "error"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
goto :goto_8
:cond_1e
const/4 v1, -0x1
if-eq p2, v1, :cond_29
const-string v1, "Unexpected resultCode from authorization."
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
goto :goto_8
:cond_29
invoke-direct {p0, p3}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
goto :goto_8
:cond_2e
iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V
goto :goto_f
.end method
.method  tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
.registers 6
iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
iget-object v1, v1, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/facebook/NativeProtocol;->createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->tryIntent(Landroid/content/Intent;I)Z
move-result v1
return v1
.end method