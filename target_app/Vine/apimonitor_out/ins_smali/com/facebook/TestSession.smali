.class public Lcom/facebook/TestSession;
.super Lcom/facebook/Session;
.source "TestSession.java"
.field static final synthetic $assertionsDisabled:Z = false
.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.TestSession"
.field private static appTestAccounts:Ljava/util/Map; = null
.field private static final serialVersionUID:J = 0x1L
.field private static testApplicationId:Ljava/lang/String;
.field private static testApplicationSecret:Ljava/lang/String;
.field private final mode:Lcom/facebook/TestSession$Mode;
.field private final requestedPermissions:Ljava/util/List;
.field private final sessionUniqueUserTag:Ljava/lang/String;
.field private testAccountId:Ljava/lang/String;
.field private wasAskedToExtendAccessToken:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/TestSession;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/TestSession;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/facebook/TestSession$Mode;)V
.registers 8
sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
invoke-direct {p0, p1, v0, p3}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V
const-string v0, "permissions"
invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
const-string v1, "testApplicationId"
invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
const-string v1, "testApplicationSecret"
invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;
iput-object p2, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;
return-void
.end method
.method public static createSessionWithPrivateUser(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/TestSession;
.registers 4
sget-object v0, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;
const/4 v1, 0x0
invoke-static {p0, p1, v0, v1}, Lcom/facebook/TestSession;->createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;
move-result-object v0
return-object v0
.end method
.method public static createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/TestSession;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/facebook/TestSession;->createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/facebook/TestSession;
move-result-object v0
return-object v0
.end method
.method public static createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/facebook/TestSession;
.registers 4
sget-object v0, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;
invoke-static {p0, p1, v0, p2}, Lcom/facebook/TestSession;->createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;
move-result-object v0
return-object v0
.end method
.method private createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;
.registers 14
const/4 v12, 0x1
const/4 v11, 0x0
const/4 v6, 0x0
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v7, "installed"
const-string v8, "true"
invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v7, "permissions"
invoke-direct {p0}, Lcom/facebook/TestSession;->getPermissionsString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v7, "access_token"
invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v7, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;
sget-object v8, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;
if-ne v7, v8, :cond_3a
const-string v7, "name"
const-string v8, "Shared %s Testuser"
new-array v9, v12, [Ljava/lang/Object;
invoke-direct {p0}, Lcom/facebook/TestSession;->getSharedTestAccountIdentifier()Ljava/lang/String;
move-result-object v10
aput-object v10, v9, v11
invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_3a
const-string v7, "%s/accounts/test-users"
new-array v8, v12, [Ljava/lang/Object;
sget-object v9, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
aput-object v9, v8, v11
invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
new-instance v0, Lcom/facebook/Request;
sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;
invoke-direct {v0, v6, v2, v3, v7}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;
move-result-object v1
const-class v7, Lcom/facebook/TestSession$TestAccount;
invoke-virtual {v4, v7}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v5
check-cast v5, Lcom/facebook/TestSession$TestAccount;
if-eqz v1, :cond_68
invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;
move-result-object v7
invoke-virtual {p0, v6, v7}, Lcom/facebook/TestSession;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
move-object v5, v6
:goto_67
return-object v5
:cond_68
sget-boolean v6, Lcom/facebook/TestSession;->$assertionsDisabled:Z
if-nez v6, :cond_74
if-nez v5, :cond_74
new-instance v6, Ljava/lang/AssertionError;
invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V
throw v6
:cond_74
iget-object v6, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;
sget-object v7, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;
if-ne v6, v7, :cond_86
const-string v6, "name"
invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-interface {v5, v6}, Lcom/facebook/TestSession$TestAccount;->setName(Ljava/lang/String;)V
invoke-static {v5}, Lcom/facebook/TestSession;->storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V
:cond_86
invoke-direct {p0, v5}, Lcom/facebook/TestSession;->finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V
goto :goto_67
.end method
.method private static declared-synchronized createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;
.registers 11
const-class v6, Lcom/facebook/TestSession;
monitor-enter v6
:try_start_3
sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e
:cond_13
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Must provide app ID and secret"
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_1b
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_1b
move-exception v0
monitor-exit v6
throw v0
:try_start_1e
:cond_1e
invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z
move-result v0
if-eqz v0, :cond_35
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "email"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "publish_actions"
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object p1
:cond_35
new-instance v0, Lcom/facebook/TestSession;
new-instance v3, Lcom/facebook/TestSession$TestTokenCachingStrategy;
const/4 v1, 0x0
invoke-direct {v3, v1}, Lcom/facebook/TestSession$TestTokenCachingStrategy;-><init>(Lcom/facebook/TestSession$1;)V
move-object v1, p0
move-object v2, p1
move-object v4, p3
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/TestSession;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/facebook/TestSession$Mode;)V
:try_end_44
.catchall {:try_start_1e .. :try_end_44} :catchall_1b
monitor-exit v6
return-object v0
.end method
.method private deleteTestAccount(Ljava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v9, 0x1
const/4 v8, 0x0
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string v5, "access_token"
invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/facebook/Request;
const/4 v5, 0x0
sget-object v6, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;
invoke-direct {v3, v5, p1, v2, v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
invoke-virtual {v3}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;
move-result-object v0
invoke-virtual {v4}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;
move-result-object v1
if-eqz v0, :cond_3d
const-string v5, "FacebookSDK.TestSession"
const-string v6, "Could not delete test account %s: %s"
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
aput-object p1, v7, v8
invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;
move-result-object v8
aput-object v8, v7, v9
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_3c
:cond_3c
return-void
:cond_3d
const-string v5, "FACEBOOK_NON_JSON_RESULT"
invoke-interface {v1, v5}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v5
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
if-ne v5, v6, :cond_3c
const-string v5, "FacebookSDK.TestSession"
const-string v6, "Could not delete test account %s: unknown reason"
new-array v7, v9, [Ljava/lang/Object;
aput-object p1, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_3c
.end method
.method private findOrCreateSharedTestAccount()V
.registers 3
invoke-direct {p0}, Lcom/facebook/TestSession;->getSharedTestAccountIdentifier()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/TestSession;->findTestAccountMatchingIdentifier(Ljava/lang/String;)Lcom/facebook/TestSession$TestAccount;
move-result-object v0
if-eqz v0, :cond_e
invoke-direct {p0, v0}, Lcom/facebook/TestSession;->finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V
:goto_d
return-void
:cond_e
invoke-direct {p0}, Lcom/facebook/TestSession;->createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;
goto :goto_d
.end method
.method private static declared-synchronized findTestAccountMatchingIdentifier(Ljava/lang/String;)Lcom/facebook/TestSession$TestAccount;
.registers 5
const-class v3, Lcom/facebook/TestSession;
monitor-enter v3
:try_start_3
invoke-static {}, Lcom/facebook/TestSession;->retrieveTestAccountsForAppIfNeeded()V
sget-object v2, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v2
invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_10
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_28
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/TestSession$TestAccount;
invoke-interface {v1}, Lcom/facebook/TestSession$TestAccount;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_2a
move-result v2
if-eqz v2, :cond_10
:goto_26
monitor-exit v3
return-object v1
:cond_28
const/4 v1, 0x0
goto :goto_26
:catchall_2a
move-exception v2
monitor-exit v3
throw v2
.end method
.method private finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V
.registers 6
invoke-interface {p1}, Lcom/facebook/TestSession$TestAccount;->getId()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;
invoke-interface {p1}, Lcom/facebook/TestSession$TestAccount;->getAccessToken()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;
sget-object v3, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;
invoke-static {v1, v2, v3}, Lcom/facebook/AccessToken;->createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/facebook/TestSession;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
return-void
.end method
.method static final getAppAccessToken()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getPermissionsString()Ljava/lang/String;
.registers 3
const-string v0, ","
iget-object v1, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;
invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getSharedTestAccountIdentifier()Ljava/lang/String;
.registers 11
const-wide v8, 0xffffffffL
invoke-direct {p0}, Lcom/facebook/TestSession;->getPermissionsString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->hashCode()I
move-result v6
int-to-long v6, v6
and-long v2, v6, v8
iget-object v6, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;
if-eqz v6, :cond_24
iget-object v6, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->hashCode()I
move-result v6
int-to-long v6, v6
and-long v4, v6, v8
:goto_1d
xor-long v0, v2, v4
invoke-direct {p0, v0, v1}, Lcom/facebook/TestSession;->validNameStringFromInteger(J)Ljava/lang/String;
move-result-object v6
return-object v6
:cond_24
const-wide/16 v4, 0x0
goto :goto_1d
.end method
.method public static declared-synchronized getTestApplicationId()Ljava/lang/String;
.registers 2
const-class v0, Lcom/facebook/TestSession;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-object v1
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized getTestApplicationSecret()Ljava/lang/String;
.registers 2
const-class v0, Lcom/facebook/TestSession;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-object v1
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method private static declared-synchronized populateTestAccounts(Ljava/util/Collection;Ljava/util/Collection;)V
.registers 8
const-class v4, Lcom/facebook/TestSession;
monitor-enter v4
:try_start_3
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_7
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/TestSession$TestAccount;
invoke-static {v1}, Lcom/facebook/TestSession;->storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_17
goto :goto_7
:catchall_17
move-exception v3
monitor-exit v4
throw v3
:try_start_1a
:cond_1a
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_1e
:cond_1e
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_40
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/TestSession$UserAccount;
sget-object v3, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;
invoke-interface {v2}, Lcom/facebook/TestSession$UserAccount;->getUid()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/TestSession$TestAccount;
if-eqz v1, :cond_1e
invoke-interface {v2}, Lcom/facebook/TestSession$UserAccount;->getName()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v3}, Lcom/facebook/TestSession$TestAccount;->setName(Ljava/lang/String;)V
:try_end_3f
.catchall {:try_start_1a .. :try_end_3f} :catchall_17
goto :goto_1e
:cond_40
monitor-exit v4
return-void
.end method
.method private static declared-synchronized retrieveTestAccountsForAppIfNeeded()V
.registers 16
const-class v12, Lcom/facebook/TestSession;
monitor-enter v12
:try_start_3
sget-object v11, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_62
if-eqz v11, :cond_9
:goto_7
monitor-exit v12
return-void
:try_start_9
:cond_9
new-instance v11, Ljava/util/HashMap;
invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
sput-object v11, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;
const-string v11, "SELECT id,access_token FROM test_account WHERE app_id = %s"
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
sget-object v15, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
aput-object v15, v13, v14
invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
const-string v10, "SELECT uid,name FROM user WHERE uid IN (SELECT id FROM #test_accounts)"
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
:try_end_25
.catchall {:try_start_9 .. :try_end_25} :catchall_62
:try_start_25
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string v11, "test_accounts"
invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v11, "users"
invoke-virtual {v3, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_34
.catchall {:try_start_25 .. :try_end_34} :catchall_62
.catch Lorg/json/JSONException; {:try_start_25 .. :try_end_34} :catch_65
:try_start_34
const-string v11, "q"
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v11, "access_token"
invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;
move-result-object v13
invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lcom/facebook/Request;
const/4 v11, 0x0
const-string v13, "fql"
const/4 v14, 0x0
invoke-direct {v5, v11, v13, v4, v14}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
invoke-virtual {v5}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;
move-result-object v6
invoke-virtual {v6}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;
move-result-object v11
if-eqz v11, :cond_6c
invoke-virtual {v6}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;
move-result-object v11
invoke-virtual {v11}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;
move-result-object v11
throw v11
:try_end_62
.catchall {:try_start_34 .. :try_end_62} :catchall_62
:catchall_62
move-exception v11
monitor-exit v12
throw v11
:catch_65
move-exception v0
:try_start_66
new-instance v11, Lcom/facebook/FacebookException;
invoke-direct {v11, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
throw v11
:cond_6c
const-class v11, Lcom/facebook/TestSession$FqlResponse;
invoke-virtual {v6, v11}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v1
check-cast v1, Lcom/facebook/TestSession$FqlResponse;
invoke-interface {v1}, Lcom/facebook/TestSession$FqlResponse;->getData()Lcom/facebook/model/GraphObjectList;
move-result-object v2
if-eqz v2, :cond_81
invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I
move-result v11
const/4 v13, 0x2
if-eq v11, v13, :cond_89
:cond_81
new-instance v11, Lcom/facebook/FacebookException;
const-string v13, "Unexpected number of results from FQL query"
invoke-direct {v11, v13}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v11
:cond_89
const/4 v11, 0x0
invoke-interface {v2, v11}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/facebook/TestSession$FqlResult;
invoke-interface {v11}, Lcom/facebook/TestSession$FqlResult;->getFqlResultSet()Lcom/facebook/model/GraphObjectList;
move-result-object v11
const-class v13, Lcom/facebook/TestSession$TestAccount;
invoke-interface {v11, v13}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
move-result-object v8
const/4 v11, 0x1
invoke-interface {v2, v11}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/facebook/TestSession$FqlResult;
invoke-interface {v11}, Lcom/facebook/TestSession$FqlResult;->getFqlResultSet()Lcom/facebook/model/GraphObjectList;
move-result-object v11
const-class v13, Lcom/facebook/TestSession$UserAccount;
invoke-interface {v11, v13}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
move-result-object v9
invoke-static {v8, v9}, Lcom/facebook/TestSession;->populateTestAccounts(Ljava/util/Collection;Ljava/util/Collection;)V
:try_end_ae
.catchall {:try_start_66 .. :try_end_ae} :catchall_62
goto/16 :goto_7
.end method
.method public static declared-synchronized setTestApplicationId(Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/facebook/TestSession;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
if-eqz v0, :cond_1a
sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
new-instance v0, Lcom/facebook/FacebookException;
const-string v2, "Can\'t have more than one test application ID"
invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_17
:catchall_17
move-exception v0
monitor-exit v1
throw v0
:try_start_1a
:cond_1a
sput-object p0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_17
monitor-exit v1
return-void
.end method
.method public static declared-synchronized setTestApplicationSecret(Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/facebook/TestSession;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
if-eqz v0, :cond_1a
sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
new-instance v0, Lcom/facebook/FacebookException;
const-string v2, "Can\'t have more than one test application secret"
invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_17
:catchall_17
move-exception v0
monitor-exit v1
throw v0
:try_start_1a
:cond_1a
sput-object p0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_17
monitor-exit v1
return-void
.end method
.method private static declared-synchronized storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V
.registers 4
const-class v1, Lcom/facebook/TestSession;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;
invoke-interface {p0}, Lcom/facebook/TestSession$TestAccount;->getId()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_e
monitor-exit v1
return-void
:catchall_e
move-exception v0
monitor-exit v1
throw v0
.end method
.method private validNameStringFromInteger(J)Ljava/lang/String;
.registers 11
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v6
new-instance v5, Ljava/lang/StringBuilder;
const-string v7, "Perm"
invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v4, v0
const/4 v2, 0x0
:goto_12
if-ge v2, v4, :cond_27
aget-char v1, v0, v2
if-ne v1, v3, :cond_1b
add-int/lit8 v7, v1, 0xa
int-to-char v1, v7
:cond_1b
add-int/lit8 v7, v1, 0x61
add-int/lit8 v7, v7, -0x30
int-to-char v7, v7
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v3, v1
add-int/lit8 v2, v2, 0x1
goto :goto_12
:cond_27
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
return-object v7
.end method
.method  authorize(Lcom/facebook/Session$AuthorizationRequest;)V
.registers 4
iget-object v0, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;
sget-object v1, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;
if-ne v0, v1, :cond_a
invoke-direct {p0}, Lcom/facebook/TestSession;->createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;
:goto_9
return-void
:cond_a
invoke-direct {p0}, Lcom/facebook/TestSession;->findOrCreateSharedTestAccount()V
goto :goto_9
.end method
.method  extendAccessToken()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z
invoke-super {p0}, Lcom/facebook/Session;->extendAccessToken()V
return-void
.end method
.method  fakeTokenRefreshAttempt()V
.registers 2
new-instance v0, Lcom/facebook/Session$TokenRefreshRequest;
invoke-direct {v0, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V
invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V
return-void
.end method
.method  forceExtendAccessToken(Z)V
.registers 11
const-wide/16 v7, 0x0
invoke-virtual {p0}, Lcom/facebook/TestSession;->getTokenInfo()Lcom/facebook/AccessToken;
move-result-object v6
new-instance v0, Lcom/facebook/AccessToken;
invoke-virtual {v6}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
invoke-virtual {v6}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;
move-result-object v3
sget-object v4, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;
new-instance v5, Ljava/util/Date;
invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setTokenInfo(Lcom/facebook/AccessToken;)V
new-instance v0, Ljava/util/Date;
invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V
invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V
return-void
.end method
.method public final getTestUserId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;
return-object v0
.end method
.method  getWasAskedToExtendAccessToken()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z
return v0
.end method
.method  postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 7
iget-object v0, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;
invoke-super {p0, p1, p2, p3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z
move-result v1
if-eqz v1, :cond_1a
if-eqz v0, :cond_1a
iget-object v1, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;
sget-object v2, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;
if-ne v1, v2, :cond_1a
invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/facebook/TestSession;->deleteTestAccount(Ljava/lang/String;Ljava/lang/String;)V
:cond_1a
return-void
.end method
.method  shouldExtendAccessToken()Z
.registers 3
invoke-super {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z
move-result v0
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
invoke-super {p0}, Lcom/facebook/Session;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "{TestSession"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " testUserId:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "}"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method