.class public Lcom/facebook/AuthorizationClient;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Ljava/io/Serializable;
.field public static CLEAR_COOKIE:Z = false
.field private static final TAG:Ljava/lang/String; = "Facebook-AuthorizationClient"
.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"
.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"
.field private static final serialVersionUID:J = 0x1L
.field transient backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
.field transient checkedInternetPermission:Z
.field transient context:Landroid/content/Context;
.field  currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
.field  handlersToTry:Ljava/util/List;
.field transient onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;
.field  pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.field transient startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/facebook/AuthorizationClient;->CLEAR_COOKIE:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000(Lcom/facebook/AuthorizationClient;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V
return-void
.end method
.method static synthetic access$100(Lcom/facebook/AuthorizationClient;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V
return-void
.end method
.method private completeWithFailure()V
.registers 3
const-string v0, "Login attempt failed."
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V
return-void
.end method
.method private getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/SessionLoginBehavior;->allowsKatanaAuth()Z
move-result v2
if-eqz v2, :cond_2d
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy()Z
move-result v2
if-nez v2, :cond_25
new-instance v2, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v2, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;
invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_25
new-instance v2, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;
invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2d
invoke-virtual {v0}, Lcom/facebook/SessionLoginBehavior;->allowsWebViewAuth()Z
move-result v2
if-eqz v2, :cond_3b
new-instance v2, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_3b
return-object v1
.end method
.method private notifyBackgroundProcessingStart()V
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V
:cond_9
return-void
.end method
.method private notifyBackgroundProcessingStop()V
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V
:cond_9
return-void
.end method
.method private notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V
.registers 3
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;
invoke-interface {v0, p1}, Lcom/facebook/AuthorizationClient$OnCompletedListener;->onCompleted(Lcom/facebook/AuthorizationClient$Result;)V
:cond_9
return-void
.end method
.method  authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
.registers 4
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_f
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Attempted to authorize while a request is pending."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z
move-result v0
if-nez v0, :cond_2
iput-object p1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V
goto :goto_2
.end method
.method  cancelCurrentHandler()V
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V
:cond_9
return-void
.end method
.method  checkPermission(Ljava/lang/String;)I
.registers 3
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method  complete(Lcom/facebook/AuthorizationClient$Result;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V
return-void
.end method
.method  completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V
.registers 3
iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V
:goto_f
return-void
:cond_10
invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V
goto :goto_f
.end method
.method  continueAuth()V
.registers 3
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
if-nez v0, :cond_10
:cond_8
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Attempted to continue authorization without a pending request."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsRestart()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z
:cond_20
return-void
.end method
.method  createGetPermissionsRequest(Ljava/lang/String;)Lcom/facebook/Request;
.registers 8
const/4 v1, 0x0
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "fields"
const-string v2, "id"
invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "access_token"
invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me/permissions"
sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method  createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;
.registers 8
const/4 v1, 0x0
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "fields"
const-string v2, "id"
invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "access_token"
invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me"
sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method  createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;
.registers 13
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
iget-object v9, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
invoke-virtual {v9}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;
move-result-object v3
new-instance v2, Lcom/facebook/AuthorizationClient$3;
invoke-direct {v2, p0, v1}, Lcom/facebook/AuthorizationClient$3;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
iget-object v9, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v9}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPreviousAccessToken()Ljava/lang/String;
move-result-object v8
invoke-virtual {p0, v8}, Lcom/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;
move-result-object v4
invoke-virtual {v4, v2}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V
invoke-virtual {p0, v3}, Lcom/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;
move-result-object v6
invoke-virtual {v6, v2}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V
invoke-virtual {p0, v8}, Lcom/facebook/AuthorizationClient;->createGetPermissionsRequest(Ljava/lang/String;)Lcom/facebook/Request;
move-result-object v5
new-instance v9, Lcom/facebook/AuthorizationClient$4;
invoke-direct {v9, p0, v7}, Lcom/facebook/AuthorizationClient$4;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
invoke-virtual {v5, v9}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V
new-instance v0, Lcom/facebook/RequestBatch;
const/4 v9, 0x3
new-array v9, v9, [Lcom/facebook/Request;
const/4 v10, 0x0
aput-object v4, v9, v10
const/4 v10, 0x1
aput-object v6, v9, v10
const/4 v10, 0x2
aput-object v5, v9, v10
invoke-direct {v0, v9}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V
iget-object v9, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v9}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;
move-result-object v9
invoke-virtual {v0, v9}, Lcom/facebook/RequestBatch;->setBatchApplicationId(Ljava/lang/String;)V
new-instance v9, Lcom/facebook/AuthorizationClient$5;
invoke-direct {v9, p0, v1, p1, v7}, Lcom/facebook/AuthorizationClient$5;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;)V
invoke-virtual {v0, v9}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V
return-object v0
.end method
.method  getBackgroundProcessingListener()Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
return-object v0
.end method
.method  getInProgress()Z
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method  getOnCompletedListener()Lcom/facebook/AuthorizationClient$OnCompletedListener;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;
return-object v0
.end method
.method  getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_11
new-instance v0, Lcom/facebook/AuthorizationClient$2;
invoke-direct {v0, p0}, Lcom/facebook/AuthorizationClient$2;-><init>(Lcom/facebook/AuthorizationClient;)V
goto :goto_6
:cond_11
const/4 v0, 0x0
goto :goto_6
.end method
.method  onActivityResult(IILandroid/content/Intent;)Z
.registers 5
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I
move-result v0
if-ne p1, v0, :cond_12
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient$AuthHandler;->onActivityResult(IILandroid/content/Intent;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method  setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
return-void
.end method
.method  setContext(Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;
new-instance v0, Lcom/facebook/AuthorizationClient$1;
invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$1;-><init>(Lcom/facebook/AuthorizationClient;Landroid/app/Activity;)V
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;
return-void
.end method
.method  setContext(Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;
return-void
.end method
.method  setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;
return-void
.end method
.method  startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
.registers 3
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->getInProgress()Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->continueAuth()V
:goto_9
return-void
:cond_a
invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
goto :goto_9
.end method
.method  tryCurrentHandler()Z
.registers 3
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
move-result v0
return v0
.end method
.method  tryNextHandler()V
.registers 4
:cond_0
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
if-eqz v1, :cond_1e
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_1e
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
const/4 v2, 0x0
invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/AuthorizationClient$AuthHandler;
iput-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z
move-result v0
if-eqz v0, :cond_0
:goto_1d
:cond_1d
return-void
:cond_1e
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v1, :cond_1d
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->completeWithFailure()V
goto :goto_1d
.end method
.method  validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V
.registers 5
iget-object v1, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
if-nez v1, :cond_c
new-instance v1, Lcom/facebook/FacebookException;
const-string v2, "Can\'t validate without a token"
invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v1
:cond_c
invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;
move-result-object v0
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V
invoke-virtual {v0}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;
return-void
.end method