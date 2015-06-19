.class  Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;
.super Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.source "AuthorizationClient.java"
.field private static final serialVersionUID:J = 0x1L
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
return-void
.end method
.method private handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
.registers 6
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string v3, "com.facebook.platform.status.ERROR_TYPE"
invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_18
sget-object v2, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;
invoke-static {v1, v2}, Lcom/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
move-result-object v2
invoke-static {v2}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v2
:cond_17
:goto_17
return-object v2
:cond_18
const-string v3, "ServiceDisabled"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_17
const-string v3, "UserCanceled"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2d
invoke-static {v2}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v2
goto :goto_17
:cond_2d
const-string v2, "error_description"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v2
goto :goto_17
.end method
.method  onActivityResult(IILandroid/content/Intent;)Z
.registers 7
if-nez p3, :cond_11
const-string v1, "Operation canceled"
invoke-static {v1}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
:goto_8
if-eqz v0, :cond_36
iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V
:goto_f
const/4 v1, 0x1
return v1
:cond_11
invoke-static {p3}, Lcom/facebook/NativeProtocol;->isServiceDisabledResult20121101(Landroid/content/Intent;)Z
move-result v1
if-eqz v1, :cond_19
const/4 v0, 0x0
goto :goto_8
:cond_19
if-nez p2, :cond_26
const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
goto :goto_8
:cond_26
const/4 v1, -0x1
if-eq p2, v1, :cond_31
const-string v1, "Unexpected resultCode from authorization."
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
goto :goto_8
:cond_31
invoke-direct {p0, p3}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
goto :goto_8
:cond_36
iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V
goto :goto_f
.end method
.method  tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
.registers 7
iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
iget-object v1, v1, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/util/ArrayList;
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;
move-result-object v4
invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/SessionDefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v2, v3, v4}, Lcom/facebook/NativeProtocol;->createLoginDialog20121101Intent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->tryIntent(Landroid/content/Intent;I)Z
move-result v1
return v1
.end method