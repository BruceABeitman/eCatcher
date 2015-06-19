.class public Lcom/facebook/katana/platform/FacebookAuthenticationService;
.super Landroid/app/Service;
.source "FacebookAuthenticationService.java"
.field public static final ACCOUNT_MANAGER_TYPE:Ljava/lang/String; = "com.facebook.auth.login"
.field private static final TAG:Ljava/lang/String; = "FacebookAuthenticationService"
.field private mAuthenticator:Lcom/facebook/katana/platform/FacebookAuthenticationService$FacebookAccountAuthenticator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Service;-><init>()V
return-void
.end method
.method public static addAccountComplete(Landroid/content/Intent;Ljava/lang/String;)V
.registers 6
const-string v2, "accountAuthenticatorResponse"
invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;
if-nez v0, :cond_12
const-string v2, "FacebookAuthenticationService"
const-string v3, "No callback IBinder"
invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_11
return-void
:cond_12
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "authAccount"
invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "accountType"
const-string v3, "com.facebook.auth.login"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
goto :goto_11
.end method
.method public static addAccountError(Landroid/content/Intent;ILjava/lang/String;)V
.registers 6
const-string v1, "accountAuthenticatorResponse"
invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;
if-nez v0, :cond_12
const-string v1, "FacebookAuthenticationService"
const-string v2, "No callback IBinder"
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_11
return-void
:cond_12
invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V
goto :goto_11
.end method
.method public static copyCallback(Landroid/content/Intent;Landroid/content/Intent;)V
.registers 5
const-string v2, "accountAuthenticatorResponse"
const-string v1, "accountAuthenticatorResponse"
invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
const-string v1, "accountAuthenticatorResponse"
invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
return-void
.end method
.method public static doesShowUngroupedContacts(Landroid/content/Context;Ljava/lang/String;)Z
.registers 12
const/4 v4, 0x0
const/4 v9, 0x1
const/4 v8, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;
new-array v2, v9, [Ljava/lang/String;
const-string v3, "ungrouped_visible"
aput-object v3, v2, v8
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "account_type=\'com.facebook.auth.login\' AND account_name=\'"
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "\'"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
const/4 v7, 0x0
if-eqz v6, :cond_39
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_36
invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I
move-result v7
:cond_36
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_39
if-ne v7, v9, :cond_3d
move v0, v9
:goto_3c
return v0
:cond_3d
move v0, v8
goto :goto_3c
.end method
.method public static getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
.registers 8
invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v2
const-string v5, "com.facebook.auth.login"
invoke-virtual {v2, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
move-result-object v1
const/4 v0, 0x0
array-length v4, v1
const/4 v3, 0x0
:goto_d
if-lt v3, v4, :cond_10
:goto_f
return-object v0
:cond_10
aget-object v5, v1, v3
iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;
invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1d
aget-object v0, v1, v3
goto :goto_f
:cond_1d
add-int/lit8 v3, v3, 0x1
goto :goto_d
.end method
.method public static getAccountsCount(Landroid/content/Context;)I
.registers 4
invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v1
const-string v2, "com.facebook.auth.login"
invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
move-result-object v0
array-length v2, v0
return v2
.end method
.method public static isSyncEnabled(Landroid/content/Context;Ljava/lang/String;)Z
.registers 4
invoke-static {p0, p1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return v1
:cond_8
const-string v1, "com.android.contacts"
invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
move-result v1
goto :goto_7
.end method
.method public static removeSessionInfo(Landroid/content/Context;Ljava/lang/String;)V
.registers 9
const/4 v6, 0x0
invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v1
const-string v5, "com.facebook.auth.login"
invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
move-result-object v0
invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->getCurrentAccount(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
array-length v4, v0
const/4 v3, 0x0
:goto_11
if-lt v3, v4, :cond_14
return-void
:cond_14
aget-object v5, v0, v3
iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;
invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_30
aget-object v5, v0, v3
iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;
invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2b
invoke-static {p0, v6}, Lcom/facebook/katana/provider/UserValuesManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;)V
:cond_2b
aget-object v5, v0, v3
invoke-virtual {v1, v5, v6, v6}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
:cond_30
add-int/lit8 v3, v3, 0x1
goto :goto_11
.end method
.method public static storeSessionInfo(Landroid/content/Context;Ljava/lang/String;ZZ)V
.registers 11
const/4 v5, 0x0
const-string v6, "com.facebook.auth.login"
invoke-static {p0, p1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
move-result-object v0
if-nez v0, :cond_2f
new-instance v0, Landroid/accounts/Account;
const-string v4, "com.facebook.auth.login"
invoke-direct {v0, p1, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v1
invoke-virtual {v1, v0, v5, v5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
move-result v3
if-nez v3, :cond_2f
const-string v4, "FacebookAuthenticationService"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Unable to create account for "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_2e
return-void
:cond_2f
invoke-static {p0, p1}, Lcom/facebook/katana/provider/UserValuesManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;)V
const-string v4, "com.android.contacts"
invoke-static {v0, v4, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string v4, "account_name"
invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "account_type"
const-string v5, "com.facebook.auth.login"
invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "ungrouped_visible"
if-eqz p3, :cond_5e
const/4 v5, 0x1
:goto_4d
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v4
sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
goto :goto_2e
:cond_5e
const/4 v5, 0x0
goto :goto_4d
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 5
const-string v0, "android.accounts.AccountAuthenticator"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/facebook/katana/platform/FacebookAuthenticationService;->mAuthenticator:Lcom/facebook/katana/platform/FacebookAuthenticationService$FacebookAccountAuthenticator;
invoke-virtual {v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService$FacebookAccountAuthenticator;->getIBinder()Landroid/os/IBinder;
move-result-object v0
:goto_12
return-object v0
:cond_13
const-string v0, "FacebookAuthenticationService"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Bound with unknown intent: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
goto :goto_12
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/facebook/katana/platform/FacebookAuthenticationService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/facebook/katana/platform/FacebookAuthenticationService$FacebookAccountAuthenticator;
invoke-direct {v0, p0}, Lcom/facebook/katana/platform/FacebookAuthenticationService$FacebookAccountAuthenticator;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/katana/platform/FacebookAuthenticationService;->mAuthenticator:Lcom/facebook/katana/platform/FacebookAuthenticationService$FacebookAccountAuthenticator;
const-string v1, " - Lcom/facebook/katana/platform/FacebookAuthenticationService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method