.class public final Lcom/facebook/internal/Utility;
.super Ljava/lang/Object;
.source "Utility.java"
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"
.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x2000
.field private static final HASH_ALGORITHM_MD5:Ljava/lang/String; = "MD5"
.field private static final LOCK:Ljava/lang/Object; = null
.field static final LOG_TAG:Ljava/lang/String; = "FacebookSDK"
.field private static final SUPPORTS_ATTRIBUTION:Ljava/lang/String; = "supports_attribution"
.field private static final URL_SCHEME:Ljava/lang/String; = "https"
.field private static volatile attributionAllowedForLastAppChecked:Z
.field private static volatile lastAppCheckedForAttributionStatus:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/internal/Utility;->LOCK:Ljava/lang/Object;
const/4 v0, 0x0
sput-boolean v0, Lcom/facebook/internal/Utility;->attributionAllowedForLastAppChecked:Z
const-string v0, ""
sput-object v0, Lcom/facebook/internal/Utility;->lastAppCheckedForAttributionStatus:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static varargs arrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
.registers 7
new-instance v1, Ljava/util/ArrayList;
array-length v5, p0
invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V
move-object v0, p0
array-length v3, v0
const/4 v2, 0x0
:goto_9
if-ge v2, v3, :cond_13
aget-object v4, v0, v2
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_9
:cond_13
return-object v1
.end method
.method public static buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
.registers 8
new-instance v0, Landroid/net/Uri$Builder;
invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V
const-string v4, "https"
invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;
invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_18
:cond_18
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_32
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
instance-of v4, v3, Ljava/lang/String;
if-eqz v4, :cond_18
check-cast v3, Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
goto :goto_18
:cond_32
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v4
return-object v4
.end method
.method private static clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
.registers 14
invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
move-result-object v9
invoke-virtual {v9}, Landroid/webkit/CookieSyncManager;->sync()V
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v2
invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_12
:goto_11
return-void
:cond_12
const-string v10, ";"
invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v8
move-object v0, v8
array-length v6, v0
const/4 v5, 0x0
:goto_1b
if-ge v5, v6, :cond_48
aget-object v1, v0, v5
const-string v10, "="
invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
array-length v10, v3
if-lez v10, :cond_45
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const/4 v11, 0x0
aget-object v11, v3, v11
invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, p1, v7}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
:cond_45
add-int/lit8 v5, v5, 0x1
goto :goto_1b
:cond_48
invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V
goto :goto_11
.end method
.method public static clearFacebookCookies(Landroid/content/Context;)V
.registers 2
const-string v0, "facebook.com"
invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, ".facebook.com"
invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, "https://facebook.com"
invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, "https://.facebook.com"
invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static closeQuietly(Ljava/io/Closeable;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method static convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
.registers 7
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;
move-result-object v2
const/4 v0, 0x0
:goto_a
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v5
if-ge v0, v5, :cond_28
:try_start_10
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
instance-of v5, v4, Lorg/json/JSONObject;
if-eqz v5, :cond_22
check-cast v4, Lorg/json/JSONObject;
invoke-static {v4}, Lcom/facebook/internal/Utility;->convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
move-result-object v4
:cond_22
invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_25
:try_end_25
.catch Lorg/json/JSONException; {:try_start_10 .. :try_end_25} :catch_29
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_28
return-object v3
:catch_29
move-exception v5
goto :goto_25
.end method
.method public static disconnectQuietly(Ljava/net/URLConnection;)V
.registers 2
instance-of v0, p0, Ljava/net/HttpURLConnection;
if-eqz v0, :cond_9
check-cast p0, Ljava/net/HttpURLConnection;
invoke-static {p0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_9
return-void
.end method
.method public static getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
.registers 5
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x80
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-eqz v1, :cond_1c
iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string v2, "com.facebook.sdk.ApplicationId"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_19
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1b
move-result-object v1
:goto_1a
return-object v1
:catch_1b
move-exception v1
:cond_1c
const/4 v1, 0x0
goto :goto_1a
.end method
.method public static getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.registers 7
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_15
instance-of v2, v1, Ljava/lang/String;
if-eqz v2, :cond_15
new-instance v0, Lorg/json/JSONTokener;
check-cast v1, Ljava/lang/String;
invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v1
:cond_15
if-eqz v1, :cond_32
instance-of v2, v1, Lorg/json/JSONObject;
if-nez v2, :cond_32
instance-of v2, v1, Lorg/json/JSONArray;
if-nez v2, :cond_32
if-eqz p2, :cond_2a
new-instance p0, Lorg/json/JSONObject;
invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_29
return-object p0
:cond_2a
new-instance v2, Lcom/facebook/FacebookException;
const-string v3, "Got an unexpected non-JSON object."
invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v2
:cond_32
move-object p0, v1
goto :goto_29
.end method
.method public static isNullOrEmpty(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static isNullOrEmpty(Ljava/util/Collection;)Z
.registers 2
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v0
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
if-eqz p1, :cond_a
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v5
if-nez v5, :cond_14
:cond_a
if-eqz p0, :cond_12
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v5
if-nez v5, :cond_13
:cond_12
move v3, v4
:cond_13
:goto_13
return v3
:cond_14
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_1d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_2e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_1d
goto :goto_13
:cond_2e
move v3, v4
goto :goto_13
.end method
.method public static logd(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 2
return-void
.end method
.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
.registers 2
return-void
.end method
.method static md5hash(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/4 v5, 0x0
:try_start_1
const-string v8, "MD5"
invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
:try_end_6
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_37
move-result-object v5
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v8
invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B
move-result-object v3
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, v3
array-length v7, v0
const/4 v6, 0x0
:goto_1a
if-ge v6, v7, :cond_3a
aget-byte v1, v0, v6
shr-int/lit8 v8, v1, 0x4
and-int/lit8 v8, v8, 0xf
invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
shr-int/lit8 v8, v1, 0x0
and-int/lit8 v8, v8, 0xf
invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v6, v6, 0x1
goto :goto_1a
:catch_37
move-exception v4
const/4 v8, 0x0
:goto_39
return-object v8
:cond_3a
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
goto :goto_39
.end method
.method public static putObjectInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
instance-of v0, p2, Ljava/lang/String;
if-eqz v0, :cond_a
check-cast p2, Ljava/lang/String;
invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_9
return-void
:cond_a
instance-of v0, p2, Landroid/os/Parcelable;
if-eqz v0, :cond_14
check-cast p2, Landroid/os/Parcelable;
invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto :goto_9
:cond_14
instance-of v0, p2, [B
if-eqz v0, :cond_20
check-cast p2, [B
check-cast p2, [B
invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
goto :goto_9
:cond_20
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "attempted to add unsupported type to Bundle"
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static queryAppAttributionSupportAndWait(Ljava/lang/String;)Z
.registers 8
sget-object v5, Lcom/facebook/internal/Utility;->LOCK:Ljava/lang/Object;
monitor-enter v5
:try_start_3
sget-object v4, Lcom/facebook/internal/Utility;->lastAppCheckedForAttributionStatus:Ljava/lang/String;
invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_f
sget-boolean v4, Lcom/facebook/internal/Utility;->attributionAllowedForLastAppChecked:Z
monitor-exit v5
:goto_e
return v4
:cond_f
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v4, "fields"
const-string v6, "supports_attribution"
invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v6, 0x0
invoke-static {v4, p0, v6}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V
invoke-virtual {v1}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;
move-result-object v2
const/4 v4, 0x0
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
if-eqz v2, :cond_39
const-string v4, "supports_attribution"
invoke-interface {v2, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
:cond_39
instance-of v4, v0, Ljava/lang/Boolean;
if-nez v4, :cond_54
const/4 v4, 0x0
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
move-object v4, v0
:goto_43
sput-object p0, Lcom/facebook/internal/Utility;->lastAppCheckedForAttributionStatus:Ljava/lang/String;
check-cast v4, Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
sput-boolean v4, Lcom/facebook/internal/Utility;->attributionAllowedForLastAppChecked:Z
sget-boolean v4, Lcom/facebook/internal/Utility;->attributionAllowedForLastAppChecked:Z
monitor-exit v5
goto :goto_e
:catchall_51
move-exception v4
monitor-exit v5
:try_end_53
.catchall {:try_start_3 .. :try_end_53} :catchall_51
throw v4
:cond_54
move-object v4, v0
goto :goto_43
.end method
.method public static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
.registers 10
const/4 v2, 0x0
const/4 v5, 0x0
:try_start_2
new-instance v3, Ljava/io/BufferedInputStream;
invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_7
:try_end_7
.catchall {:try_start_2 .. :try_end_7} :catchall_39
new-instance v6, Ljava/io/InputStreamReader;
invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:try_start_c
:try_end_c
.catchall {:try_start_7 .. :try_end_c} :catchall_3b
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const/16 v1, 0x800
const/16 v8, 0x800
new-array v0, v8, [C
const/4 v4, 0x0
:goto_18
invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I
move-result v4
const/4 v8, -0x1
if-eq v4, v8, :cond_2e
const/4 v8, 0x0
invoke-virtual {v7, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
:try_end_23
.catchall {:try_start_c .. :try_end_23} :catchall_24
goto :goto_18
:catchall_24
move-exception v8
move-object v5, v6
move-object v2, v3
:goto_27
invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
throw v8
:try_start_2e
:cond_2e
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_31
.catchall {:try_start_2e .. :try_end_31} :catchall_24
move-result-object v8
invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
return-object v8
:catchall_39
move-exception v8
goto :goto_27
:catchall_3b
move-exception v8
move-object v2, v3
goto :goto_27
.end method
.method public static stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z
.registers 5
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v0, :cond_e
if-eqz v1, :cond_e
const/4 v2, 0x1
:goto_d
return v2
:cond_e
if-nez v0, :cond_17
if-nez v1, :cond_17
invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
goto :goto_d
:cond_17
const/4 v2, 0x0
goto :goto_d
.end method
.method public static varargs unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;
.registers 2
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
move-result-object v0
return-object v0
.end method