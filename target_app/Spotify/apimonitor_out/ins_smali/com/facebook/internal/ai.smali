.class public final Lcom/facebook/internal/ai;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:[Ljava/lang/String;
.field private static b:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "supports_attribution"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "supports_implicit_sdk_logging"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "gdpv4_nux_content"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "gdpv4_nux_enabled"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/internal/ai;->a:[Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/facebook/internal/ai;->b:Ljava/util/Map;
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
.method public static a(Ljava/lang/String;Z)Lcom/facebook/internal/aj;
.registers 8
if-nez p1, :cond_13
sget-object v0, Lcom/facebook/internal/ai;->b:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lcom/facebook/internal/ai;->b:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/internal/aj;
:goto_12
return-object v0
:cond_13
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "fields"
const-string v2, ","
sget-object v3, Lcom/facebook/internal/ai;->a:[Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/facebook/Request;->a(Ljava/lang/String;)Lcom/facebook/Request;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/facebook/Request;->a(Landroid/os/Bundle;)V
invoke-virtual {v1}, Lcom/facebook/Request;->d()Lcom/facebook/aa;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/aa;->b()Lcom/facebook/model/GraphObject;
move-result-object v4
new-instance v0, Lcom/facebook/internal/aj;
const-string v1, "supports_attribution"
invoke-static {v4, v1}, Lcom/facebook/internal/ai;->a(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z
move-result v1
const-string v2, "supports_implicit_sdk_logging"
invoke-static {v4, v2}, Lcom/facebook/internal/ai;->a(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z
move-result v2
const-string v5, "gdpv4_nux_content"
const-string v3, ""
if-eqz v4, :cond_4c
invoke-interface {v4, v5}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
:cond_4c
instance-of v5, v3, Ljava/lang/String;
if-nez v5, :cond_52
const-string v3, ""
:cond_52
check-cast v3, Ljava/lang/String;
const-string v5, "gdpv4_nux_enabled"
invoke-static {v4, v5}, Lcom/facebook/internal/ai;->a(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z
move-result v4
const/4 v5, 0x0
invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/aj;-><init>(ZZLjava/lang/String;ZB)V
sget-object v1, Lcom/facebook/internal/ai;->b:Ljava/util/Map;
invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_12
.end method
.method public static varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_4
.catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_4} :catch_6
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_4} :catch_8
move-result-object v0
:goto_5
return-object v0
:catch_6
move-exception v1
goto :goto_5
:catch_8
move-exception v1
goto :goto_5
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
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Got an unexpected non-JSON object."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
move-object v0, v1
goto :goto_2a
:cond_35
move-object v1, v0
goto :goto_16
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 2
const-string v0, "context"
invoke-static {p0, v0}, Lcom/facebook/internal/ak;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p0}, Lcom/facebook/ah;->b(Landroid/content/Context;)V
invoke-static {}, Lcom/facebook/ah;->h()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string v1, "android_id"
invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "SHA-1"
invoke-static {v1, v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_d
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
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
throw v0
:cond_29
:try_start_29
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_2c
.catchall {:try_start_29 .. :try_end_2c} :catchall_20
move-result-object v0
invoke-static {v3}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
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
.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;[B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/lang/String;[B)Ljava/lang/String;
.registers 8
:try_start_0
invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
:try_end_3
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_2f
move-result-object v0
invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
array-length v3, v1
const/4 v0, 0x0
:goto_12
if-ge v0, v3, :cond_32
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
goto :goto_12
:catch_2f
move-exception v0
const/4 v0, 0x0
:goto_31
return-object v0
:cond_32
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_31
.end method
.method static a([B)Ljava/lang/String;
.registers 2
const-string v0, "SHA-1"
invoke-static {v0, p0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;[B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
.registers 4
:try_start_0
invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_3
.catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v0
const/4 v0, 0x0
goto :goto_4
.end method
.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
.registers 4
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/facebook/internal/ai;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_7
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_9
move-result-object v0
:goto_8
return-object v0
:catch_9
move-exception v0
const/4 v0, 0x0
goto :goto_8
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
return-void
.end method
.method public static a(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/a;Ljava/lang/String;Z)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p1, :cond_13
invoke-virtual {p1}, Lcom/facebook/internal/a;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_13
const-string v0, "attribution"
invoke-virtual {p1}, Lcom/facebook/internal/a;->a()Ljava/lang/String;
move-result-object v3
invoke-interface {p0, v0, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
:cond_13
if-eqz p1, :cond_42
invoke-virtual {p1}, Lcom/facebook/internal/a;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_42
const-string v0, "advertiser_id"
invoke-virtual {p1}, Lcom/facebook/internal/a;->b()Ljava/lang/String;
move-result-object v3
invoke-interface {p0, v0, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "advertiser_tracking_enabled"
invoke-virtual {p1}, Lcom/facebook/internal/a;->c()Z
move-result v0
if-nez v0, :cond_40
move v0, v1
:goto_2d
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-interface {p0, v3, v0}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
:goto_34
:cond_34
const-string v0, "application_tracking_enabled"
if-nez p3, :cond_4a
:goto_38
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-interface {p0, v0, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
return-void
:cond_40
move v0, v2
goto :goto_2d
:cond_42
if-eqz p2, :cond_34
const-string v0, "advertiser_id"
invoke-interface {p0, v0, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_34
:cond_4a
move v1, v2
goto :goto_38
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
.method public static a(Ljava/io/File;)V
.registers 5
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_1d
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_13
if-ge v0, v2, :cond_1d
aget-object v3, v1, v0
invoke-static {v3}, Lcom/facebook/internal/ai;->a(Ljava/io/File;)V
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_1d
invoke-virtual {p0}, Ljava/io/File;->delete()Z
goto :goto_6
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
.method private static a(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z
.registers 5
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
if-eqz p0, :cond_b
invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
:cond_b
instance-of v1, v0, Ljava/lang/Boolean;
if-nez v1, :cond_13
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:cond_13
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
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
.registers 2
const-string v0, "MD5"
invoke-static {v0, p0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static varargs b([Ljava/lang/Object;)Ljava/util/List;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_6
const/4 v2, 0x2
if-ge v0, v2, :cond_13
aget-object v2, p0, v0
if-eqz v2, :cond_10
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_10
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_13
return-object v1
.end method
.method public static b()V
.registers 0
return-void
.end method
.method public static b(Landroid/content/Context;)V
.registers 2
const-string v0, "facebook.com"
invoke-static {p0, v0}, Lcom/facebook/internal/ai;->b(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, ".facebook.com"
invoke-static {p0, v0}, Lcom/facebook/internal/ai;->b(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, "https://facebook.com"
invoke-static {p0, v0}, Lcom/facebook/internal/ai;->b(Landroid/content/Context;Ljava/lang/String;)V
const-string v0, "https://.facebook.com"
invoke-static {p0, v0}, Lcom/facebook/internal/ai;->b(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method private static b(Landroid/content/Context;Ljava/lang/String;)V
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
.method public static c(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lcom/facebook/internal/k;->a(Landroid/content/Context;)V
return-void
.end method