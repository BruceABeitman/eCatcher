.class public final Lcom/google/android/gms/internal/ep;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ep$a;
    }
.end annotation


# static fields
.field private static final qm:Ljava/lang/Object;

.field private static si:Z

.field private static sj:Ljava/lang/String;

.field private static sk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ep;->qm:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/ep;->si:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/ep;->sk:Z

    return-void
.end method

.method public static a(Ljava/lang/Readable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_b
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Collection;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ep;->a(Lorg/json/JSONArray;Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method static a([Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, p0, v0

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ep;->a(Lorg/json/JSONArray;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ep;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/et;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/et;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/et;->start()V

    goto :goto_4

    :cond_19
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
    .registers 6

    const v0, 0xea60

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p3, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "User-Agent"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ep;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Lcom/google/android/gms/internal/er;->a(Landroid/webkit/WebView;)V

    :cond_9
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ep;->b(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_d
    return-void

    :cond_e
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1c

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/ep;->o(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    :cond_1c
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2a

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/android/gms/internal/ep;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    :cond_2a
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_3a

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/ep;->a([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    :cond_3a
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_e

    check-cast p2, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/ep;->b(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_d
    return-void

    :cond_e
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_1c

    check-cast p2, Ljava/util/Map;

    invoke-static {p2}, Lcom/google/android/gms/internal/ep;->o(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_1c
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2c

    :goto_22
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lcom/google/android/gms/internal/ep;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_2c
    const-string p1, "null"

    goto :goto_22

    :cond_2f
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_43

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_43
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public static b(Landroid/net/Uri;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/UrlQuerySanitizer;->setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    iget-object v3, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v0, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_3c
    move-object v0, v1

    goto :goto_3
.end method

.method private static b(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_21
    return-object v1
.end method

.method public static b(Landroid/webkit/WebView;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Lcom/google/android/gms/internal/er;->b(Landroid/webkit/WebView;)V

    :cond_9
    return-void
.end method

.method public static bL()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ep;->si:Z

    return v0
.end method

.method public static bM()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x6

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static bN()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x7

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static bO()Ljava/lang/String;
    .registers 10

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_2a
    const/4 v4, 0x2

    if-ge v1, v4, :cond_55

    :try_start_2d
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    const/16 v5, 0x8

    new-array v5, v5, [B

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_51} :catch_56

    move-result-object v0

    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_55
    return-object v0

    :catch_56
    move-exception v4

    goto :goto_52
.end method

.method static synthetic bP()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ep;->qm:Ljava/lang/Object;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/google/android/gms/internal/ep;->qm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;

    monitor-exit v1

    :goto_a
    return-object v0

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_3f

    invoke-static {p0}, Lcom/google/android/gms/internal/es;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;

    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (Mobile; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;

    monitor-exit v1

    goto :goto_a

    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v0

    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ep$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ep$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4f
    sget-object v0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_3c

    if-nez v0, :cond_17

    :try_start_53
    sget-object v0, Lcom/google/android/gms/internal/ep;->qm:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_4f

    :catch_59
    move-exception v0

    :try_start_5a
    sget-object v0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;

    monitor-exit v1

    goto :goto_a

    :cond_5e
    invoke-static {p0}, Lcom/google/android/gms/internal/ep;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_3c

    goto :goto_17
.end method

.method public static j(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_22

    :cond_1c
    const-string v0, "Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    :goto_21
    return v1

    :cond_22
    const-string v4, "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\"."

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_c2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "keyboard"

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    move v0, v1

    :goto_3a
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_50

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "keyboardHidden"

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    move v0, v1

    :cond_50
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_66

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "orientation"

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    move v0, v1

    :cond_66
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v5, v5, 0x100

    if-nez v5, :cond_7c

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "screenLayout"

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    move v0, v1

    :cond_7c
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_92

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "uiMode"

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    move v0, v1

    :cond_92
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_a8

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "screenSize"

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    move v0, v1

    :cond_a8
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v3, v3, 0x800

    if-nez v3, :cond_bf

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "smallestScreenSize"

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_bf
    move v1, v0

    goto/16 :goto_21

    :cond_c2
    move v0, v2

    goto/16 :goto_3a
.end method

.method public static k(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Lcom/google/android/gms/internal/ep;->sk:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ep$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ep$a;-><init>(Lcom/google/android/gms/internal/ep$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/ep;->sk:Z

    goto :goto_4
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_27

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_25
    add-int/2addr v0, v1

    return v0

    :cond_27
    move v1, v0

    goto :goto_25
.end method

.method static synthetic n(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ep;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_d

    :catch_21
    move-exception v0

    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not convert map to JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    return-object v1
.end method

.method static synthetic p(Z)Z
    .registers 1

    sput-boolean p0, Lcom/google/android/gms/internal/ep;->si:Z

    return p0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/ep;->sj:Ljava/lang/String;

    return-object p0
.end method
