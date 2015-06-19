.class public Lcom/facebook/Session;
.super Ljava/lang/Object;
.source "Session.java"
.implements Ljava/io/Serializable;
.field public static final ACTION_ACTIVE_SESSION_CLOSED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"
.field public static final ACTION_ACTIVE_SESSION_OPENED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"
.field public static final ACTION_ACTIVE_SESSION_SET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"
.field public static final ACTION_ACTIVE_SESSION_UNSET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"
.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"
.field private static final AUTH_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"
.field public static final DEFAULT_AUTHORIZE_ACTIVITY_CODE:I = 0xface
.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"
.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set; = null
.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"
.field private static final SESSION_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"
.field private static final STATIC_LOCK:Ljava/lang/Object; = null
.field public static final TAG:Ljava/lang/String; = null
.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10
.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180
.field public static final WEB_VIEW_ERROR_CODE_KEY:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"
.field public static final WEB_VIEW_FAILING_URL_KEY:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"
.field private static activeSession:Lcom/facebook/Session; = null
.field private static final serialVersionUID:J = 0x1L
.field private static volatile staticContext:Landroid/content/Context;
.field private applicationId:Ljava/lang/String;
.field private volatile authorizationBundle:Landroid/os/Bundle;
.field private authorizationClient:Lcom/facebook/AuthorizationClient;
.field private autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
.field private final callbacks:Ljava/util/List;
.field private volatile currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
.field private handler:Landroid/os/Handler;
.field private lastAttemptedTokenExtendDate:Ljava/util/Date;
.field private final lock:Ljava/lang/Object;
.field private pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
.field private state:Lcom/facebook/SessionState;
.field private tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
.field private tokenInfo:Lcom/facebook/AccessToken;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/Session;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;
new-instance v0, Lcom/facebook/Session$1;
invoke-direct {v0}, Lcom/facebook/Session$1;-><init>()V
sput-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V
.registers 11
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v3, Ljava/util/Date;
const-wide/16 v4, 0x0
invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
iput-object v3, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
new-instance v3, Ljava/lang/Object;
invoke-direct {v3}, Ljava/lang/Object;-><init>()V
iput-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
if-eqz p1, :cond_1c
if-nez p2, :cond_1c
invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
move-result-object p2
:cond_1c
const-string v3, "applicationId"
invoke-static {p2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V
if-nez p3, :cond_2d
new-instance p3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;
sget-object v3, Lcom/facebook/Session;->staticContext:Landroid/content/Context;
invoke-direct {p3, v3}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V
:cond_2d
iput-object p2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
sget-object v3, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;
iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
new-instance v3, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v4
invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v3, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;
if-eqz p4, :cond_4f
invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->load()Landroid/os/Bundle;
move-result-object v2
:cond_4f
invoke-static {v2}, Lcom/facebook/TokenCachingStrategy;->hasTokenInformation(Landroid/os/Bundle;)Z
move-result v3
if-eqz v3, :cond_81
const-string v3, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-static {v2, v3}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
if-eqz v0, :cond_68
invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
move-result v3
if-eqz v3, :cond_76
:cond_68
invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->clear()V
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v3
invoke-static {v3}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;
move-result-object v3
iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
:goto_75
return-void
:cond_76
invoke-static {v2}, Lcom/facebook/AccessToken;->createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
move-result-object v3
iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;
iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
goto :goto_75
:cond_81
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v3
invoke-static {v3}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;
move-result-object v3
iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
goto :goto_75
.end method
.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
.registers 11
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Date;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
iput-object p6, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;
iput-object v3, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
iput-object v3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$1;)V
.registers 8
invoke-direct/range {p0 .. p6}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
return-void
.end method
.method static synthetic access$200(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
return-void
.end method
.method static synthetic access$300(Lcom/facebook/Session;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$400(Lcom/facebook/Session;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$500(Landroid/os/Handler;Ljava/lang/Runnable;)V
.registers 2
invoke-static {p0, p1}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic access$600()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$700(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
return-object v0
.end method
.method static synthetic access$702(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)Lcom/facebook/Session$TokenRefreshRequest;
.registers 2
iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
return-object p1
.end method
.method static synthetic access$902(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)Lcom/facebook/Session$AutoPublishAsyncTask;
.registers 2
iput-object p1, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
return-object p1
.end method
.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_8
if-nez p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
:cond_8
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method private autoPublishAsync()V
.registers 5
const/4 v1, 0x0
monitor-enter p0
:try_start_2
iget-object v3, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
if-nez v3, :cond_1a
invoke-static {}, Lcom/facebook/Settings;->getShouldAutoPublishInstall()Z
move-result v3
if-eqz v3, :cond_1a
iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
if-eqz v0, :cond_1a
new-instance v2, Lcom/facebook/Session$AutoPublishAsyncTask;
sget-object v3, Lcom/facebook/Session;->staticContext:Landroid/content/Context;
invoke-direct {v2, p0, v0, v3}, Lcom/facebook/Session$AutoPublishAsyncTask;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V
iput-object v2, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
move-object v1, v2
:cond_1a
monitor-exit p0
:try_end_1b
.catchall {:try_start_2 .. :try_end_1b} :catchall_24
if-eqz v1, :cond_23
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Void;
invoke-virtual {v1, v3}, Lcom/facebook/Session$AutoPublishAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_23
return-void
:catchall_24
move-exception v3
:try_start_25
monitor-exit p0
:try_end_26
.catchall {:try_start_25 .. :try_end_26} :catchall_24
throw v3
.end method
.method private finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
if-eqz p1, :cond_16
iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V
sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;
iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
:goto_d
:cond_d
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
return-void
:cond_16
if-eqz p2, :cond_d
sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;
iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
goto :goto_d
.end method
.method private finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
if-eqz p1, :cond_d
iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V
sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;
iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
:cond_d
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
return-void
.end method
.method public static final getActiveSession()Lcom/facebook/Session;
.registers 2
sget-object v1, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;
monitor-exit v1
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method private getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;
.registers 7
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;
move-result-object v3
const-class v4, Lcom/facebook/LoginActivity;
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
move-result-object v0
invoke-static {v0}, Lcom/facebook/LoginActivity;->populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
return-object v2
.end method
.method static getStaticContext()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;
return-object v0
.end method
.method private handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
.registers 7
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v2, -0x1
if-ne p1, v2, :cond_1c
iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;
sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;
if-ne v2, v3, :cond_14
iget-object v1, p2, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
:cond_d
:goto_d
const/4 v2, 0x0
iput-object v2, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {p0, v1, v0}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
return-void
:cond_14
new-instance v0, Lcom/facebook/FacebookAuthorizationException;
iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;
invoke-direct {v0, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V
goto :goto_d
:cond_1c
if-nez p1, :cond_d
new-instance v0, Lcom/facebook/FacebookOperationCanceledException;
iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;
invoke-direct {v0, v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V
goto :goto_d
.end method
.method static initializeStaticContext(Landroid/content/Context;)V
.registers 3
if-eqz p0, :cond_e
sget-object v1, Lcom/facebook/Session;->staticContext:Landroid/content/Context;
if-nez v1, :cond_e
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_f
:goto_c
sput-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;
:cond_e
return-void
:cond_f
move-object v0, p0
goto :goto_c
.end method
.method static isPublishPermission(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_1c
const-string v0, "publish"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
const-string v0, "manage"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
sget-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
:cond_1a
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method private open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
.registers 10
invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V
iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v3
:try_start_9
iget-object v2, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
if-eqz v2, :cond_1d
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
new-instance v5, Ljava/lang/UnsupportedOperationException;
const-string v6, "Session: an attempt was made to open a session that has a pending request."
invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v2, v4, v5}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
monitor-exit v3
:cond_1c
:goto_1c
return-void
:cond_1d
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v2, Lcom/facebook/Session$4;->$SwitchMap$com$facebook$SessionState:[I
iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v4}, Lcom/facebook/SessionState;->ordinal()I
move-result v4
aget v2, v2, v4
packed-switch v2, :pswitch_data_88
:pswitch_2c
new-instance v2, Ljava/lang/UnsupportedOperationException;
const-string v4, "Session: an attempt was made to open an already opened session."
invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v2
:catchall_34
move-exception v2
monitor-exit v3
:try_end_36
.catchall {:try_start_9 .. :try_end_36} :catchall_34
throw v2
:pswitch_37
:try_start_37
sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;
iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
if-nez p1, :cond_45
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v4, "openRequest cannot be null when opening a new Session"
invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_45
iput-object p1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
:goto_47
if-eqz p1, :cond_50
invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getCallback()Lcom/facebook/Session$StatusCallback;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V
:cond_50
const/4 v2, 0x0
invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
monitor-exit v3
:try_end_55
.catchall {:try_start_37 .. :try_end_55} :catchall_34
sget-object v2, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;
if-ne v0, v2, :cond_1c
invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V
goto :goto_1c
:pswitch_5d
if-eqz p1, :cond_79
:try_start_5f
invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;
move-result-object v2
invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z
move-result v2
if-nez v2, :cond_79
invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;
move-result-object v2
invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;
move-result-object v4
invoke-static {v2, v4}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z
move-result v2
if-nez v2, :cond_79
iput-object p1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
:cond_79
iget-object v2, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
if-nez v2, :cond_82
sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;
iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
goto :goto_47
:cond_82
sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;
iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
:try_end_86
.catchall {:try_start_5f .. :try_end_86} :catchall_34
goto :goto_47
nop
:pswitch_data_88
.packed-switch 0x1
:pswitch_37
:pswitch_2c
:pswitch_5d
.end packed-switch
.end method
.method public static openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
.registers 4
new-instance v0, Lcom/facebook/Session$OpenRequest;
invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V
invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;
move-result-object v0
invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
move-result-object v0
return-object v0
.end method
.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
.registers 5
new-instance v0, Lcom/facebook/Session$OpenRequest;
invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V
invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;
move-result-object v0
invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
move-result-object v0
return-object v0
.end method
.method private static openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
.registers 6
new-instance v1, Lcom/facebook/Session$Builder;
invoke-direct {v1, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;
move-result-object v0
sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_17
if-eqz p1, :cond_1e
:cond_17
invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V
invoke-virtual {v0, p2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V
:goto_1d
return-object v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public static openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;
.registers 3
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
move-result-object v0
return-object v0
.end method
.method public static openActiveSessionWithAccessToken(Landroid/content/Context;Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
.registers 6
const/4 v2, 0x0
new-instance v0, Lcom/facebook/Session;
const/4 v1, 0x0
invoke-direct {v0, p0, v2, v2, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V
invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V
invoke-virtual {v0, p1, p2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
return-object v0
.end method
.method static postActiveSessionAction(Ljava/lang/String;)V
.registers 3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
return-void
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 4
new-instance v0, Ljava/io/InvalidObjectException;
const-string v1, "Cannot readObject, serialization proxy required"
invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
.registers 6
invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V
if-eqz p1, :cond_3c
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
if-eqz v0, :cond_1a
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Session: an attempt was made to request new permissions for a session that has a pending request."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_17
move-exception v0
monitor-exit v1
:try_end_19
.catchall {:try_start_b .. :try_end_19} :catchall_17
throw v0
:try_start_1a
:cond_1a
sget-object v0, Lcom/facebook/Session$4;->$SwitchMap$com$facebook$SessionState:[I
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v2}, Lcom/facebook/SessionState;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_3e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Session: an attempt was made to request new permissions for a session that is not currently open."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2f
iput-object p1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
monitor-exit v1
:try_end_32
.catchall {:try_start_1a .. :try_end_32} :catchall_17
invoke-virtual {p0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setValidateSameFbidAsToken(Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V
:cond_3c
return-void
nop
:pswitch_data_3e
.packed-switch 0x4
:pswitch_2f
:pswitch_2f
.end packed-switch
.end method
.method private resolveIntent(Landroid/content/Intent;)Z
.registers 5
const/4 v1, 0x0
invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v0
if-nez v0, :cond_10
:goto_f
return v1
:cond_10
const/4 v1, 0x1
goto :goto_f
.end method
.method public static final restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;
.registers 11
const/4 v4, 0x0
if-nez p3, :cond_5
move-object v3, v4
:goto_4
return-object v3
:cond_5
const-string v5, "com.facebook.sdk.Session.saveSessionKey"
invoke-virtual {p3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
if-eqz v0, :cond_3a
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
:try_start_12
new-instance v5, Ljava/io/ObjectInputStream;
invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/Session;
invoke-static {p0}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V
if-eqz p1, :cond_3c
iput-object p1, v3, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
:goto_24
if-eqz p2, :cond_29
invoke-virtual {v3, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V
:cond_29
const-string v5, "com.facebook.sdk.Session.authBundleKey"
invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v5
iput-object v5, v3, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
:try_end_31
.catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_31} :catch_32
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_44
goto :goto_4
:catch_32
move-exception v1
sget-object v5, Lcom/facebook/Session;->TAG:Ljava/lang/String;
const-string v6, "Unable to restore session"
invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_3a
:cond_3a
move-object v3, v4
goto :goto_4
:try_start_3c
:cond_3c
new-instance v5, Lcom/facebook/SharedPreferencesTokenCachingStrategy;
invoke-direct {v5, p0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V
iput-object v5, v3, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
:try_end_43
.catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_43} :catch_32
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_44
goto :goto_24
:catch_44
move-exception v1
sget-object v5, Lcom/facebook/Session;->TAG:Ljava/lang/String;
const-string v6, "Unable to restore session."
invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3a
.end method
.method private static runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
.registers 3
if-eqz p0, :cond_6
invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_5
return-void
:cond_6
invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
goto :goto_5
.end method
.method public static final saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V
.registers 6
if-eqz p1, :cond_29
if-eqz p0, :cond_29
const-string v2, "com.facebook.sdk.Session.saveSessionKey"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_29
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_11
new-instance v2, Ljava/io/ObjectOutputStream;
invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
:try_end_19
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_2a
const-string v2, "com.facebook.sdk.Session.saveSessionKey"
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v3
invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
const-string v2, "com.facebook.sdk.Session.authBundleKey"
iget-object v3, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
:cond_29
return-void
:catch_2a
move-exception v0
new-instance v2, Lcom/facebook/FacebookException;
const-string v3, "Unable to save session."
invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
.end method
.method private saveTokenToCache(Lcom/facebook/AccessToken;)V
.registers 4
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V
:cond_f
return-void
.end method
.method public static final setActiveSession(Lcom/facebook/Session;)V
.registers 4
sget-object v2, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;
monitor-enter v2
:try_start_3
sget-object v1, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;
if-eq p0, v1, :cond_29
sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;
if-eqz v0, :cond_e
invoke-virtual {v0}, Lcom/facebook/Session;->close()V
:cond_e
sput-object p0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;
if-eqz v0, :cond_17
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V
:cond_17
if-eqz p0, :cond_29
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/Session;->isOpened()Z
move-result v1
if-eqz v1, :cond_29
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_OPENED"
invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V
:cond_29
monitor-exit v2
return-void
:catchall_2b
move-exception v1
monitor-exit v2
:try_end_2d
.catchall {:try_start_3 .. :try_end_2d} :catchall_2b
throw v1
.end method
.method private tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)Z
.registers 4
new-instance v0, Lcom/facebook/AuthorizationClient;
invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V
iput-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
new-instance v1, Lcom/facebook/Session$2;
invoke-direct {v1, p0}, Lcom/facebook/Session$2;-><init>(Lcom/facebook/Session;)V
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V
iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/content/Context;)V
iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
const/4 v0, 0x1
return v0
.end method
.method private tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z
.registers 7
const/4 v2, 0x0
invoke-direct {p0, p1}, Lcom/facebook/Session;->getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;
move-result-object v1
invoke-direct {p0, v1}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z
move-result v3
if-nez v3, :cond_c
:goto_b
return v2
:cond_c
:try_start_c
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;
move-result-object v3
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I
move-result v4
invoke-interface {v3, v1, v4}, Lcom/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
:try_end_17
.catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_17} :catch_19
const/4 v2, 0x1
goto :goto_b
:catch_19
move-exception v0
goto :goto_b
.end method
.method private validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V
.registers 8
if-eqz p1, :cond_3b
#getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$100(Lcom/facebook/Session$AuthorizationRequest;)Z
move-result v1
if-nez v1, :cond_3b
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/facebook/LoginActivity;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
invoke-direct {p0, v0}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z
move-result v1
if-nez v1, :cond_3b
new-instance v1, Lcom/facebook/FacebookException;
const-string v2, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
const-class v5, Lcom/facebook/LoginActivity;
invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3b
return-void
.end method
.method private validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
.registers 10
const/4 v6, 0x1
const/4 v5, 0x0
if-eqz p1, :cond_e
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;
move-result-object v2
invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z
move-result v2
if-eqz v2, :cond_1e
:cond_e
sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;
invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_68
new-instance v2, Lcom/facebook/FacebookException;
const-string v3, "Cannot request publish or manage authorization with no permissions."
invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v2
:cond_1e
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_26
:cond_26
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_68
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/facebook/Session;->isPublishPermission(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_50
sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;
invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
new-instance v2, Lcom/facebook/FacebookException;
const-string v3, "Cannot pass a publish or manage permission (%s) to a request for read authorization"
new-array v4, v6, [Ljava/lang/Object;
aput-object v1, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v2
:cond_50
sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;
invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;
const-string v3, "Should not pass a read permission (%s) to a request for publish or manage authorization"
new-array v4, v6, [Ljava/lang/Object;
aput-object v1, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_26
:cond_68
return-void
.end method
.method private writeReplace()Ljava/lang/Object;
.registers 8
new-instance v0, Lcom/facebook/Session$SerializationProxyV1;
iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
const/4 v5, 0x0
iget-object v6, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-direct/range {v0 .. v6}, Lcom/facebook/Session$SerializationProxyV1;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
return-object v0
.end method
.method public final addCallback(Lcom/facebook/Session$StatusCallback;)V
.registers 4
iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
monitor-enter v1
if-eqz p1, :cond_12
:try_start_5
iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_12
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
:try_end_16
.catchall {:try_start_5 .. :try_end_16} :catchall_14
throw v0
.end method
.method  authorize(Lcom/facebook/Session$AuthorizationRequest;)V
.registers 8
const/4 v1, 0x0
iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
invoke-virtual {p1, v2}, Lcom/facebook/Session$AuthorizationRequest;->setApplicationId(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V
invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z
move-result v1
if-nez v1, :cond_19
#getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$100(Lcom/facebook/Session$AuthorizationRequest;)Z
move-result v2
if-eqz v2, :cond_19
invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)Z
move-result v1
:cond_19
if-nez v1, :cond_3e
iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v3
:try_start_1e
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v2, Lcom/facebook/Session$4;->$SwitchMap$com$facebook$SessionState:[I
iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v4}, Lcom/facebook/SessionState;->ordinal()I
move-result v4
aget v2, v2, v4
packed-switch v2, :pswitch_data_44
sget-object v2, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
new-instance v4, Lcom/facebook/FacebookException;
const-string v5, "Log in attempt failed."
invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v2, v4}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
monitor-exit v3
:goto_3e
:cond_3e
return-void
:pswitch_3f
monitor-exit v3
goto :goto_3e
:catchall_41
move-exception v2
monitor-exit v3
:try_end_43
.catchall {:try_start_1e .. :try_end_43} :catchall_41
throw v2
:pswitch_data_44
.packed-switch 0x6
:pswitch_3f
:pswitch_3f
.end packed-switch
.end method
.method public final close()V
.registers 6
iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v2
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v1, Lcom/facebook/Session$4;->$SwitchMap$com$facebook$SessionState:[I
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I
move-result v3
aget v1, v1, v3
packed-switch v1, :pswitch_data_34
:goto_12
monitor-exit v2
return-void
:pswitch_14
sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;
iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
new-instance v3, Lcom/facebook/FacebookException;
const-string v4, "Log in attempt aborted."
invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
goto :goto_12
:catchall_25
move-exception v1
monitor-exit v2
:try_end_27
.catchall {:try_start_3 .. :try_end_27} :catchall_25
throw v1
:pswitch_28
:try_start_28
sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;
iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
const/4 v3, 0x0
invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:try_end_32
.catchall {:try_start_28 .. :try_end_32} :catchall_25
goto :goto_12
nop
:pswitch_data_34
.packed-switch 0x1
:pswitch_14
:pswitch_14
:pswitch_28
:pswitch_28
:pswitch_28
.end packed-switch
.end method
.method public final closeAndClearTokenInformation()V
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
invoke-virtual {v0}, Lcom/facebook/TokenCachingStrategy;->clear()V
:cond_9
sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/facebook/Session;->close()V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/facebook/Session;
if-nez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move-object v0, p1
check-cast v0, Lcom/facebook/Session;
iget-object v2, v0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, v0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
iget-object v3, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, v0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;
move-result-object v2
invoke-virtual {p0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;
move-result-object v3
invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method  extendAccessToken()V
.registers 5
const/4 v0, 0x0
iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v3
:try_start_4
iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
if-nez v2, :cond_10
new-instance v1, Lcom/facebook/Session$TokenRefreshRequest;
invoke-direct {v1, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V
:try_start_d
:try_end_d
.catchall {:try_start_4 .. :try_end_d} :catchall_17
iput-object v1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
:try_end_f
.catchall {:try_start_d .. :try_end_f} :catchall_1a
move-object v0, v1
:cond_10
:try_start_10
monitor-exit v3
:try_end_11
.catchall {:try_start_10 .. :try_end_11} :catchall_17
if-eqz v0, :cond_16
invoke-virtual {v0}, Lcom/facebook/Session$TokenRefreshRequest;->bind()V
:cond_16
return-void
:catchall_17
move-exception v2
:goto_18
:try_start_18
monitor-exit v3
:try_end_19
.catchall {:try_start_18 .. :try_end_19} :catchall_17
throw v2
:catchall_1a
move-exception v2
move-object v0, v1
goto :goto_18
.end method
.method  extendAccessTokenIfNeeded()V
.registers 2
invoke-virtual {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z
move-result v0
if-eqz v0, :cond_9
invoke-virtual {p0}, Lcom/facebook/Session;->extendAccessToken()V
:cond_9
return-void
.end method
.method  extendTokenCompleted(Landroid/os/Bundle;)V
.registers 7
iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v2
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v1, Lcom/facebook/Session$4;->$SwitchMap$com$facebook$SessionState:[I
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I
move-result v3
aget v1, v1, v3
packed-switch v1, :pswitch_data_54
sget-object v1, Lcom/facebook/Session;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "refreshToken ignored in state "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
monitor-exit v2
:goto_2d
return-void
:pswitch_2e
sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;
iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
const/4 v3, 0x0
invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:pswitch_38
iget-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-static {v1, p1}, Lcom/facebook/AccessToken;->createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
move-result-object v1
iput-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
if-eqz v1, :cond_4f
iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v3}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V
:cond_4f
monitor-exit v2
goto :goto_2d
:catchall_51
move-exception v1
monitor-exit v2
:try_end_53
.catchall {:try_start_3 .. :try_end_53} :catchall_51
throw v1
:pswitch_data_54
.packed-switch 0x4
:pswitch_2e
:pswitch_38
.end packed-switch
.end method
.method  finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
.registers 6
if-eqz p1, :cond_10
invoke-virtual {p1}, Lcom/facebook/AccessToken;->isInvalid()Z
move-result v0
if-eqz v0, :cond_10
const/4 p1, 0x0
new-instance p2, Lcom/facebook/FacebookException;
const-string v0, "Invalid access token."
invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
:cond_10
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_13
sget-object v0, Lcom/facebook/Session$4;->$SwitchMap$com$facebook$SessionState:[I
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v2}, Lcom/facebook/SessionState;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_2e
:goto_20
:pswitch_20
monitor-exit v1
return-void
:pswitch_22
invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
goto :goto_20
:catchall_26
move-exception v0
monitor-exit v1
:try_end_28
.catchall {:try_start_13 .. :try_end_28} :catchall_26
throw v0
:pswitch_29
:try_start_29
invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
:try_end_2c
.catchall {:try_start_29 .. :try_end_2c} :catchall_26
goto :goto_20
nop
:pswitch_data_2e
.packed-switch 0x2
:pswitch_22
:pswitch_20
:pswitch_29
:pswitch_29
.end packed-switch
.end method
.method public final getAccessToken()Ljava/lang/String;
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_8
monitor-exit v1
return-object v0
:cond_a
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_11
throw v0
.end method
.method public final getApplicationId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
return-object v0
.end method
.method public final getAuthorizationBundle()Landroid/os/Bundle;
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
monitor-exit v1
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public final getExpirationDate()Ljava/util/Date;
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_8
monitor-exit v1
return-object v0
:cond_a
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_11
throw v0
.end method
.method  getLastAttemptedTokenExtendDate()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
return-object v0
.end method
.method public final getPermissions()Ljava/util/List;
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_8
monitor-exit v1
return-object v0
:cond_a
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_11
throw v0
.end method
.method public final getState()Lcom/facebook/SessionState;
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
monitor-exit v1
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method  getTokenInfo()Lcom/facebook/AccessToken;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
return-object v0
.end method
.method public hashCode()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isClosed()Z
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z
move-result v0
monitor-exit v1
return v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public final isOpened()Z
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z
move-result v0
monitor-exit v1
return v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
.registers 11
const/4 v3, 0x1
const-string v4, "currentActivity"
invoke-static {p1, v4}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V
iget-object v4, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v4
:try_start_c
iget-object v5, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
if-eqz v5, :cond_18
iget-object v5, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-virtual {v5}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I
move-result v5
if-eq p2, v5, :cond_1b
:cond_18
const/4 v3, 0x0
monitor-exit v4
:goto_1a
return v3
:cond_1b
monitor-exit v4
:try_end_1c
.catchall {:try_start_c .. :try_end_1c} :catchall_2e
const/4 v1, 0x0
const/4 v0, 0x0
if-eqz p4, :cond_3b
const-string v4, "com.facebook.LoginActivity:Result"
invoke-virtual {p4, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v2
check-cast v2, Lcom/facebook/AuthorizationClient$Result;
if-eqz v2, :cond_31
invoke-direct {p0, p3, v2}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
goto :goto_1a
:catchall_2e
move-exception v3
:try_start_2f
monitor-exit v4
:try_end_30
.catchall {:try_start_2f .. :try_end_30} :catchall_2e
throw v3
:cond_31
iget-object v4, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
if-eqz v4, :cond_44
iget-object v4, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {v4, p2, p3, p4}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z
goto :goto_1a
:cond_3b
if-nez p3, :cond_44
new-instance v0, Lcom/facebook/FacebookOperationCanceledException;
const-string v4, "User canceled operation."
invoke-direct {v0, v4}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V
:cond_44
invoke-virtual {p0, v1, v0}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
goto :goto_1a
.end method
.method public final open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
.registers 7
iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v2
:try_start_3
iget-object v1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
if-eqz v1, :cond_12
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v3, "Session: an attempt was made to open a session that has a pending request."
invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_f
move-exception v1
monitor-exit v2
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_f
throw v1
:cond_12
:try_start_12
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v3, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;
if-eq v1, v3, :cond_26
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;
if-eq v1, v3, :cond_26
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v3, "Session: an attempt was made to open an already opened session."
invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:cond_26
if-eqz p2, :cond_2b
invoke-virtual {p0, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V
:cond_2b
iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
if-eqz v1, :cond_3a
iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V
:cond_3a
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;
iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
const/4 v3, 0x0
invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
monitor-exit v2
:try_end_47
.catchall {:try_start_12 .. :try_end_47} :catchall_f
invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V
return-void
.end method
.method public final openForPublish(Lcom/facebook/Session$OpenRequest;)V
.registers 3
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;
invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
return-void
.end method
.method public final openForRead(Lcom/facebook/Session$OpenRequest;)V
.registers 3
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;
invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
return-void
.end method
.method  postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 7
if-ne p1, p2, :cond_9
sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;
if-eq p1, v1, :cond_9
if-nez p3, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z
move-result v1
if-eqz v1, :cond_19
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v1
invoke-static {v1}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;
move-result-object v1
iput-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
:cond_19
iget-object v2, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
monitor-enter v2
:try_start_1c
new-instance v0, Lcom/facebook/Session$3;
invoke-direct {v0, p0, p2, p3}, Lcom/facebook/Session$3;-><init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
iget-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;
invoke-static {v1, v0}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
monitor-exit v2
:try_end_27
.catchall {:try_start_1c .. :try_end_27} :catchall_41
sget-object v1, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;
if-ne p0, v1, :cond_8
invoke-virtual {p1}, Lcom/facebook/SessionState;->isOpened()Z
move-result v1
invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z
move-result v2
if-eq v1, v2, :cond_8
invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z
move-result v1
if-eqz v1, :cond_44
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_OPENED"
invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V
goto :goto_8
:catchall_41
move-exception v1
:try_start_42
monitor-exit v2
:try_end_43
.catchall {:try_start_42 .. :try_end_43} :catchall_41
throw v1
:cond_44
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"
invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V
goto :goto_8
.end method
.method public final removeCallback(Lcom/facebook/Session$StatusCallback;)V
.registers 4
iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public final requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
.registers 3
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;
invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
return-void
.end method
.method public final requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
.registers 3
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;
invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
return-void
.end method
.method  setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
return-void
.end method
.method  setLastAttemptedTokenExtendDate(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
return-void
.end method
.method  setTokenInfo(Lcom/facebook/AccessToken;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
return-void
.end method
.method  shouldExtendAccessToken()Z
.registers 7
iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
if-eqz v2, :cond_6
const/4 v1, 0x0
:cond_5
:goto_5
return v1
:cond_6
const/4 v1, 0x0
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v2}, Lcom/facebook/SessionState;->isOpened()Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v2}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/AccessTokenSource;->canExtendToken()Z
move-result v2
if-eqz v2, :cond_5
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v2
iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
invoke-virtual {v4}, Ljava/util/Date;->getTime()J
move-result-wide v4
sub-long/2addr v2, v4
const-wide/32 v4, 0x36ee80
cmp-long v2, v2, v4
if-lez v2, :cond_5
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v2
iget-object v4, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v4}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;
move-result-object v4
invoke-virtual {v4}, Ljava/util/Date;->getTime()J
move-result-wide v4
sub-long/2addr v2, v4
const-wide/32 v4, 0x5265c00
cmp-long v2, v2, v4
if-lez v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "{Session"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " state:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", token:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
if-nez v0, :cond_42
const-string v0, "null"
:goto_23
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", appId:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
if-nez v0, :cond_45
const-string v0, "null"
:goto_33
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_42
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
goto :goto_23
:cond_45
iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
goto :goto_33
.end method