.class public Lcom/facebook/LoginActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Lcom/facebook/AuthorizationClient;
.field private d:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/LoginActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/LoginActivity;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;
.registers 3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "request"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return-object v0
.end method
.method static synthetic a(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V
.registers 5
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/LoginActivity;->d:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;
sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->b:Lcom/facebook/AuthorizationClient$Result$Code;
if-ne v0, v1, :cond_23
const/4 v0, 0x0
:goto_a
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "com.facebook.LoginActivity:Result"
invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
invoke-virtual {p0, v0, v2}, Lcom/facebook/LoginActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V
return-void
:cond_23
const/4 v0, -0x1
goto :goto_a
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient;->a(IILandroid/content/Intent;)Z
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
sget v0, Lcom/facebook/a/f;->a:I
invoke-virtual {p0, v0}, Lcom/facebook/LoginActivity;->setContentView(I)V
if-eqz p1, :cond_3a
const-string v0, "callingPackage"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/LoginActivity;->b:Ljava/lang/String;
const-string v0, "authorizationClient"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/AuthorizationClient;
iput-object v0, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
:goto_1c
iget-object v0, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
iput-object p0, v0, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;
new-instance v1, Lcom/facebook/AuthorizationClient$1;
invoke-direct {v1, v0, p0}, Lcom/facebook/AuthorizationClient$1;-><init>(Lcom/facebook/AuthorizationClient;Landroid/app/Activity;)V
iput-object v1, v0, Lcom/facebook/AuthorizationClient;->b:Lcom/facebook/h;
iget-object v0, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
new-instance v1, Lcom/facebook/LoginActivity$1;
invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$1;-><init>(Lcom/facebook/LoginActivity;)V
iput-object v1, v0, Lcom/facebook/AuthorizationClient;->c:Lcom/facebook/g;
iget-object v0, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
new-instance v1, Lcom/facebook/LoginActivity$2;
invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$2;-><init>(Lcom/facebook/LoginActivity;)V
iput-object v1, v0, Lcom/facebook/AuthorizationClient;->d:Lcom/facebook/f;
const-string v1, " - Lcom/facebook/LoginActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3a
invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getCallingPackage()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/LoginActivity;->b:Ljava/lang/String;
new-instance v0, Lcom/facebook/AuthorizationClient;
invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V
iput-object v0, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "request"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;
iput-object v0, p0, Lcom/facebook/LoginActivity;->d:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
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
iget-object v0, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
iget-object v1, v0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
if-eqz v1, :cond_e
iget-object v0, v0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->d()V
:cond_e
sget v0, Lcom/facebook/a/e;->c:I
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
iget-object v0, p0, Lcom/facebook/LoginActivity;->b:Ljava/lang/String;
if-nez v0, :cond_12
sget-object v0, Lcom/facebook/LoginActivity;->a:Ljava/lang/String;
const-string v1, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V
:goto_11
const-string v1, " - Lcom/facebook/LoginActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
iget-object v0, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
iget-object v1, p0, Lcom/facebook/LoginActivity;->d:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
goto :goto_11
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
iget-object v1, p0, Lcom/facebook/LoginActivity;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "authorizationClient"
iget-object v1, p0, Lcom/facebook/LoginActivity;->c:Lcom/facebook/AuthorizationClient;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, " - Lcom/facebook/LoginActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method