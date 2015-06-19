.class public Lcom/android/volley/toolbox/AndroidAuthenticator;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"
.implements Lcom/android/volley/toolbox/Authenticator;
.field private final mAccount:Landroid/accounts/Account;
.field private final mAuthTokenType:Ljava/lang/String;
.field private final mContext:Landroid/content/Context;
.field private final mNotifyAuthFailure:Z
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;
iput-object p3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;
iput-boolean p4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mNotifyAuthFailure:Z
return-void
.end method
.method public getAccount()Landroid/accounts/Account;
.registers 2
iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;
return-object v0
.end method
.method public getAuthToken()Ljava/lang/String;
.registers 12
const/4 v4, 0x0
iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;
invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v0
iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;
iget-object v2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;
iget-boolean v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mNotifyAuthFailure:Z
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
move-result-object v8
:try_start_12
invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
move-result-object v10
check-cast v10, Landroid/os/Bundle;
:try_end_18
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_3d
const/4 v6, 0x0
invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isDone()Z
move-result v1
if-eqz v1, :cond_4e
invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z
move-result v1
if-nez v1, :cond_4e
const-string/jumbo v1, "intent"
invoke-virtual {v10, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_47
const-string/jumbo v1, "intent"
invoke-virtual {v10, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v9
check-cast v9, Landroid/content/Intent;
new-instance v1, Lcom/android/volley/AuthFailureError;
invoke-direct {v1, v9}, Lcom/android/volley/AuthFailureError;-><init>(Landroid/content/Intent;)V
throw v1
:catch_3d
move-exception v7
new-instance v1, Lcom/android/volley/AuthFailureError;
const-string/jumbo v2, "Error while retrieving auth token"
invoke-direct {v1, v2, v7}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_47
const-string/jumbo v1, "authtoken"
invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
:cond_4e
if-nez v6, :cond_68
new-instance v1, Lcom/android/volley/AuthFailureError;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Got null auth token for type: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V
throw v1
:cond_68
return-object v6
.end method
.method public invalidateAuthToken(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;
invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v0
iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;
iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method