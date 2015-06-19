.class public Lcom/facebook/Session;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field public static final a:Ljava/lang/String; = null
.field private static final b:Ljava/lang/Object; = null
.field private static c:Lcom/facebook/Session; = null
.field private static volatile d:Landroid/content/Context; = null
.field private static final e:Ljava/util/Set; = null
.field private static final serialVersionUID:J = 0x1L
.field private appEventsLogger:Lcom/facebook/AppEventsLogger;
.field private applicationId:Ljava/lang/String;
.field private volatile authorizationBundle:Landroid/os/Bundle;
.field private authorizationClient:Lcom/facebook/AuthorizationClient;
.field private autoPublishAsyncTask:Lcom/facebook/ab;
.field private final callbacks:Ljava/util/List;
.field private volatile currentTokenRefreshRequest:Lcom/facebook/af;
.field private handler:Landroid/os/Handler;
.field private lastAttemptedTokenExtendDate:Ljava/util/Date;
.field private final lock:Ljava/lang/Object;
.field private pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
.field private requestedPermissions:Ljava/util/Set;
.field private state:Lcom/facebook/SessionState;
.field private tokenCachingStrategy:Lcom/facebook/aj;
.field private tokenInfo:Lcom/facebook/AccessToken;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/Session;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/Session;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/Session;->b:Ljava/lang/Object;
new-instance v0, Lcom/facebook/Session$1;
invoke-direct {v0}, Lcom/facebook/Session$1;-><init>()V
sput-object v0, Lcom/facebook/Session;->e:Ljava/util/Set;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/aj;B)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/aj;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/aj;B)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/aj;B)V
.registers 11
const-wide/16 v4, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/Date;
invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V
iput-object v1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
iput-object v1, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;
new-instance v1, Ljava/lang/Object;
invoke-direct {v1}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
if-eqz p1, :cond_23
if-nez p2, :cond_23
invoke-static {p1}, Lcom/facebook/internal/ai;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object p2
:cond_23
const-string v1, "applicationId"
invoke-static {p2, v1}, Lcom/facebook/internal/ak;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p1}, Lcom/facebook/Session;->b(Landroid/content/Context;)V
if-nez p3, :cond_34
new-instance p3, Lcom/facebook/ai;
sget-object v1, Lcom/facebook/Session;->d:Landroid/content/Context;
invoke-direct {p3, v1}, Lcom/facebook/ai;-><init>(Landroid/content/Context;)V
:cond_34
iput-object p2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
sget-object v1, Lcom/facebook/SessionState;->a:Lcom/facebook/SessionState;
iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
new-instance v1, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v2
invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;
invoke-virtual {p3}, Lcom/facebook/aj;->a()Landroid/os/Bundle;
move-result-object v1
if-nez v1, :cond_7a
:goto_57
:cond_57
if-eqz v0, :cond_6f
const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-static {v1, v0}, Lcom/facebook/aj;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
if-eqz v0, :cond_6c
invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_94
:cond_6c
invoke-virtual {p3}, Lcom/facebook/aj;->b()V
:cond_6f
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/AccessToken;->a(Ljava/util/List;)Lcom/facebook/AccessToken;
move-result-object v0
iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
:goto_79
return-void
:cond_7a
const-string v2, "com.facebook.TokenCachingStrategy.Token"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_57
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_57
const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v2
cmp-long v2, v2, v4
if-eqz v2, :cond_57
const/4 v0, 0x1
goto :goto_57
:cond_94
invoke-static {v1}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
move-result-object v0
iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
sget-object v0, Lcom/facebook/SessionState;->b:Lcom/facebook/SessionState;
iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
goto :goto_79
.end method
.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;Lcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
.registers 11
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Date;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
iput-object p5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
iput-object p6, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;
iput-object v3, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/af;
iput-object v3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;Lcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;B)V
.registers 8
invoke-direct/range {p0 .. p6}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;Lcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/facebook/Session;
.registers 3
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/facebook/Session;->a(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/facebook/ae;)Lcom/facebook/Session;
.registers 5
const/4 v0, 0x1
new-instance v1, Lcom/facebook/Session$OpenRequest;
invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V
invoke-virtual {v1, p2}, Lcom/facebook/Session$OpenRequest;->b(Lcom/facebook/ae;)Lcom/facebook/Session$OpenRequest;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/Session;->a(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
move-result-object v0
return-object v0
.end method
.method public static final a(Landroid/content/Context;Lcom/facebook/ae;Landroid/os/Bundle;)Lcom/facebook/Session;
.registers 7
const/4 v1, 0x0
if-nez p2, :cond_5
move-object v0, v1
:goto_4
return-object v0
:cond_5
const-string v0, "com.facebook.sdk.Session.saveSessionKey"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
if-eqz v0, :cond_3d
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
:try_start_12
new-instance v0, Ljava/io/ObjectInputStream;
invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Session;
invoke-static {p0}, Lcom/facebook/Session;->b(Landroid/content/Context;)V
new-instance v2, Lcom/facebook/ai;
invoke-direct {v2, p0}, Lcom/facebook/ai;-><init>(Landroid/content/Context;)V
iput-object v2, v0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
if-eqz p1, :cond_2c
invoke-virtual {v0, p1}, Lcom/facebook/Session;->a(Lcom/facebook/ae;)V
:cond_2c
const-string v2, "com.facebook.sdk.Session.authBundleKey"
invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v2
iput-object v2, v0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
:try_end_34
.catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_34} :catch_35
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_34} :catch_3f
goto :goto_4
:catch_35
move-exception v0
sget-object v2, Lcom/facebook/Session;->a:Ljava/lang/String;
const-string v3, "Unable to restore session"
invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_3d
:cond_3d
move-object v0, v1
goto :goto_4
:catch_3f
move-exception v0
sget-object v2, Lcom/facebook/Session;->a:Ljava/lang/String;
const-string v3, "Unable to restore session."
invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3d
.end method
.method private static a(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
.registers 6
new-instance v0, Lcom/facebook/ac;
invoke-direct {v0, p0}, Lcom/facebook/ac;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/facebook/ac;->a()Lcom/facebook/Session;
move-result-object v0
sget-object v1, Lcom/facebook/SessionState;->b:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/Session;->c()Lcom/facebook/SessionState;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_17
if-eqz p1, :cond_1e
:cond_17
invoke-static {v0}, Lcom/facebook/Session;->a(Lcom/facebook/Session;)V
invoke-virtual {v0, p2}, Lcom/facebook/Session;->a(Lcom/facebook/Session$OpenRequest;)V
:goto_1d
return-object v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method static a(Lcom/facebook/aa;)Ljava/util/List;
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/facebook/aa;->a()Lcom/facebook/FacebookRequestError;
move-result-object v0
if-eqz v0, :cond_9
move-object v0, v1
:goto_8
return-object v0
:cond_9
const-class v0, Lcom/facebook/model/GraphMultiResult;
invoke-virtual {p0, v0}, Lcom/facebook/aa;->a(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v0
check-cast v0, Lcom/facebook/model/GraphMultiResult;
if-nez v0, :cond_15
move-object v0, v1
goto :goto_8
:cond_15
invoke-interface {v0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;
move-result-object v3
if-eqz v3, :cond_21
invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->size()I
move-result v0
if-nez v0, :cond_23
:cond_21
move-object v0, v1
goto :goto_8
:cond_23
new-instance v4, Ljava/util/ArrayList;
invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->size()I
move-result v0
invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V
new-instance v2, Ljava/util/ArrayList;
invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->size()I
move-result v0
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
invoke-interface {v3, v0}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/model/GraphObject;
const-string v1, "permission"
invoke-interface {v0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_73
invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_48
:goto_48
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b5
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/model/GraphObject;
const-string v1, "permission"
invoke-interface {v0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v5, "status"
invoke-interface {v0, v5}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-string v5, "granted"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_48
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_48
:cond_73
invoke-interface {v0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_7f
:cond_7f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b5
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v5, "installed"
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_7f
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
const/4 v5, 0x1
if-ne v1, v5, :cond_7f
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_7f
:cond_b5
move-object v0, v2
goto/16 :goto_8
.end method
.method private a(ILcom/facebook/AuthorizationClient$Result;)V
.registers 8
const/4 v1, 0x0
const/4 v0, -0x1
if-ne p1, v0, :cond_24
iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;
sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->a:Lcom/facebook/AuthorizationClient$Result$Code;
if-ne v0, v2, :cond_1b
iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
move-object v2, v0
move-object v0, v1
:goto_e
iget-object v3, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;
iget-object v4, p2, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;
invoke-direct {p0, v3, v4, v0}, Lcom/facebook/Session;->a(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
iput-object v1, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-direct {p0, v2, v0}, Lcom/facebook/Session;->a(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
return-void
:cond_1b
new-instance v0, Lcom/facebook/FacebookAuthorizationException;
iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;
invoke-direct {v0, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V
move-object v2, v1
goto :goto_e
:cond_24
if-nez p1, :cond_2f
new-instance v0, Lcom/facebook/FacebookOperationCanceledException;
iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;
invoke-direct {v0, v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V
move-object v2, v1
goto :goto_e
:cond_2f
move-object v0, v1
move-object v2, v1
goto :goto_e
.end method
.method static synthetic a(Landroid/os/Handler;Ljava/lang/Runnable;)V
.registers 2
invoke-static {p0, p1}, Lcom/facebook/Session;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V
return-void
.end method
.method private a(Lcom/facebook/AccessToken;)V
.registers 4
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
invoke-virtual {p1}, Lcom/facebook/AccessToken;->f()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/aj;->a(Landroid/os/Bundle;)V
:cond_f
return-void
.end method
.method private a(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
.registers 7
const/4 v0, 0x0
if-eqz p1, :cond_11
invoke-virtual {p1}, Lcom/facebook/AccessToken;->g()Z
move-result v1
if-eqz v1, :cond_11
new-instance p2, Lcom/facebook/FacebookException;
const-string v1, "Invalid access token."
invoke-direct {p2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
move-object p1, v0
:cond_11
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_14
sget-object v0, Lcom/facebook/Session$4;->a:[I
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v2}, Lcom/facebook/SessionState;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_70
:goto_21
monitor-exit v1
return-void
:pswitch_23
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
if-eqz p1, :cond_3c
iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-direct {p0, p1}, Lcom/facebook/Session;->a(Lcom/facebook/AccessToken;)V
sget-object v2, Lcom/facebook/SessionState;->d:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
:goto_30
:cond_30
const/4 v2, 0x0
iput-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-direct {p0, v0, v2, p2}, Lcom/facebook/Session;->a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:try_end_38
.catchall {:try_start_14 .. :try_end_38} :catchall_39
goto :goto_21
:catchall_39
move-exception v0
monitor-exit v1
throw v0
:cond_3c
if-eqz p2, :cond_30
:try_start_3e
sget-object v2, Lcom/facebook/SessionState;->f:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
goto :goto_30
:pswitch_43
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
if-eqz p1, :cond_50
iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-direct {p0, p1}, Lcom/facebook/Session;->a(Lcom/facebook/AccessToken;)V
sget-object v2, Lcom/facebook/SessionState;->e:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
:cond_50
const/4 v2, 0x0
iput-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-direct {p0, v0, v2, p2}, Lcom/facebook/Session;->a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
goto :goto_21
:pswitch_59
sget-object v0, Lcom/facebook/Session;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unexpected call to finishAuthOrReauth in state "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_6f
.catchall {:try_start_3e .. :try_end_6f} :catchall_39
goto :goto_21
:pswitch_data_70
.packed-switch 0x1
:pswitch_59
:pswitch_23
:pswitch_59
:pswitch_43
:pswitch_43
:pswitch_59
:pswitch_59
.end packed-switch
.end method
.method private a(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
.registers 9
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
if-nez v0, :cond_2f
const-string v0, ""
invoke-static {v0}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "2_result"
sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->c:Lcom/facebook/AuthorizationClient$Result$Code;
invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$Result$Code;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "5_error_message"
const-string v2, "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest."
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_1c
const-string v1, "1_timestamp_ms"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
invoke-direct {p0}, Lcom/facebook/Session;->p()Lcom/facebook/AppEventsLogger;
move-result-object v1
const-string v2, "fb_mobile_login_complete"
invoke-virtual {v1, v2, v0}, Lcom/facebook/AppEventsLogger;->b(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
:cond_2f
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/Session$AuthorizationRequest;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v2
if-eqz p1, :cond_44
const-string v0, "2_result"
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$Result$Code;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_44
if-eqz p3, :cond_55
invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_55
const-string v0, "5_error_message"
invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_55
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;
move-result-object v1
invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
move-result v1
if-nez v1, :cond_6d
new-instance v0, Lorg/json/JSONObject;
iget-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;
move-result-object v1
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
:cond_6d
if-eqz p2, :cond_9a
if-nez v0, :cond_aa
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
:try_start_76
:goto_76
invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_7e
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a8
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_97
.catch Lorg/json/JSONException; {:try_start_76 .. :try_end_97} :catch_98
goto :goto_7e
:catch_98
move-exception v0
move-object v0, v3
:goto_9a
:cond_9a
if-eqz v0, :cond_a5
const-string v1, "6_extras"
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_a5
move-object v0, v2
goto/16 :goto_1c
:cond_a8
move-object v0, v3
goto :goto_9a
:cond_aa
move-object v3, v0
goto :goto_76
.end method
.method private a(Lcom/facebook/Session$AuthorizationRequest;)V
.registers 8
const/4 v2, 0x0
iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/facebook/Session$AuthorizationRequest;->a(Ljava/lang/String;)V
monitor-enter p0
:try_start_7
iget-object v0, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/ab;
if-nez v0, :cond_123
invoke-static {}, Lcom/facebook/ah;->d()Z
move-result v0
if-eqz v0, :cond_123
iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
if-eqz v1, :cond_123
new-instance v0, Lcom/facebook/ab;
sget-object v3, Lcom/facebook/Session;->d:Landroid/content/Context;
invoke-direct {v0, p0, v1, v3}, Lcom/facebook/ab;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/ab;
:goto_1e
monitor-exit p0
:try_end_1f
.catchall {:try_start_7 .. :try_end_1f} :catchall_113
if-eqz v0, :cond_27
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/facebook/ab;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_27
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/Session$AuthorizationRequest;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "1_timestamp_ms"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
:try_start_3a
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v3, "login_behavior"
iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->c(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionLoginBehavior;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "request_code"
iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->d(Lcom/facebook/Session$AuthorizationRequest;)I
move-result v4
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v3, "is_legacy"
iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->b(Lcom/facebook/Session$AuthorizationRequest;)Z
move-result v4
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v3, "permissions"
const-string v4, ","
iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v5}, Lcom/facebook/Session$AuthorizationRequest;->e(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;
move-result-object v5
invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "default_audience"
iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->f(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionDefaultAudience;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/SessionDefaultAudience;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "6_extras"
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_8d
:try_end_8d
.catch Lorg/json/JSONException; {:try_start_3a .. :try_end_8d} :catch_11e
invoke-direct {p0}, Lcom/facebook/Session;->p()Lcom/facebook/AppEventsLogger;
move-result-object v1
const-string v3, "fb_mobile_login_start"
invoke-virtual {v1, v3, v0}, Lcom/facebook/AppEventsLogger;->b(Ljava/lang/String;Landroid/os/Bundle;)V
invoke-static {p1}, Lcom/facebook/Session;->c(Lcom/facebook/Session$AuthorizationRequest;)Z
move-result v1
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->d()Ljava/util/List;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/Session;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;
move-result-object v3
const-string v4, "try_login_activity"
if-eqz v1, :cond_116
const-string v0, "1"
:goto_ad
invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-nez v1, :cond_121
invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->b(Lcom/facebook/Session$AuthorizationRequest;)Z
move-result v0
if-eqz v0, :cond_121
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;
move-result-object v0
const-string v1, "try_legacy"
const-string v3, "1"
invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/facebook/AuthorizationClient;
invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V
iput-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
new-instance v1, Lcom/facebook/Session$2;
invoke-direct {v1, p0}, Lcom/facebook/Session$2;-><init>(Lcom/facebook/Session;)V
iput-object v1, v0, Lcom/facebook/AuthorizationClient;->c:Lcom/facebook/g;
iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
sget-object v1, Lcom/facebook/Session;->d:Landroid/content/Context;
iput-object v1, v0, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;
iput-object v2, v0, Lcom/facebook/AuthorizationClient;->b:Lcom/facebook/h;
iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->g()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
const/4 v0, 0x1
:goto_e7
if-nez v0, :cond_112
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_ec
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v2, Lcom/facebook/Session$4;->a:[I
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_126
sget-object v2, Lcom/facebook/SessionState;->f:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
new-instance v2, Lcom/facebook/FacebookException;
const-string v3, "Log in attempt failed: LoginActivity could not be started, and not legacy request"
invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->c:Lcom/facebook/AuthorizationClient$Result$Code;
const/4 v4, 0x0
invoke-direct {p0, v3, v4, v2}, Lcom/facebook/Session;->a(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-direct {p0, v0, v3, v2}, Lcom/facebook/Session;->a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
monitor-exit v1
:goto_112
:try_end_112
.catchall {:try_start_ec .. :try_end_112} :catchall_11b
:cond_112
return-void
:catchall_113
move-exception v0
monitor-exit p0
throw v0
:cond_116
const-string v0, "0"
goto :goto_ad
:try_start_119
:pswitch_119
monitor-exit v1
:try_end_11a
.catchall {:try_start_119 .. :try_end_11a} :catchall_11b
goto :goto_112
:catchall_11b
move-exception v0
monitor-exit v1
throw v0
:catch_11e
move-exception v1
goto/16 :goto_8d
:cond_121
move v0, v1
goto :goto_e7
:cond_123
move-object v0, v2
goto/16 :goto_1e
:pswitch_data_126
.packed-switch 0x6
:pswitch_119
:pswitch_119
.end packed-switch
.end method
.method private static a(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
.registers 9
const/4 v2, 0x1
const/4 v3, 0x0
if-eqz p0, :cond_e
invoke-virtual {p0}, Lcom/facebook/Session$AuthorizationRequest;->d()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/util/Collection;)Z
move-result v0
if-eqz v0, :cond_1e
:cond_e
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->b:Lcom/facebook/internal/SessionAuthorizationType;
invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_81
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Cannot request publish or manage authorization with no permissions."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
invoke-virtual {p0}, Lcom/facebook/Session$AuthorizationRequest;->d()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_26
:goto_26
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_81
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_67
const-string v1, "publish"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4c
const-string v1, "manage"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4c
sget-object v1, Lcom/facebook/Session;->e:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_67
:cond_4c
move v1, v2
:goto_4d
if-eqz v1, :cond_69
sget-object v1, Lcom/facebook/internal/SessionAuthorizationType;->a:Lcom/facebook/internal/SessionAuthorizationType;
invoke-virtual {v1, p1}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_26
new-instance v1, Lcom/facebook/FacebookException;
const-string v4, "Cannot pass a publish or manage permission (%s) to a request for read authorization"
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v3
invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v1
:cond_67
move v1, v3
goto :goto_4d
:cond_69
sget-object v1, Lcom/facebook/internal/SessionAuthorizationType;->b:Lcom/facebook/internal/SessionAuthorizationType;
invoke-virtual {v1, p1}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_26
sget-object v1, Lcom/facebook/Session;->a:Ljava/lang/String;
const-string v5, "Should not pass a read permission (%s) to a request for publish or manage authorization"
new-array v6, v2, [Ljava/lang/Object;
aput-object v0, v6, v3
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_26
:cond_81
return-void
.end method
.method private a(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
.registers 8
invoke-static {p1, p2}, Lcom/facebook/Session;->a(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
invoke-static {p1}, Lcom/facebook/Session;->b(Lcom/facebook/Session$AuthorizationRequest;)V
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_9
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
new-instance v3, Ljava/lang/UnsupportedOperationException;
const-string v4, "Session: an attempt was made to open a session that has a pending request."
invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/Session;->a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
monitor-exit v1
:cond_1c
:goto_1c
return-void
:cond_1d
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v0, Lcom/facebook/Session$4;->a:[I
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I
move-result v3
aget v0, v0, v3
packed-switch v0, :pswitch_data_88
:pswitch_2c
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Session: an attempt was made to open an already opened session."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_34
:try_end_34
.catchall {:try_start_9 .. :try_end_34} :catchall_34
move-exception v0
monitor-exit v1
throw v0
:try_start_37
:pswitch_37
sget-object v0, Lcom/facebook/SessionState;->c:Lcom/facebook/SessionState;
iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
if-nez p1, :cond_45
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v2, "openRequest cannot be null when opening a new Session"
invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_45
iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
:goto_47
if-eqz p1, :cond_50
invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->a()Lcom/facebook/ae;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/facebook/Session;->a(Lcom/facebook/ae;)V
:cond_50
const/4 v3, 0x0
invoke-direct {p0, v2, v0, v3}, Lcom/facebook/Session;->a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
monitor-exit v1
:try_end_55
.catchall {:try_start_37 .. :try_end_55} :catchall_34
sget-object v1, Lcom/facebook/SessionState;->c:Lcom/facebook/SessionState;
if-ne v0, v1, :cond_1c
invoke-direct {p0, p1}, Lcom/facebook/Session;->a(Lcom/facebook/Session$AuthorizationRequest;)V
goto :goto_1c
:pswitch_5d
if-eqz p1, :cond_79
:try_start_5f
invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->d()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/util/Collection;)Z
move-result v0
if-nez v0, :cond_79
invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->d()Ljava/util/List;
move-result-object v0
invoke-virtual {p0}, Lcom/facebook/Session;->f()Ljava/util/List;
move-result-object v3
invoke-static {v0, v3}, Lcom/facebook/internal/ai;->a(Ljava/util/Collection;Ljava/util/Collection;)Z
move-result v0
if-nez v0, :cond_79
iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
:cond_79
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
if-nez v0, :cond_82
sget-object v0, Lcom/facebook/SessionState;->d:Lcom/facebook/SessionState;
iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
goto :goto_47
:cond_82
sget-object v0, Lcom/facebook/SessionState;->c:Lcom/facebook/SessionState;
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
.method public static final a(Lcom/facebook/Session;)V
.registers 3
sget-object v1, Lcom/facebook/Session;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/Session;->c:Lcom/facebook/Session;
if-eq p0, v0, :cond_29
sget-object v0, Lcom/facebook/Session;->c:Lcom/facebook/Session;
if-eqz v0, :cond_e
invoke-direct {v0}, Lcom/facebook/Session;->o()V
:cond_e
sput-object p0, Lcom/facebook/Session;->c:Lcom/facebook/Session;
if-eqz v0, :cond_17
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-static {v0}, Lcom/facebook/Session;->a(Ljava/lang/String;)V
:cond_17
if-eqz p0, :cond_29
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-static {v0}, Lcom/facebook/Session;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/Session;->a()Z
move-result v0
if-eqz v0, :cond_29
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"
invoke-static {v0}, Lcom/facebook/Session;->a(Ljava/lang/String;)V
:cond_29
monitor-exit v1
:try_end_2a
.catchall {:try_start_3 .. :try_end_2a} :catchall_2b
return-void
:catchall_2b
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->a(ILcom/facebook/AuthorizationClient$Result;)V
return-void
.end method
.method public static final a(Lcom/facebook/Session;Landroid/os/Bundle;)V
.registers 5
if-eqz p1, :cond_29
if-eqz p0, :cond_29
const-string v0, "com.facebook.sdk.Session.saveSessionKey"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_29
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_11
new-instance v1, Ljava/io/ObjectOutputStream;
invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
:try_end_19
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_2a
const-string v1, "com.facebook.sdk.Session.saveSessionKey"
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
const-string v0, "com.facebook.sdk.Session.authBundleKey"
iget-object v1, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
:cond_29
return-void
:catch_2a
move-exception v0
new-instance v1, Lcom/facebook/FacebookException;
const-string v2, "Unable to save session."
invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method private a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 6
if-ne p1, p2, :cond_9
sget-object v0, Lcom/facebook/SessionState;->e:Lcom/facebook/SessionState;
if-eq p1, v0, :cond_9
if-nez p3, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p2}, Lcom/facebook/SessionState;->b()Z
move-result v0
if-eqz v0, :cond_19
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/AccessToken;->a(Ljava/util/List;)Lcom/facebook/AccessToken;
move-result-object v0
iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
:cond_19
new-instance v0, Lcom/facebook/Session$3;
invoke-direct {v0, p0, p2, p3}, Lcom/facebook/Session$3;-><init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
iget-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;
invoke-static {v1, v0}, Lcom/facebook/Session;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V
sget-object v0, Lcom/facebook/Session;->c:Lcom/facebook/Session;
if-ne p0, v0, :cond_8
invoke-virtual {p1}, Lcom/facebook/SessionState;->a()Z
move-result v0
invoke-virtual {p2}, Lcom/facebook/SessionState;->a()Z
move-result v1
if-eq v0, v1, :cond_8
invoke-virtual {p2}, Lcom/facebook/SessionState;->a()Z
move-result v0
if-eqz v0, :cond_3d
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"
invoke-static {v0}, Lcom/facebook/Session;->a(Ljava/lang/String;)V
goto :goto_8
:cond_3d
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"
invoke-static {v0}, Lcom/facebook/Session;->a(Ljava/lang/String;)V
goto :goto_8
.end method
.method private static a(Ljava/lang/String;)V
.registers 3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/facebook/Session;->d:Landroid/content/Context;
invoke-static {v1}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/content/n;->a(Landroid/content/Intent;)Z
return-void
.end method
.method private a(Ljava/util/List;)V
.registers 6
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;
invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_19
goto :goto_7
:catchall_19
move-exception v0
monitor-exit v1
throw v0
:cond_1c
:try_start_1c
monitor-exit v1
:try_end_1d
.catchall {:try_start_1c .. :try_end_1d} :catchall_19
return-void
.end method
.method private static a(Landroid/content/Intent;)Z
.registers 3
const/4 v0, 0x0
sget-object v1, Lcom/facebook/Session;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v1
if-nez v1, :cond_e
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
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
.method static synthetic b(Lcom/facebook/Session;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
return-object v0
.end method
.method private static b(Landroid/content/Context;)V
.registers 2
if-eqz p0, :cond_f
sget-object v0, Lcom/facebook/Session;->d:Landroid/content/Context;
if-nez v0, :cond_f
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_d
move-object p0, v0
:cond_d
sput-object p0, Lcom/facebook/Session;->d:Landroid/content/Context;
:cond_f
return-void
.end method
.method private static b(Landroid/os/Handler;Ljava/lang/Runnable;)V
.registers 3
if-eqz p0, :cond_6
invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_5
return-void
:cond_6
invoke-static {}, Lcom/facebook/ah;->b()Ljava/util/concurrent/Executor;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
goto :goto_5
.end method
.method private static b(Lcom/facebook/Session$AuthorizationRequest;)V
.registers 6
if-eqz p0, :cond_39
invoke-static {p0}, Lcom/facebook/Session$AuthorizationRequest;->b(Lcom/facebook/Session$AuthorizationRequest;)Z
move-result v0
if-nez v0, :cond_39
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
sget-object v1, Lcom/facebook/Session;->d:Landroid/content/Context;
const-class v2, Lcom/facebook/LoginActivity;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
invoke-static {v0}, Lcom/facebook/Session;->a(Landroid/content/Intent;)Z
move-result v0
if-nez v0, :cond_39
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/facebook/Session$AuthorizationRequest;->b()Lcom/facebook/SessionLoginBehavior;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Lcom/facebook/LoginActivity;
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_39
return-void
.end method
.method static synthetic c(Lcom/facebook/Session;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;
return-object v0
.end method
.method private static c(Lcom/facebook/Session$AuthorizationRequest;)Z
.registers 5
const/4 v0, 0x0
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
sget-object v2, Lcom/facebook/Session;->d:Landroid/content/Context;
const-class v3, Lcom/facebook/LoginActivity;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/facebook/Session$AuthorizationRequest;->b()Lcom/facebook/SessionLoginBehavior;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/facebook/Session$AuthorizationRequest;->g()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
move-result-object v2
invoke-static {v2}, Lcom/facebook/LoginActivity;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
invoke-static {v1}, Lcom/facebook/Session;->a(Landroid/content/Intent;)Z
move-result v2
if-nez v2, :cond_2a
:goto_29
return v0
:try_start_2a
:cond_2a
invoke-virtual {p0}, Lcom/facebook/Session$AuthorizationRequest;->e()Lcom/facebook/ad;
move-result-object v2
invoke-virtual {p0}, Lcom/facebook/Session$AuthorizationRequest;->c()I
move-result v3
invoke-interface {v2, v1, v3}, Lcom/facebook/ad;->a(Landroid/content/Intent;I)V
:try_end_35
.catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_35} :catch_37
const/4 v0, 0x1
goto :goto_29
:catch_37
move-exception v1
goto :goto_29
.end method
.method static synthetic d(Lcom/facebook/Session;)Lcom/facebook/af;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/af;
return-object v0
.end method
.method static synthetic e(Lcom/facebook/Session;)Lcom/facebook/af;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/af;
return-object v0
.end method
.method static synthetic f(Lcom/facebook/Session;)Lcom/facebook/ab;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/ab;
return-object v0
.end method
.method public static final h()Lcom/facebook/Session;
.registers 2
sget-object v1, Lcom/facebook/Session;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/Session;->c:Lcom/facebook/Session;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method static i()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/facebook/Session;->d:Landroid/content/Context;
return-object v0
.end method
.method static synthetic m()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/facebook/Session;->d:Landroid/content/Context;
return-object v0
.end method
.method private n()Ljava/util/Date;
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
invoke-virtual {v0}, Lcom/facebook/AccessToken;->b()Ljava/util/Date;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_11
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method private o()V
.registers 6
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v2, Lcom/facebook/Session$4;->a:[I
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_34
:goto_12
monitor-exit v1
return-void
:pswitch_14
sget-object v2, Lcom/facebook/SessionState;->f:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
new-instance v3, Lcom/facebook/FacebookException;
const-string v4, "Log in attempt aborted."
invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/Session;->a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:try_end_24
.catchall {:try_start_3 .. :try_end_24} :catchall_25
goto :goto_12
:catchall_25
move-exception v0
monitor-exit v1
throw v0
:pswitch_28
:try_start_28
sget-object v2, Lcom/facebook/SessionState;->g:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
const/4 v3, 0x0
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/Session;->a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
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
.method private p()Lcom/facebook/AppEventsLogger;
.registers 4
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;
if-nez v0, :cond_11
sget-object v0, Lcom/facebook/Session;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
invoke-static {v0, v2}, Lcom/facebook/AppEventsLogger;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;
move-result-object v0
iput-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;
:cond_11
iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_15
return-object v0
:catchall_15
move-exception v0
monitor-exit v1
throw v0
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 4
new-instance v0, Ljava/io/InvalidObjectException;
const-string v1, "Cannot readObject, serialization proxy required"
invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private writeReplace()Ljava/lang/Object;
.registers 8
new-instance v0, Lcom/facebook/Session$SerializationProxyV2;
iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
iget-object v6, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;
invoke-direct/range {v0 .. v6}, Lcom/facebook/Session$SerializationProxyV2;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;Lcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
return-object v0
.end method
.method final a(Landroid/os/Bundle;)V
.registers 6
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
sget-object v2, Lcom/facebook/Session$4;->a:[I
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_50
sget-object v0, Lcom/facebook/Session;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "refreshToken ignored in state "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
monitor-exit v1
:goto_29
return-void
:pswitch_2a
sget-object v2, Lcom/facebook/SessionState;->e:Lcom/facebook/SessionState;
iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
const/4 v3, 0x0
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/Session;->a(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:pswitch_34
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-static {v0, p1}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
move-result-object v0
iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v2}, Lcom/facebook/AccessToken;->f()Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/facebook/aj;->a(Landroid/os/Bundle;)V
:cond_4b
monitor-exit v1
:try_end_4c
.catchall {:try_start_3 .. :try_end_4c} :catchall_4d
goto :goto_29
:catchall_4d
move-exception v0
monitor-exit v1
throw v0
:pswitch_data_50
.packed-switch 0x4
:pswitch_2a
:pswitch_34
.end packed-switch
.end method
.method public final a(Lcom/facebook/Session$NewPermissionsRequest;)V
.registers 5
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->b:Lcom/facebook/internal/SessionAuthorizationType;
invoke-static {p1, v0}, Lcom/facebook/Session;->a(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
invoke-static {p1}, Lcom/facebook/Session;->b(Lcom/facebook/Session$AuthorizationRequest;)V
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
if-eqz v0, :cond_1a
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Session: an attempt was made to request new permissions for a session that has a pending request."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_17
:try_end_17
.catchall {:try_start_b .. :try_end_17} :catchall_17
move-exception v0
monitor-exit v1
throw v0
:try_start_1a
:cond_1a
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/SessionState;->a()Z
move-result v0
if-eqz v0, :cond_37
iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
monitor-exit v1
:try_end_25
.catchall {:try_start_1a .. :try_end_25} :catchall_17
invoke-virtual {p0}, Lcom/facebook/Session;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->b(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/facebook/Session$NewPermissionsRequest;->a()Lcom/facebook/ae;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/Session;->a(Lcom/facebook/ae;)V
invoke-direct {p0, p1}, Lcom/facebook/Session;->a(Lcom/facebook/Session$AuthorizationRequest;)V
return-void
:cond_37
:try_start_37
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/SessionState;->b()Z
move-result v0
if-eqz v0, :cond_47
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Session: an attempt was made to request new permissions for a session that has been closed."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_47
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Session: an attempt was made to request new permissions for a session that is not currently open."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_4f
.catchall {:try_start_37 .. :try_end_4f} :catchall_17
.end method
.method public final a(Lcom/facebook/Session$OpenRequest;)V
.registers 3
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->a:Lcom/facebook/internal/SessionAuthorizationType;
invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->a(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
return-void
.end method
.method public final a(Lcom/facebook/ae;)V
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
:try_end_13
.catchall {:try_start_5 .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method final a(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
return-void
.end method
.method public final a()Z
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/SessionState;->a()Z
move-result v0
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)Z
.registers 11
const/4 v3, 0x0
const/4 v1, 0x1
const-string v0, "currentActivity"
invoke-static {p1, v0}, Lcom/facebook/internal/ak;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p1}, Lcom/facebook/Session;->b(Landroid/content/Context;)V
iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v2
:try_start_d
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/Session$AuthorizationRequest;->c()I
move-result v0
if-eq p2, v0, :cond_1c
:cond_19
const/4 v0, 0x0
monitor-exit v2
:try_end_1b
.catchall {:try_start_d .. :try_end_1b} :catchall_30
:goto_1b
return v0
:cond_1c
monitor-exit v2
sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->c:Lcom/facebook/AuthorizationClient$Result$Code;
if-eqz p4, :cond_50
const-string v0, "com.facebook.LoginActivity:Result"
invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/AuthorizationClient$Result;
if-eqz v0, :cond_33
invoke-direct {p0, p3, v0}, Lcom/facebook/Session;->a(ILcom/facebook/AuthorizationClient$Result;)V
move v0, v1
goto :goto_1b
:catchall_30
move-exception v0
monitor-exit v2
throw v0
:cond_33
iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;
invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/AuthorizationClient;->a(IILandroid/content/Intent;)Z
move v0, v1
goto :goto_1b
:cond_3e
move-object v0, v3
:goto_3f
if-nez v0, :cond_48
new-instance v0, Lcom/facebook/FacebookException;
const-string v4, "Unexpected call to Session.onActivityResult"
invoke-direct {v0, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
:cond_48
invoke-direct {p0, v2, v3, v0}, Lcom/facebook/Session;->a(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
invoke-direct {p0, v3, v0}, Lcom/facebook/Session;->a(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
move v0, v1
goto :goto_1b
:cond_50
if-nez p3, :cond_5f
new-instance v2, Lcom/facebook/FacebookOperationCanceledException;
const-string v0, "User canceled operation."
invoke-direct {v2, v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V
sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->b:Lcom/facebook/AuthorizationClient$Result$Code;
move-object v5, v0
move-object v0, v2
move-object v2, v5
goto :goto_3f
:cond_5f
move-object v0, v3
goto :goto_3f
.end method
.method public final b(Lcom/facebook/Session$OpenRequest;)V
.registers 3
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->b:Lcom/facebook/internal/SessionAuthorizationType;
invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->a(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
return-void
.end method
.method public final b(Lcom/facebook/ae;)V
.registers 4
iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()Z
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/SessionState;->b()Z
move-result v0
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()Lcom/facebook/SessionState;
.registers 3
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
return-object v0
.end method
.method public final e()Ljava/lang/String;
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
invoke-virtual {v0}, Lcom/facebook/AccessToken;->a()Ljava/lang/String;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_11
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/facebook/Session;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Lcom/facebook/Session;
iget-object v1, p1, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/facebook/Session;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p1, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
iget-object v2, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
invoke-static {v1, v2}, Lcom/facebook/Session;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p1, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-static {v1, v2}, Lcom/facebook/Session;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
invoke-direct {p1}, Lcom/facebook/Session;->n()Ljava/util/Date;
move-result-object v1
invoke-direct {p0}, Lcom/facebook/Session;->n()Ljava/util/Date;
move-result-object v2
invoke-static {v1, v2}, Lcom/facebook/Session;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public final f()Ljava/util/List;
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
invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/util/List;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_11
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final g()V
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/aj;
invoke-virtual {v0}, Lcom/facebook/aj;->b()V
:cond_9
sget-object v0, Lcom/facebook/Session;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/internal/ai;->b(Landroid/content/Context;)V
sget-object v0, Lcom/facebook/Session;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/internal/ai;->c(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/facebook/Session;->o()V
return-void
.end method
.method public hashCode()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method final j()V
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;
monitor-enter v1
:try_start_4
iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/af;
if-nez v2, :cond_f
new-instance v0, Lcom/facebook/af;
invoke-direct {v0, p0}, Lcom/facebook/af;-><init>(Lcom/facebook/Session;)V
iput-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/af;
:cond_f
monitor-exit v1
:try_end_10
.catchall {:try_start_4 .. :try_end_10} :catchall_16
if-eqz v0, :cond_15
invoke-virtual {v0}, Lcom/facebook/af;->a()V
:cond_15
return-void
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method final k()Z
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/af;
if-eqz v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v2}, Lcom/facebook/SessionState;->a()Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v2}, Lcom/facebook/AccessToken;->d()Lcom/facebook/AccessTokenSource;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/AccessTokenSource;->a()Z
move-result v2
if-eqz v2, :cond_5
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v2
iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;
invoke-virtual {v4}, Ljava/util/Date;->getTime()J
move-result-wide v4
sub-long/2addr v2, v4
const-wide/32 v4, 0x36ee80
cmp-long v2, v2, v4
if-lez v2, :cond_5
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v1
iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
invoke-virtual {v3}, Lcom/facebook/AccessToken;->e()Ljava/util/Date;
move-result-object v3
invoke-virtual {v3}, Ljava/util/Date;->getTime()J
move-result-wide v3
sub-long/2addr v1, v3
const-wide/32 v3, 0x5265c00
cmp-long v1, v1, v3
if-lez v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method final l()Lcom/facebook/AccessToken;
.registers 2
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "{Session state:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", token:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
if-nez v0, :cond_38
const-string v0, "null"
:goto_19
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", appId:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
if-nez v0, :cond_3b
const-string v0, "null"
:goto_29
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_38
iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;
goto :goto_19
:cond_3b
iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;
goto :goto_29
.end method