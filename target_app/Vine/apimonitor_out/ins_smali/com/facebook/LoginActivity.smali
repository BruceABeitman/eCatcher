.class public Lcom/facebook/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"
.field private static final EXTRA_REQUEST:Ljava/lang/String; = "request"
.field private static final NULL_CALLING_PKG_ERROR_MSG:Ljava/lang/String; = "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."
.field static final RESULT_KEY:Ljava/lang/String; = "com.facebook.LoginActivity:Result"
.field private static final SAVED_AUTH_CLIENT:Ljava/lang/String; = "authorizationClient"
.field private static final SAVED_CALLING_PKG_KEY:Ljava/lang/String; = "callingPackage"
.field private authorizationClient:Lcom/facebook/AuthorizationClient;
.field private callingPackage:Ljava/lang/String;
.field private request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic access$000(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/LoginActivity;->onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V
return-void
.end method
.method private onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V
.registers 7
const/4 v3, 0x0
iput-object v3, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
iget-object v3, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;
sget-object v4, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;
if-ne v3, v4, :cond_23
const/4 v1, 0x0
:goto_a
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v3, "com.facebook.LoginActivity:Result"
invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
invoke-virtual {p0, v1, v2}, Lcom/facebook/LoginActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V
return-void
:cond_23
const/4 v1, -0x1
goto :goto_a
.end method
.method static populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;
.registers 3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "request"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/LoginActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
sget v0, Lcom/facebook/android/R$layout;->com_facebook_login_activity_layout:I
invoke-virtual {p0, v0}, Lcom/facebook/LoginActivity;->setContentView(I)V
if-eqz p1, :cond_36
const-string v0, "callingPackage"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;
const-string v0, "authorizationClient"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/AuthorizationClient;
iput-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
:goto_1c
iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {v0, p0}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
new-instance v1, Lcom/facebook/LoginActivity$1;
invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$1;-><init>(Lcom/facebook/LoginActivity;)V
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V
iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
new-instance v1, Lcom/facebook/LoginActivity$2;
invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$2;-><init>(Lcom/facebook/LoginActivity;)V
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V
const-string v1, " - Lcom/facebook/LoginActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_36
invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getCallingPackage()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;
new-instance v0, Lcom/facebook/AuthorizationClient;
invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V
iput-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "request"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;
iput-object v0, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
goto :goto_1c
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/facebook/LoginActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->cancelCurrentHandler()V
sget v0, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I
invoke-virtual {p0, v0}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const-string v1, " - Lcom/facebook/LoginActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/facebook/LoginActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
iget-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;
if-nez v0, :cond_10
const-string v0, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V
:goto_f
const-string v1, " - Lcom/facebook/LoginActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_10
iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
iget-object v1, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
goto :goto_f
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/LoginActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "callingPackage"
iget-object v1, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "authorizationClient"
iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, " - Lcom/facebook/LoginActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method