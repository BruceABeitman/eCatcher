.class public final Lcom/facebook/g/t;
.super Ljava/lang/Object;
.source "Utility.java"
.field private static final a:Ljava/lang/Object;
.field private static volatile b:Z
.field private static volatile c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/g/t;->a:Ljava/lang/Object;
const/4 v0, 0x0
sput-boolean v0, Lcom/facebook/g/t;->b:Z
const-string v0, ""
sput-object v0, Lcom/facebook/g/t;->c:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
.registers 8
new-instance v2, Landroid/net/Uri$Builder;
invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V
const-string v0, "https"
invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;
invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_18
:cond_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
instance-of v4, v1, Ljava/lang/String;
if-eqz v4, :cond_18
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
goto :goto_18
:cond_32
invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_35
instance-of v1, v0, Ljava/lang/String;
if-eqz v1, :cond_35
new-instance v1, Lorg/json/JSONTokener;
check-cast v0, Ljava/lang/String;
invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
:goto_16
if-eqz v1, :cond_33
instance-of v0, v1, Lorg/json/JSONObject;
if-nez v0, :cond_33
instance-of v0, v1, Lorg/json/JSONArray;
if-nez v0, :cond_33
if-eqz p2, :cond_2b
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_2a
return-object v0
:cond_2b
new-instance v0, Lcom/facebook/z;
const-string v1, "Got an unexpected non-JSON object."
invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
move-object v0, v1
goto :goto_2a
:cond_35
move-object v1, v0
goto :goto_16
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x80
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-eqz v1, :cond_1c
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string v1, "com.facebook.sdk.ApplicationId"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_19
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1b
move-result-object v0
:goto_1a
return-object v0
:catch_1b
move-exception v0
:cond_1c
const/4 v0, 0x0
goto :goto_1a
.end method
.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
.registers 7
const/4 v2, 0x0
:try_start_1
new-instance v3, Ljava/io/BufferedInputStream;
invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_6
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_34
new-instance v1, Ljava/io/InputStreamReader;
invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:try_end_b
.catchall {:try_start_6 .. :try_end_b} :catchall_37
:try_start_b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/16 v2, 0x800
new-array v2, v2, [C
:goto_14
invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_29
const/4 v5, 0x0
invoke-virtual {v0, v2, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
:try_end_1f
.catchall {:try_start_b .. :try_end_1f} :catchall_20
goto :goto_14
:catchall_20
move-exception v0
move-object v2, v3
:goto_22
invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V
invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V
throw v0
:cond_29
:try_start_29
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_2c
.catchall {:try_start_29 .. :try_end_2c} :catchall_20
move-result-object v0
invoke-static {v3}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V
invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V
return-object v0
:catchall_34
move-exception v0
move-object v1, v2
goto :goto_22
:catchall_37
move-exception v0
move-object v1, v2
move-object v2, v3
goto :goto_22
.end method
.method public static varargs a([Ljava/lang/Object;)Ljava/util/Collection;
.registers 2
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method public static a()V
.registers 0
invoke-static {}, Lcom/instagram/common/o/a;->b()Z
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 9
const/4 v1, 0x0
invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
move-result-object v0
invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v2
invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_13
:goto_12
return-void
:cond_13
const-string v3, ";"
invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
array-length v4, v3
move v0, v1
:goto_1b
if-ge v0, v4, :cond_47
aget-object v5, v3, v0
const-string v6, "="
invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
array-length v6, v5
if-lez v6, :cond_44
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
aget-object v5, v5, v1
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, p1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
:cond_44
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_47
invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V
goto :goto_12
.end method
.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
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
new-instance v0, Lcom/facebook/z;
const-string v1, "attempted to add unsupported type to Bundle"
invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static a(Ljava/io/Closeable;)V
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
.method public static a(Ljava/lang/Exception;)V
.registers 3
invoke-static {}, Lcom/instagram/common/o/a;->b()Z
move-result v0
if-eqz v0, :cond_24
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_24
return-void
.end method
.method public static a(Ljava/net/URLConnection;)V
.registers 2
instance-of v0, p0, Ljava/net/HttpURLConnection;
if-eqz v0, :cond_9
check-cast p0, Ljava/net/HttpURLConnection;
invoke-static {p0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_9
return-void
.end method
.method public static a(Ljava/lang/String;)Z
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
.method public static a(Ljava/util/Collection;)Z
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
.method public static a(Ljava/util/Collection;Ljava/util/Collection;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
if-eqz p1, :cond_a
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v2
if-nez v2, :cond_14
:cond_a
if-eqz p0, :cond_12
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v2
if-nez v2, :cond_13
:cond_12
move v0, v1
:cond_13
:goto_13
return v0
:cond_14
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_1d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_2e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_1d
goto :goto_13
:cond_2e
move v0, v1
goto :goto_13
.end method
.method static b(Ljava/lang/String;)Ljava/lang/String;
.registers 7
:try_start_0
const-string v0, "MD5"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
:try_end_5
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_35
move-result-object v0
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
array-length v3, v1
const/4 v0, 0x0
:goto_18
if-ge v0, v3, :cond_38
aget-byte v4, v1, v0
shr-int/lit8 v5, v4, 0x4
and-int/lit8 v5, v5, 0xf
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
shr-int/lit8 v4, v4, 0x0
and-int/lit8 v4, v4, 0xf
invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_18
:catch_35
move-exception v0
const/4 v0, 0x0
:goto_37
return-object v0
:cond_38
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_37
.end method
.method public static b(Landroid/content/Context;)V
.registers 2
const-string v0, "facebook.com"
invoke-static {p0, v0}, Lcom/facebook/g/t;->a(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, ".facebook.com"
invoke-static {p0, v0}, Lcom/facebook/g/t;->a(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, "https://facebook.com"
invoke-static {p0, v0}, Lcom/facebook/g/t;->a(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, "https://.facebook.com"
invoke-static {p0, v0}, Lcom/facebook/g/t;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static c(Ljava/lang/String;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
sget-object v3, Lcom/facebook/g/t;->a:Ljava/lang/Object;
monitor-enter v3
:try_start_5
sget-object v0, Lcom/facebook/g/t;->c:Ljava/lang/String;
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
sget-boolean v0, Lcom/facebook/g/t;->b:Z
monitor-exit v3
:goto_10
return v0
:cond_11
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v4, "fields"
const-string v5, "supports_attribution"
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/facebook/bc;->a(Ljava/lang/String;)Lcom/facebook/bc;
move-result-object v4
invoke-virtual {v4, v0}, Lcom/facebook/bc;->a(Landroid/os/Bundle;)V
invoke-virtual {v4}, Lcom/facebook/bc;->b()Lcom/facebook/bn;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/bn;->b()Lcom/facebook/h/b;
move-result-object v4
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
if-eqz v4, :cond_37
invoke-interface {v4}, Lcom/facebook/h/b;->e()Ljava/lang/Object;
move-result-object v0
:cond_37
instance-of v4, v0, Ljava/lang/Boolean;
if-nez v4, :cond_40
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:cond_40
sput-object p0, Lcom/facebook/g/t;->c:Ljava/lang/String;
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-ne v0, v1, :cond_52
move v0, v1
:goto_4b
sput-boolean v0, Lcom/facebook/g/t;->b:Z
monitor-exit v3
:try_end_4e
.catchall {:try_start_5 .. :try_end_4e} :catchall_4f
goto :goto_10
:catchall_4f
move-exception v0
monitor-exit v3
throw v0
:cond_52
move v0, v2
goto :goto_4b
.end method