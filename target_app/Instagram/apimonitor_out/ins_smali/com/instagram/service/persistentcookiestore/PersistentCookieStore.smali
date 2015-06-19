.class public final Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
.super Ljava/lang/Object;
.source "PersistentCookieStore.java"
.implements Lch/boye/httpclientandroidlib/client/CookieStore;
.field private static a:Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
.field private final b:Ljava/util/Map;
.field private final c:Landroid/content/SharedPreferences;
.field private final d:Landroid/webkit/CookieManager;
.field private final e:Landroid/webkit/CookieSyncManager;
.method private constructor <init>(Landroid/content/Context;)V
.registers 10
const/4 v7, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
move-result-object v1
iput-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->e:Landroid/webkit/CookieSyncManager;
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v1
iput-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->d:Landroid/webkit/CookieManager;
const-string v1, "CookiePrefsFile2"
invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
iput-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c:Landroid/content/SharedPreferences;
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c:Landroid/content/SharedPreferences;
const-string v2, "names"
invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_65
const-string v2, ","
invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
array-length v2, v1
:goto_31
if-ge v0, v2, :cond_5d
aget-object v3, v1, v0
iget-object v4, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c:Landroid/content/SharedPreferences;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "cookie_"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_5a
invoke-static {v4}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/Cookie;
move-result-object v4
if-eqz v4, :cond_57
iget-object v5, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_57
invoke-direct {p0, v4}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
:cond_5a
add-int/lit8 v0, v0, 0x1
goto :goto_31
:cond_5d
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {p0, v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->clearExpired(Ljava/util/Date;)Z
:cond_65
return-void
.end method
.method private a(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/Cookie;
.registers 5
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_a
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;
:goto_26
return-object v0
:cond_27
const/4 v0, 0x0
goto :goto_26
.end method
.method public static declared-synchronized a()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
.registers 3
const-class v1, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a:Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
if-nez v0, :cond_12
new-instance v0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a:Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
:cond_12
sget-object v0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a:Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_16
monitor-exit v1
return-object v0
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static a(Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_5
new-instance v1, Ljava/io/ObjectOutputStream;
invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
:try_end_d
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_16
:goto_d
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-static {v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a([B)Ljava/lang/String;
move-result-object v0
return-object v0
:catch_16
move-exception v1
const-string v1, "PersistentCookieStore"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error encoding cookie + "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
.end method
.method private static a([B)Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
array-length v0, p0
mul-int/lit8 v0, v0, 0x2
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
array-length v2, p0
const/4 v0, 0x0
:goto_a
if-ge v0, v2, :cond_23
aget-byte v3, p0, v0
and-int/lit16 v3, v3, 0xff
const/16 v4, 0x10
if-ge v3, v4, :cond_19
const/16 v4, 0x30
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_19
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_23
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "; domain="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->d:Landroid/webkit/CookieManager;
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private static b(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/Cookie;
.registers 5
invoke-static {p0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c(Ljava/lang/String;)[B
move-result-object v0
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/4 v1, 0x0
:try_start_a
new-instance v0, Lcom/instagram/service/persistentcookiestore/a;
invoke-direct {v0, v2}, Lcom/instagram/service/persistentcookiestore/a;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;
invoke-virtual {v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->getCookie()Lch/boye/httpclientandroidlib/cookie/Cookie;
:try_end_18
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a
move-result-object v0
:goto_19
return-object v0
:catch_1a
move-exception v0
const-string v0, "PersistentCookieStore"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error decoding cookie + "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_19
.end method
.method private c()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_b
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->e:Landroid/webkit/CookieSyncManager;
invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
:cond_b
return-void
.end method
.method private static c(Ljava/lang/String;)[B
.registers 8
const/16 v6, 0x10
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
div-int/lit8 v0, v1, 0x2
new-array v2, v0, [B
const/4 v0, 0x0
:goto_b
if-ge v0, v1, :cond_2a
div-int/lit8 v3, v0, 0x2
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I
move-result v4
shl-int/lit8 v4, v4, 0x4
add-int/lit8 v5, v0, 0x1
invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I
move-result v5
add-int/2addr v4, v5
int-to-byte v4, v4
aput-byte v4, v2, v3
add-int/lit8 v0, v0, 0x2
goto :goto_b
:cond_2a
return-object v2
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
invoke-direct {p0, p1}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/Cookie;
move-result-object v0
if-eqz v0, :cond_12
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final addCookie(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
.registers 7
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "names"
const-string v3, ","
iget-object v4, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v4
invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "cookie_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v2, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;
invoke-direct {v2, p1}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;-><init>(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
invoke-static {v2}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-direct {p0, p1}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
return-void
.end method
.method public final b()V
.registers 2
const-string v0, "mid"
invoke-direct {p0, v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/Cookie;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->clear()V
if-eqz v0, :cond_e
invoke-virtual {p0, v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->addCookie(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
:cond_e
return-void
.end method
.method public final clear()V
.registers 6
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->clear()V
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_15
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "cookie_"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_15
:cond_34
const-string v0, "names"
invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->d:Landroid/webkit/CookieManager;
invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
invoke-direct {p0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c()V
return-void
.end method
.method public final clearExpired(Ljava/util/Date;)Z
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v2, v0
:goto_12
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->isExpired(Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "cookie_"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const/4 v0, 0x1
:goto_48
move v2, v0
goto :goto_12
:cond_4a
if-eqz v2, :cond_5d
const-string v0, "names"
const-string v1, ","
iget-object v4, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v4
invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v1
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_5d
invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->d:Landroid/webkit/CookieManager;
invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V
invoke-direct {p0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c()V
return v2
:cond_69
move v0, v2
goto :goto_48
.end method
.method public final getCookies()Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method