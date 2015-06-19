.class public Lco/vine/android/client/VineAPI;
.super Ljava/lang/Object;
.source "VineAPI.java"
.field public static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"
.field private static ENCODER:Lcom/google/gdata/util/common/base/PercentEscaper; = null
.field public static final ERROR_VERIFICATION_REQURED:I = 0x268
.field public static final GLOBAL_SIZE:I = 0x14
.field public static final HOST_VINE:Ljava/lang/String; = "vine.co"
.field public static final PATH_SEPARATOR:C = '/'
.field public static final RESOURCE_ACCEPT_OUT_OF_NETWORK_CONVERSATIONS:Ljava/lang/String; = "acceptsOutOfNetworkConversations"
.field public static final RESOURCE_ACTIVITY_COUNTS:Ljava/lang/String; = "activityCounts"
.field public static final RESOURCE_AUTHENTICATE:Ljava/lang/String; = "authenticate"
.field public static final RESOURCE_BLOCKED:Ljava/lang/String; = "blocked"
.field public static final RESOURCE_CHANNELS:Ljava/lang/String; = "channels"
.field public static final RESOURCE_CLIENT_FLAGS:Ljava/lang/String; = "clientflags"
.field public static final RESOURCE_CLIENT_PROFILE:Ljava/lang/String; = "clientprofiles"
.field public static final RESOURCE_COMMENTS:Ljava/lang/String; = "comments"
.field public static final RESOURCE_COMPLAINTS:Ljava/lang/String; = "complaints"
.field public static final RESOURCE_CONTACTS:Ljava/lang/String; = "contacts"
.field public static final RESOURCE_CONVERSATIONS:Ljava/lang/String; = "conversations"
.field public static final RESOURCE_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"
.field public static final RESOURCE_EDITION:Ljava/lang/String; = "edition"
.field public static final RESOURCE_EDITIONS:Ljava/lang/String; = "editions"
.field public static final RESOURCE_EXPLICIT:Ljava/lang/String; = "explicit"
.field public static final RESOURCE_FAVORITES:Ljava/lang/String; = "favorites"
.field public static final RESOURCE_FEATURED:Ljava/lang/String; = "featured"
.field public static final RESOURCE_FOLLOWERS:Ljava/lang/String; = "followers"
.field public static final RESOURCE_FOLLOWING:Ljava/lang/String; = "following"
.field public static final RESOURCE_FOLLOW_REQUESTS:Ljava/lang/String; = "followRequests"
.field public static final RESOURCE_FRIENDS:Ljava/lang/String; = "friends"
.field public static final RESOURCE_GRAPH:Ljava/lang/String; = "graph"
.field public static final RESOURCE_GROUPED:Ljava/lang/String; = "grouped"
.field public static final RESOURCE_IGNORED:Ljava/lang/String; = "ignored"
.field public static final RESOURCE_LIKES:Ljava/lang/String; = "likes"
.field public static final RESOURCE_LOOPS:Ljava/lang/String; = "loops"
.field public static final RESOURCE_ME:Ljava/lang/String; = "me"
.field public static final RESOURCE_MESSAGES:Ljava/lang/String; = "messages"
.field public static final RESOURCE_NOTIFICATIONS:Ljava/lang/String; = "notifications"
.field public static final RESOURCE_OUT_OF_NETWORK:Ljava/lang/String; = "outOfNetwork"
.field public static final RESOURCE_POPULAR_NOW:Ljava/lang/String; = "popular"
.field public static final RESOURCE_POSTS:Ljava/lang/String; = "posts"
.field public static final RESOURCE_PREFERENCES:Ljava/lang/String; = "preferences"
.field public static final RESOURCE_PROFILES:Ljava/lang/String; = "profiles"
.field public static final RESOURCE_PROFILE_BACKGROUND:Ljava/lang/String; = "profileBackground"
.field public static final RESOURCE_REACTIVATE:Ljava/lang/String; = "reactivate"
.field public static final RESOURCE_REPOST:Ljava/lang/String; = "repost"
.field public static final RESOURCE_REPOSTS:Ljava/lang/String; = "reposts"
.field public static final RESOURCE_REQUESTS:Ljava/lang/String; = "requests"
.field public static final RESOURCE_SEARCH:Ljava/lang/String; = "search"
.field public static final RESOURCE_SETTINGS:Ljava/lang/String; = "settings"
.field public static final RESOURCE_SHARE:Ljava/lang/String; = "share"
.field public static final RESOURCE_SHARED:Ljava/lang/String; = "s"
.field public static final RESOURCE_SUGGESTED:Ljava/lang/String; = "suggested"
.field public static final RESOURCE_TAGS:Ljava/lang/String; = "tags"
.field public static final RESOURCE_TIMELINES:Ljava/lang/String; = "timelines"
.field public static final RESOURCE_TRENDING:Ljava/lang/String; = "trending"
.field public static final RESOURCE_TWITTER:Ljava/lang/String; = "twitter"
.field public static final RESOURCE_USERS:Ljava/lang/String; = "users"
.field public static final RESOURCE_VANITY:Ljava/lang/String; = "vanity"
.field public static final RESOURCE_VERIFY_EMAIL:Ljava/lang/String; = "verifyEmail"
.field public static final RESOURCE_VERIFY_PHONE_NUMBER:Ljava/lang/String; = "verifyPhoneNumber"
.field public static final RESOURCE_VIEWED:Ljava/lang/String; = "viewed"
.field public static final SCHEME_HTTP:Ljava/lang/String; = "http://"
.field public static final SCHEME_HTTPS:Ljava/lang/String; = "https://"
.field public static final SECRET_AUTH_HEADER:Ljava/lang/String; = "X-Vine-Auth"
.field public static final X_VINE_CLIENT:Ljava/lang/String; = "X-Vine-Client"
.field private static mApi:Lco/vine/android/client/VineAPI;
.field private mAccountName:Ljava/lang/String;
.field private mAmazonUrl:Ljava/lang/String;
.field private mBaseUrl:Ljava/lang/String;
.field private mConfigUrl:Ljava/lang/String;
.field private final mContext:Landroid/content/Context;
.field private mExploreUrl:Ljava/lang/String;
.field private mLocale:Ljava/lang/String;
.field private mMediaUrl:Ljava/lang/String;
.field private mRtcUrl:Ljava/lang/String;
.field private mSession:Lco/vine/android/client/Session;
.field private mTwitterUrl:Ljava/lang/String;
.field private mXVineClientHeader:Ljava/lang/String;
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
.registers 7
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/client/VineAPI;->mContext:Landroid/content/Context;
invoke-virtual {p0, v3, p2}, Lco/vine/android/client/VineAPI;->refreshHostUrls(Lco/vine/android/api/VineClientFlags;Landroid/content/res/Resources;)V
invoke-virtual {p0}, Lco/vine/android/client/VineAPI;->refreshLocale()V
const-string v1, "2.1.2"
const-string v2, "2.1.2"
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_43
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v2
if-eqz v2, :cond_40
const-string v0, "-gb"
:goto_1e
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "android"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "2.1.2"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;
:goto_3f
return-void
:cond_40
const-string v0, ""
goto :goto_1e
:cond_43
iput-object v3, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;
goto :goto_3f
.end method
.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;[JII)I
.registers 9
if-eqz p2, :cond_28
array-length v2, p2
if-ge p3, v2, :cond_28
if-lez p4, :cond_28
invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int v2, p3, p4
array-length v3, p2
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v0
move v1, p3
:goto_12
if-ge v1, v0, :cond_25
aget-wide v2, p2, v1
invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
add-int/lit8 v2, v0, -0x1
if-ge v1, v2, :cond_22
const/16 v2, 0x2c
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_22
add-int/lit8 v1, v1, 0x1
goto :goto_12
:cond_25
sub-int v2, v0, p3
:goto_27
return v2
:cond_28
const/4 v2, 0x0
goto :goto_27
.end method
.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;D)V
.registers 5
invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
return-void
.end method
.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
.registers 4
invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
return-void
.end method
.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
.registers 5
invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
return-void
.end method
.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Lco/vine/android/client/VineAPI;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
.registers 4
invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
return-void
.end method
.method public static varargs buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
.registers 8
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-eqz p1, :cond_19
move-object v0, p1
array-length v2, v0
const/4 v1, 0x0
:goto_a
if-ge v1, v2, :cond_19
aget-object v3, v0, v1
const/16 v5, 0x2f
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_a
:cond_19
return-object v4
.end method
.method public static encode(Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_5
const-string v0, ""
:goto_4
return-object v0
:cond_5
sget-object v0, Lco/vine/android/client/VineAPI;->ENCODER:Lcom/google/gdata/util/common/base/PercentEscaper;
if-nez v0, :cond_13
new-instance v0, Lcom/google/gdata/util/common/base/PercentEscaper;
const-string v1, "-._~"
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V
sput-object v0, Lco/vine/android/client/VineAPI;->ENCODER:Lcom/google/gdata/util/common/base/PercentEscaper;
:cond_13
sget-object v0, Lco/vine/android/client/VineAPI;->ENCODER:Lcom/google/gdata/util/common/base/PercentEscaper;
invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method public static getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
.registers 4
sget-object v1, Lco/vine/android/client/VineAPI;->mApi:Lco/vine/android/client/VineAPI;
if-nez v1, :cond_27
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-nez v0, :cond_12
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
:cond_12
if-nez v0, :cond_1c
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Context does not have resources attached."
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1c
new-instance v1, Lco/vine/android/client/VineAPI;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2, v0}, Lco/vine/android/client/VineAPI;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V
sput-object v1, Lco/vine/android/client/VineAPI;->mApi:Lco/vine/android/client/VineAPI;
:cond_27
sget-object v1, Lco/vine/android/client/VineAPI;->mApi:Lco/vine/android/client/VineAPI;
return-object v1
.end method
.method private getSessionKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mContext:Landroid/content/Context;
invoke-static {v0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
.registers 4
const-string v0, "?"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_19
const/16 v0, 0x3f
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_e
invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x3d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
return-object v0
:cond_19
const/16 v0, 0x26
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_e
.end method
.method public addClientHeaders(Lorg/apache/http/HttpRequest;)V
.registers 5
iget-object v1, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v1, "X-Vine-Client"
iget-object v2, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;
invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lco/vine/android/util/Util;->getLocale()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1f
const-string v1, "Accept-Language"
invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_1f
invoke-static {}, Lco/vine/android/util/BuildUtil;->isProduction()Z
move-result v1
if-nez v1, :cond_8
const-string v1, "X-Vine-Auth"
invoke-virtual {p0}, Lco/vine/android/client/VineAPI;->getAuthHeaderSecret()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
.end method
.method public addContentTypeHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V
.registers 5
invoke-virtual {p1}, Lco/vine/android/network/HttpOperation;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
move-result-object v0
const-string v1, "content-type"
invoke-interface {v0, v1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V
.registers 5
invoke-virtual {p1}, Lco/vine/android/network/HttpOperation;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
move-result-object v0
const-string v1, "vine-session-id"
invoke-direct {p0}, Lco/vine/android/client/VineAPI;->getSessionKey()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V
.registers 5
invoke-virtual {p1}, Lco/vine/android/network/HttpOperation;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
move-result-object v0
const-string v1, "vine-session-id"
invoke-interface {v0, v1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public varargs buildUrl([Ljava/lang/Object;)Ljava/lang/StringBuilder;
.registers 3
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mBaseUrl:Ljava/lang/String;
invoke-static {v0, p1}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
return-object v0
.end method
.method public getAmazonUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mAmazonUrl:Ljava/lang/String;
return-object v0
.end method
.method public getAuthHeaderSecret()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e004f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getBaseUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mBaseUrl:Ljava/lang/String;
return-object v0
.end method
.method public getConfigUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mConfigUrl:Ljava/lang/String;
return-object v0
.end method
.method public getExploreUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mExploreUrl:Ljava/lang/String;
return-object v0
.end method
.method public getMediaUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mMediaUrl:Ljava/lang/String;
return-object v0
.end method
.method public getRtcUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mRtcUrl:Ljava/lang/String;
return-object v0
.end method
.method public getTwitterUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mTwitterUrl:Ljava/lang/String;
return-object v0
.end method
.method public getVineClientHeader()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;
return-object v0
.end method
.method public refreshHostUrls(Lco/vine/android/api/VineClientFlags;Landroid/content/res/Resources;)V
.registers 11
const/4 v7, 0x0
iget-object v0, p0, Lco/vine/android/client/VineAPI;->mContext:Landroid/content/Context;
if-nez p2, :cond_b
iget-object v6, p0, Lco/vine/android/client/VineAPI;->mContext:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object p2
:cond_b
if-nez p1, :cond_f3
invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
const-string v6, "client_flags_api_host"
invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v6, "client_flags_rtc_host"
invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v6, "client_flags_media_host"
invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v6, "client_flags_explore_host"
invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:goto_29
if-eqz v2, :cond_fd
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "https://"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
:goto_3e
iput-object v6, p0, Lco/vine/android/client/VineAPI;->mBaseUrl:Ljava/lang/String;
const v6, 0x7f0e004b
invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lco/vine/android/client/VineAPI;->mAmazonUrl:Ljava/lang/String;
const v6, 0x7f0e0251
invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lco/vine/android/client/VineAPI;->mTwitterUrl:Ljava/lang/String;
if-eqz v5, :cond_103
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "https://"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
:goto_67
iput-object v6, p0, Lco/vine/android/client/VineAPI;->mRtcUrl:Ljava/lang/String;
if-eqz v4, :cond_109
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "https://"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
:goto_7e
iput-object v6, p0, Lco/vine/android/client/VineAPI;->mMediaUrl:Ljava/lang/String;
if-eqz v3, :cond_10f
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "http://"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
:goto_95
iput-object v6, p0, Lco/vine/android/client/VineAPI;->mExploreUrl:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Lco/vine/android/client/VineAPI;->mExploreUrl:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {p2}, Lco/vine/android/util/BuildUtil;->getExplorePath(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lco/vine/android/client/VineAPI;->mExploreUrl:Ljava/lang/String;
invoke-static {p2}, Lco/vine/android/util/BuildUtil;->getConfigUrl(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lco/vine/android/client/VineAPI;->mConfigUrl:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "hosts="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lco/vine/android/client/VineAPI;->mBaseUrl:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ", "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lco/vine/android/client/VineAPI;->mRtcUrl:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ", "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lco/vine/android/client/VineAPI;->mExploreUrl:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ", "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lco/vine/android/client/VineAPI;->mMediaUrl:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
return-void
:cond_f3
iget-object v2, p1, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
iget-object v5, p1, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
iget-object v4, p1, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
iget-object v3, p1, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
goto/16 :goto_29
:cond_fd
invoke-static {p2}, Lco/vine/android/util/BuildUtil;->getBaseUrl(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v6
goto/16 :goto_3e
:cond_103
invoke-static {p2}, Lco/vine/android/util/BuildUtil;->getRtcUrl(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v6
goto/16 :goto_67
:cond_109
invoke-static {p2}, Lco/vine/android/util/BuildUtil;->getMediaUrl(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v6
goto/16 :goto_7e
:cond_10f
invoke-static {p2}, Lco/vine/android/util/BuildUtil;->getExploreUrl(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v6
goto :goto_95
.end method
.method public refreshLocale()V
.registers 3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_11
iput-object v0, p0, Lco/vine/android/client/VineAPI;->mLocale:Ljava/lang/String;
:goto_10
return-void
:cond_11
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/client/VineAPI;->mLocale:Ljava/lang/String;
goto :goto_10
.end method