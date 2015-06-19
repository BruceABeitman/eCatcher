.class Lcom/mologiq/analytics/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "mqaabb"

.field public static b:Z

.field public static c:Z


# instance fields
.field private final d:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mologiq/analytics/ai;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mologiq/analytics/ai;->c:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mologiq/analytics/ai;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Z)Ljava/util/Map;
    .registers 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/mologiq/analytics/ai$1;

    invoke-direct {v1, p1}, Lcom/mologiq/analytics/ai$1;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    return-object v2

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "mqaabb"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "mqaabb"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/mologiq/analytics/m;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/mologiq/analytics/m;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/mologiq/analytics/m;->b()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0, v1}, Lcom/mologiq/analytics/m;->a(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static b()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7b
    :goto_7b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a7
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " Build/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d3
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "1.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    :cond_f7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "en"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7b
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v0, "wifi"

    :goto_22
    return-object v0

    :cond_23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "mobile"

    goto :goto_22

    :cond_2c
    const-string v0, "none"

    goto :goto_22

    :cond_2f
    const-string v0, "unknown"

    goto :goto_22
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/mologiq/analytics/m;

    invoke-direct {v1, v0}, Lcom/mologiq/analytics/m;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/mologiq/analytics/m;->f()[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_19
    return-object v0

    :cond_1a
    const-string v0, ""

    goto :goto_19
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v0, ""

    goto :goto_16
.end method

.method static d(Ljava/lang/String;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/mologiq/analytics/ai;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_f

    invoke-static {}, Lcom/mologiq/analytics/ai;->b()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    const-class v1, Landroid/webkit/WebSettings;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/webkit/WebView;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_26} :catch_4a

    const/4 v1, 0x2

    :try_start_27
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_44

    move-result-object v1

    const/4 v3, 0x0

    :try_start_3f
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    move-object v0, v1

    goto :goto_e

    :catchall_44
    move-exception v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "main"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_69
    invoke-static {}, Lcom/mologiq/analytics/ai;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;
    .registers 20

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.2.9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_169

    const-string v2, ""

    :goto_28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V

    if-eqz p6, :cond_22f

    new-instance v2, Lcom/mologiq/analytics/x;

    invoke-direct {v2}, Lcom/mologiq/analytics/x;-><init>()V

    new-instance v1, Lcom/mologiq/analytics/a;

    invoke-direct {v1}, Lcom/mologiq/analytics/a;-><init>()V

    invoke-virtual {v1, p2}, Lcom/mologiq/analytics/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mologiq/analytics/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mologiq/analytics/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v7, v1

    :goto_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v2, Lcom/mologiq/analytics/ai;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/mologiq/analytics/ai;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "User-Agent"

    invoke-virtual {v2}, Lcom/mologiq/analytics/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz p2, :cond_16f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16f

    invoke-static {p2}, Lcom/mologiq/analytics/ai;->d(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "Content-Length"

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_be
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Error Code: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Content Length: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Time Taken: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v10, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_218

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x2000

    move v6, v2

    move v2, v3

    :cond_123
    :goto_123
    const/4 v4, -0x1

    if-ne v2, v4, :cond_189

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-lez v6, :cond_218

    new-array v11, v6, [B

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v5, v1

    :goto_130
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_1a2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v11}, Ljava/lang/String;-><init>([B)V

    if-eqz p6, :cond_1ca

    if-eqz v7, :cond_1ca

    invoke-virtual {v7}, Lcom/mologiq/analytics/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Lcom/mologiq/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Return Value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_5 .. :try_end_15e} :catchall_202
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15e} :catch_17b

    if-eqz v8, :cond_163

    :try_start_160
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_1c0

    :cond_163
    :goto_163
    if-eqz v9, :cond_168

    :try_start_165
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_1c5

    :cond_168
    :goto_168
    return-object v1

    :cond_169
    :try_start_169
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_28

    :cond_16f
    const-string v2, "Content-Length"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_169 .. :try_end_179} :catchall_202
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_179} :catch_17b

    goto/16 :goto_be

    :catch_17b
    move-exception v1

    if-eqz v8, :cond_181

    :try_start_17e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_1f8

    :cond_181
    :goto_181
    if-eqz v9, :cond_186

    :try_start_183
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_1fd

    :cond_186
    :goto_186
    const-string v1, ""

    goto :goto_168

    :cond_189
    :try_start_189
    new-array v4, v3, [B

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_123

    new-instance v5, Lcom/mologiq/analytics/aj;

    invoke-direct {v5}, Lcom/mologiq/analytics/aj;-><init>()V

    iput-object v4, v5, Lcom/mologiq/analytics/aj;->a:[B

    iput v2, v5, Lcom/mologiq/analytics/aj;->b:I

    add-int v4, v6, v2

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_123

    :cond_1a2
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mologiq/analytics/aj;

    const/4 v2, 0x0

    :goto_1a9
    iget v4, v1, Lcom/mologiq/analytics/aj;->b:I

    if-ge v2, v4, :cond_1af

    if-lt v3, v6, :cond_1b4

    :cond_1af
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_130

    :cond_1b4
    add-int/lit8 v4, v3, 0x1

    iget-object v12, v1, Lcom/mologiq/analytics/aj;->a:[B

    aget-byte v12, v12, v2

    aput-byte v12, v11, v3
    :try_end_1bc
    .catchall {:try_start_189 .. :try_end_1bc} :catchall_202
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1bc} :catch_17b

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1a9

    :catch_1c0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_163

    :catch_1c5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_168

    :cond_1ca
    :try_start_1ca
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Return Value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
    :try_end_1e1
    .catchall {:try_start_1ca .. :try_end_1e1} :catchall_202
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1e1} :catch_17b

    if-eqz v8, :cond_1e6

    :try_start_1e3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1e6} :catch_1f3

    :cond_1e6
    :goto_1e6
    if-eqz v9, :cond_168

    :try_start_1e8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1eb} :catch_1ed

    goto/16 :goto_168

    :catch_1ed
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_168

    :catch_1f3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e6

    :catch_1f8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_181

    :catch_1fd
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_186

    :catchall_202
    move-exception v1

    if-eqz v8, :cond_208

    :try_start_205
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_208} :catch_20e

    :cond_208
    :goto_208
    if-eqz v9, :cond_20d

    :try_start_20a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_20d
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_20d} :catch_213

    :cond_20d
    :goto_20d
    throw v1

    :catch_20e
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_208

    :catch_213
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20d

    :cond_218
    if-eqz v8, :cond_21d

    :try_start_21a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_21d} :catch_22a

    :cond_21d
    :goto_21d
    if-eqz v9, :cond_186

    :try_start_21f
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_222} :catch_224

    goto/16 :goto_186

    :catch_224
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_186

    :catch_22a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21d

    :cond_22f
    move-object v7, v1

    goto/16 :goto_65
.end method
