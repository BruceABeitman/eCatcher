.class public final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"
.implements Ljava/io/Serializable;
.field static final synthetic $assertionsDisabled:Z = false
.field static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"
.field private static final ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date; = null
.field private static final DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource; = null
.field private static final DEFAULT_EXPIRATION_TIME:Ljava/util/Date; = null
.field private static final DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date; = null
.field static final EXPIRES_IN_KEY:Ljava/lang/String; = "expires_in"
.field private static final MAX_DATE:Ljava/util/Date; = null
.field private static final MIN_DATE:Ljava/util/Date; = null
.field private static final serialVersionUID:J = 0x1L
.field private final expires:Ljava/util/Date;
.field private final lastRefresh:Ljava/util/Date;
.field private final permissions:Ljava/util/List;
.field private final source:Lcom/facebook/AccessTokenSource;
.field private final token:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/facebook/AccessToken;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_34
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/AccessToken;->$assertionsDisabled:Z
new-instance v0, Ljava/util/Date;
const-wide/high16 v1, -0x8000
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
sput-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;
new-instance v0, Ljava/util/Date;
const-wide v1, 0x7fffffffffffffffL
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
sput-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;
sget-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;
sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;
sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;
sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;
sget-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;
sput-object v0, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;
return-void
:cond_34
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p3, :cond_9
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object p3
:cond_9
iput-object p2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;
invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;
iput-object p1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
iput-object p5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;
return-void
.end method
.method private appendPermissions(Ljava/lang/StringBuilder;)V
.registers 4
const-string v0, " permissions:"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;
if-nez v0, :cond_f
const-string v0, "null"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_e
return-void
:cond_f
const-string v0, "["
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, ", "
iget-object v1, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;
invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "]"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_e
.end method
.method static createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;
.registers 7
new-instance v0, Lcom/facebook/AccessToken;
const-string v1, ""
sget-object v2, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;
sget-object v4, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;
sget-object v5, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;
move-object v3, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
return-object v0
.end method
.method private static createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)Lcom/facebook/AccessToken;
.registers 10
const-string v0, "access_token"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, "expires_in"
invoke-static {p1, v0, p3}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v2
invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_14
if-nez v2, :cond_16
:cond_14
const/4 v0, 0x0
:goto_15
return-object v0
:cond_16
new-instance v0, Lcom/facebook/AccessToken;
new-instance v5, Ljava/util/Date;
invoke-direct {v5}, Ljava/util/Date;-><init>()V
move-object v3, p0
move-object v4, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
goto :goto_15
.end method
.method static createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
.registers 8
const-string v0, "com.facebook.TokenCachingStrategy.Permissions"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v6
if-nez v6, :cond_28
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v3
:goto_c
new-instance v0, Lcom/facebook/AccessToken;
const-string v1, "com.facebook.TokenCachingStrategy.Token"
invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-static {p0, v2}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v2
invoke-static {p0}, Lcom/facebook/TokenCachingStrategy;->getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;
move-result-object v4
const-string v5, "com.facebook.TokenCachingStrategy.LastRefreshDate"
invoke-static {p0, v5}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v5
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
return-object v0
:cond_28
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v3
goto :goto_c
.end method
.method public static createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;
.registers 11
if-nez p1, :cond_4
sget-object p1, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;
:cond_4
if-nez p2, :cond_8
sget-object p2, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;
:cond_8
if-nez p3, :cond_c
sget-object p3, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;
:cond_c
new-instance v0, Lcom/facebook/AccessToken;
move-object v1, p0
move-object v2, p1
move-object v3, p4
move-object v4, p3
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
return-object v0
.end method
.method public static createFromNativeLinkingIntent(Landroid/content/Intent;)Lcom/facebook/AccessToken;
.registers 5
const/4 v0, 0x0
const-string v1, "intent"
invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
if-nez v1, :cond_d
:goto_c
return-object v0
:cond_d
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
sget-object v2, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
invoke-static {v0, v1, v2, v3}, Lcom/facebook/AccessToken;->createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)Lcom/facebook/AccessToken;
move-result-object v0
goto :goto_c
.end method
.method static createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
.registers 9
const-string v3, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"
new-instance v4, Ljava/util/Date;
const-wide/16 v5, 0x0
invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V
invoke-static {p0, v3, v4}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
const-string v3, "com.facebook.platform.extra.PERMISSIONS"
invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
const-string v3, "com.facebook.platform.extra.ACCESS_TOKEN"
invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0, p1}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
move-result-object v3
return-object v3
.end method
.method static createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
.registers 8
sget-boolean v2, Lcom/facebook/AccessToken;->$assertionsDisabled:Z
if-nez v2, :cond_1c
iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
sget-object v3, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;
if-eq v2, v3, :cond_1c
iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
sget-object v3, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;
if-eq v2, v3, :cond_1c
iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
sget-object v3, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;
if-eq v2, v3, :cond_1c
new-instance v2, Ljava/lang/AssertionError;
invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V
throw v2
:cond_1c
const-string v2, "expires_in"
new-instance v3, Ljava/util/Date;
const-wide/16 v4, 0x0
invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
invoke-static {p1, v2, v3}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
const-string v2, "access_token"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;
move-result-object v2
iget-object v3, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
invoke-static {v2, v1, v0, v3}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
move-result-object v2
return-object v2
.end method
.method static createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
.registers 9
new-instance v0, Lcom/facebook/AccessToken;
sget-object v2, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;
sget-object v5, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;
move-object v1, p0
move-object v3, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
return-object v0
.end method
.method static createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;)Lcom/facebook/AccessToken;
.registers 8
new-instance v0, Lcom/facebook/AccessToken;
iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;
iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
return-object v0
.end method
.method static createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
.registers 7
const-string v2, "expires_in"
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
invoke-static {p1, v2, v3}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
const-string v2, "access_token"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v1, v0, p2}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
move-result-object v2
return-object v2
.end method
.method private static createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
.registers 10
invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8
if-nez p2, :cond_d
:cond_8
invoke-static {p0}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;
move-result-object v0
:goto_c
return-object v0
:cond_d
new-instance v0, Lcom/facebook/AccessToken;
new-instance v5, Ljava/util/Date;
invoke-direct {v5}, Ljava/util/Date;-><init>()V
move-object v1, p1
move-object v2, p2
move-object v3, p0
move-object v4, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
goto :goto_c
.end method
.method private static getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
.registers 12
const/4 v4, 0x0
if-nez p0, :cond_4
:goto_3
:cond_3
return-object v4
:cond_4
const-wide/high16 v1, -0x8000
invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
instance-of v5, v3, Ljava/lang/Long;
if-eqz v5, :cond_25
check-cast v3, Ljava/lang/Long;
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v1
:goto_14
const-wide/16 v4, 0x0
cmp-long v4, v1, v4
if-nez v4, :cond_32
new-instance v4, Ljava/util/Date;
const-wide v5, 0x7fffffffffffffffL
invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V
goto :goto_3
:cond_25
instance-of v5, v3, Ljava/lang/String;
if-eqz v5, :cond_3
:try_start_29
check-cast v3, Ljava/lang/String;
invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_2e
.catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2e} :catch_30
move-result-wide v1
goto :goto_14
:catch_30
move-exception v0
goto :goto_3
:cond_32
new-instance v4, Ljava/util/Date;
invoke-virtual {p2}, Ljava/util/Date;->getTime()J
move-result-wide v5
const-wide/16 v7, 0x3e8
mul-long/2addr v7, v1
add-long/2addr v5, v7
invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V
goto :goto_3
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 4
new-instance v0, Ljava/io/InvalidObjectException;
const-string v1, "Cannot readObject, serialization proxy required"
invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private tokenToString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;
if-nez v0, :cond_7
const-string v0, "null"
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;
invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;
goto :goto_6
:cond_12
const-string v0, "ACCESS_TOKEN_REMOVED"
goto :goto_6
.end method
.method private writeReplace()Ljava/lang/Object;
.registers 8
new-instance v0, Lcom/facebook/AccessToken$SerializationProxyV1;
iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;
iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;
iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;
const/4 v6, 0x0
invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Lcom/facebook/AccessToken$1;)V
return-object v0
.end method
.method public getExpires()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;
return-object v0
.end method
.method public getLastRefresh()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;
return-object v0
.end method
.method public getPermissions()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;
return-object v0
.end method
.method public getSource()Lcom/facebook/AccessTokenSource;
.registers 2
iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
return-object v0
.end method
.method public getToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;
return-object v0
.end method
.method  isInvalid()Z
.registers 3
iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;
invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_15
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
iget-object v1, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;
invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_17
:cond_15
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method  toCacheBundle()Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "com.facebook.TokenCachingStrategy.Token"
iget-object v2, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"
iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;
invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
const-string v1, "com.facebook.TokenCachingStrategy.Permissions"
new-instance v2, Ljava/util/ArrayList;
iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v1, "com.facebook.TokenCachingStrategy.AccessTokenSource"
iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, "com.facebook.TokenCachingStrategy.LastRefreshDate"
iget-object v2, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;
invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "{AccessToken"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " token:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/facebook/AccessToken;->tokenToString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-direct {p0, v0}, Lcom/facebook/AccessToken;->appendPermissions(Ljava/lang/StringBuilder;)V
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method