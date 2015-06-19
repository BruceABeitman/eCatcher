.class public Lcom/tencent/stat/common/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/Random;

.field private static f:Lcom/tencent/stat/common/StatLogger;

.field private static g:Ljava/lang/String;

.field private static h:Lcom/tencent/stat/common/l;

.field private static i:Lcom/tencent/stat/common/n;

.field private static j:Ljava/lang/String;

.field private static k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/k;->b:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/k;->c:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/k;->d:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/k;->e:Ljava/util/Random;

    sput-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    sput-object v0, Lcom/tencent/stat/common/k;->g:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/common/k;->h:Lcom/tencent/stat/common/l;

    sput-object v0, Lcom/tencent/stat/common/k;->i:Lcom/tencent/stat/common/n;

    const-string/jumbo v0, "__MTA_FIRST_ACTIVATE__"

    sput-object v0, Lcom/tencent/stat/common/k;->j:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/tencent/stat/common/k;->k:I

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_49

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_3a

    const-string/jumbo v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    :cond_3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_43

    move-result-object v0

    :goto_42
    return-object v0

    :catch_43
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_49
    const-string/jumbo v0, ""

    goto :goto_42
.end method

.method public static B(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .registers 3

    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/tencent/stat/common/k;->B(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/tencent/stat/common/k;->B(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static declared-synchronized E(Landroid/content/Context;)I
    .registers 4

    const-class v1, Lcom/tencent/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/tencent/stat/common/k;->k:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    sget v0, Lcom/tencent/stat/common/k;->k:I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    :goto_a
    monitor-exit v1

    return v0

    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/tencent/stat/common/k;->F(Landroid/content/Context;)V

    sget v0, Lcom/tencent/stat/common/k;->k:I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static F(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x1

    sget-object v0, Lcom/tencent/stat/common/k;->j:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/stat/common/k;->k:I

    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    sget v1, Lcom/tencent/stat/common/k;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    sget v0, Lcom/tencent/stat/common/k;->k:I

    if-ne v0, v2, :cond_1e

    sget-object v0, Lcom/tencent/stat/common/k;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1e
    return-void
.end method

.method private static G(Landroid/content/Context;)J
    .registers 3

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static a()I
    .registers 2

    invoke-static {}, Lcom/tencent/stat/common/k;->h()Ljava/util/Random;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;
    .registers 16

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-object p4

    :cond_5
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2b
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-ne v0, p3, :cond_4

    const-wide/16 v0, 0x0

    :try_start_34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_3c
    array-length v2, v3

    if-ge v1, v2, :cond_59

    int-to-long v4, p2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_53} :catch_5b

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3c

    :cond_59
    move-object p4, v0

    goto :goto_4

    :catch_5b
    move-exception v0

    goto :goto_4
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_6

    const-string/jumbo v0, "0"

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1e
    array-length v3, v1

    if-ge v0, v3, :cond_39

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2f

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2f
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3c} :catch_3e

    move-result-object v0

    goto :goto_5

    :catch_3e
    move-exception v0

    const-string/jumbo v0, "0"

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, v1

    goto :goto_4

    :cond_18
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_29

    move-object v0, v1

    goto :goto_4

    :cond_29
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    move-object v0, v1

    goto :goto_4

    :cond_3e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    move-object v0, v1

    goto :goto_4

    :cond_46
    const-string/jumbo v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    const-string/jumbo v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    const-string/jumbo v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_61
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string/jumbo v2, "10.0.0.172"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6b} :catch_6c

    goto :goto_4

    :catch_6c
    move-exception v0

    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_72
    move-object v0, v1

    goto :goto_4

    :cond_74
    :try_start_74
    const-string/jumbo v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    new-instance v0, Lorg/apache/http/HttpHost;

    const-string/jumbo v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_87} :catch_6c

    goto/16 :goto_4
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_b

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_11

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    :goto_10
    return v0

    :catch_11
    move-exception v1

    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static a([B)[B
    .registers 7

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_16
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_16

    :cond_22
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v2
.end method

.method public static b(Ljava/lang/String;)J
    .registers 6

    const-string/jumbo v0, "."

    const/16 v1, 0x64

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/stat/common/k;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized b()Lcom/tencent/stat/common/StatLogger;
    .registers 3

    const-class v1, Lcom/tencent/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    if-nez v0, :cond_17

    new-instance v0, Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v2, "MtaSDK"

    invoke-direct {v0, v2}, Lcom/tencent/stat/common/StatLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->setDebugEnable(Z)V

    :cond_17
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/tencent/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_41

    :goto_15
    monitor-exit v1

    return-object v0

    :cond_17
    :try_start_17
    invoke-static {p0}, Lcom/tencent/stat/common/k;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;

    sget-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3e

    :cond_2d
    invoke-static {}, Lcom/tencent/stat/common/k;->h()Ljava/util/Random;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;

    :cond_3e
    sget-object v0, Lcom/tencent/stat/common/k;->a:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_41

    goto :goto_15

    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableConcurrentProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    sget-object v0, Lcom/tencent/stat/common/k;->g:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/tencent/stat/common/k;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/k;->g:Ljava/lang/String;

    :cond_11
    sget-object v0, Lcom/tencent/stat/common/k;->g:Ljava/lang/String;

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/stat/common/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2f
    return-object p1
.end method

.method public static c()J
    .registers 5

    const-wide/32 v3, 0x5265c00

    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_25

    move-result-wide v0

    add-long/2addr v0, v3

    :goto_24
    return-wide v0

    :catch_25
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v3

    goto :goto_24
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/tencent/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/stat/common/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string/jumbo v0, ""

    sget-object v2, Lcom/tencent/stat/common/k;->c:Ljava/lang/String;

    if-ne v0, v2, :cond_14

    :cond_e
    invoke-static {p0}, Lcom/tencent/stat/common/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/common/k;->c:Ljava/lang/String;

    :cond_14
    sget-object v0, Lcom/tencent/stat/common/k;->c:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    :try_start_a
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/e;->a([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/stat/common/g;->b([BI)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_24

    move-object p0, v0

    goto :goto_3

    :catch_24
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static d()I
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 4

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    :try_start_a
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/stat/common/g;->a([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/e;->b([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_24

    move-object p0, v0

    goto :goto_3

    :catch_24
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static e()Ljava/lang/String;
    .registers 8

    const-wide/32 v6, 0xf4240

    invoke-static {}, Lcom/tencent/stat/common/k;->f()J

    move-result-wide v0

    div-long/2addr v0, v6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3f

    move v0, v1

    :goto_20
    array-length v3, v2

    if-ge v0, v3, :cond_3f

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3f
    move v0, v1

    goto :goto_3b

    :cond_41
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v2, "can not get the permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_49} :catch_4b

    :goto_49
    move v0, v1

    goto :goto_3b

    :catch_4b
    move-exception v0

    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_49
.end method

.method public static f()J
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_9
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_18

    const-string/jumbo v0, ""

    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_17

    :catch_21
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V

    const-string/jumbo v0, ""

    goto :goto_17

    :cond_2b
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v1, "Could not get permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    goto :goto_17
.end method

.method static synthetic g()Lcom/tencent/stat/common/StatLogger;
    .registers 1

    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38

    :cond_3b
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v2, "can not get the permisson of android.permission.INTERNET"

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_43} :catch_45

    :cond_43
    :goto_43
    move v0, v1

    goto :goto_38

    :catch_45
    move-exception v0

    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_43
.end method

.method private static declared-synchronized h()Ljava/util/Random;
    .registers 2

    const-class v1, Lcom/tencent/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/stat/common/k;->e:Ljava/util/Random;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/stat/common/k;->e:Ljava/util/Random;

    :cond_e
    sget-object v0, Lcom/tencent/stat/common/k;->e:Ljava/util/Random;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v2, "Network error"

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_2b

    :cond_36
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v2, "can not get the permisson of android.permission.INTERNET"

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3e} :catch_40

    :cond_3e
    :goto_3e
    move v0, v1

    goto :goto_2b

    :catch_40
    move-exception v0

    goto :goto_3e
.end method

.method private static i()J
    .registers 5

    const-string/jumbo v2, "/proc/meminfo"

    const-wide/16 v0, 0x0

    :try_start_5
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2d} :catch_2e

    :goto_2d
    return-wide v0

    :catch_2e
    move-exception v2

    goto :goto_2d
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/tencent/stat/common/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tencent/stat/common/k;->b:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "TA_APPKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    sput-object v0, Lcom/tencent/stat/common/k;->b:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_25

    goto :goto_6

    :catch_25
    move-exception v0

    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v1, "Could not read APPKEY meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    goto :goto_6

    :cond_30
    :try_start_30
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v1, "Could not read APPKEY meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_38} :catch_25

    goto :goto_2e
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "InstallChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v1, "Could not read InstallChannel meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_2a

    :cond_28
    :goto_28
    const/4 v0, 0x0

    goto :goto_1f

    :catch_2a
    move-exception v0

    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v1, "Could not read InstallChannel meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_28
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, ""

    invoke-static {p0}, Lcom/tencent/stat/common/k;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    if-eqz v0, :cond_2a

    :goto_21
    return-object v0

    :cond_22
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v1, "Could not get permission of android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2c

    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    goto :goto_21

    :catch_2c
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_2a
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p0}, Lcom/tencent/stat/common/k;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    move-object v1, v0

    :cond_20
    :goto_20
    return-object v1

    :cond_21
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v2, "Could not get permission of android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_20

    :catch_2a
    move-exception v0

    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_20

    :cond_31
    move-object v0, v1

    goto :goto_1f
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, ""

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_12} :catch_18

    if-nez v0, :cond_17

    :try_start_14
    const-string/jumbo v0, ""
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_22

    :cond_17
    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1c
    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_17

    :catch_22
    move-exception v1

    goto :goto_1c
.end method

.method public static o(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5a

    const-string/jumbo v3, "WIFI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string/jumbo v0, "WIFI"

    :cond_3e
    :goto_3e
    return-object v0

    :cond_3f
    const-string/jumbo v3, "MOBILE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    if-nez v0, :cond_3e

    const-string/jumbo v0, "MOBILE"

    goto :goto_3e

    :cond_4e
    if-nez v0, :cond_3e

    move-object v0, v1

    goto :goto_3e

    :cond_52
    sget-object v0, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v1, "can not get the permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5a} :catch_5c

    :cond_5a
    :goto_5a
    move-object v0, v2

    goto :goto_3e

    :catch_5c
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_5a
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, ""

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_12} :catch_1e

    if-eqz v0, :cond_1a

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    :cond_1a
    const-string/jumbo v0, "unknown"
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_28

    :cond_1d
    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_22
    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_1d

    :catch_28
    move-exception v1

    goto :goto_22
.end method

.method public static s(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/tencent/stat/common/o;->a()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_8

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_7
    return v0

    :catch_8
    move-exception v0

    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_66
    :goto_66
    return-object v0

    :cond_67
    sget-object v1, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    const-string/jumbo v2, "can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6f} :catch_70

    goto :goto_66

    :catch_70
    move-exception v1

    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_66
.end method

.method static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_15

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/tencent/stat/common/StatConstants;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/stat/common/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized w(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 5

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/stat/common/k;

    monitor-enter v2

    :try_start_4
    const-string/jumbo v0, "MTA_EVENT_INDEX"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v3, 0x7ffffffe

    if-lt v0, v3, :cond_2b

    :goto_11
    const-string/jumbo v0, "MTA_EVENT_INDEX"

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v0, v3}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_19} :catch_21

    :goto_19
    add-int/lit8 v0, v1, 0x1

    :try_start_1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catch_21
    move-exception v0

    :try_start_22
    sget-object v3, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v3, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    goto :goto_19

    :catchall_28
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2b
    move v1, v0

    goto :goto_11
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-wide/32 v4, 0xf4240

    invoke-static {p0}, Lcom/tencent/stat/common/k;->G(Landroid/content/Context;)J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-static {}, Lcom/tencent/stat/common/k;->i()J

    move-result-wide v2

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized y(Landroid/content/Context;)Lcom/tencent/stat/common/l;
    .registers 3

    const-class v1, Lcom/tencent/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/stat/common/k;->h:Lcom/tencent/stat/common/l;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/stat/common/l;

    invoke-direct {v0}, Lcom/tencent/stat/common/l;-><init>()V

    sput-object v0, Lcom/tencent/stat/common/k;->h:Lcom/tencent/stat/common/l;

    :cond_e
    sget-object v0, Lcom/tencent/stat/common/k;->h:Lcom/tencent/stat/common/l;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static z(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {p0}, Lcom/tencent/stat/common/k;->y(Landroid/content/Context;)Lcom/tencent/stat/common/l;

    invoke-static {}, Lcom/tencent/stat/common/l;->b()I

    move-result v0

    if-lez v0, :cond_18

    const-string/jumbo v2, "fx"

    const v3, 0xf4240

    div-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_18
    invoke-static {p0}, Lcom/tencent/stat/common/k;->y(Landroid/content/Context;)Lcom/tencent/stat/common/l;

    invoke-static {}, Lcom/tencent/stat/common/l;->c()I

    move-result v0

    if-lez v0, :cond_2b

    const-string/jumbo v2, "fn"

    const v3, 0xf4240

    div-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2b
    invoke-static {p0}, Lcom/tencent/stat/common/k;->y(Landroid/content/Context;)Lcom/tencent/stat/common/l;

    invoke-static {}, Lcom/tencent/stat/common/l;->a()I

    move-result v0

    if-lez v0, :cond_3a

    const-string/jumbo v2, "n"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3a
    invoke-static {p0}, Lcom/tencent/stat/common/k;->y(Landroid/content/Context;)Lcom/tencent/stat/common/l;

    invoke-static {}, Lcom/tencent/stat/common/l;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_56

    const-string/jumbo v0, "na"

    invoke-static {p0}, Lcom/tencent/stat/common/k;->y(Landroid/content/Context;)Lcom/tencent/stat/common/l;

    invoke-static {}, Lcom/tencent/stat/common/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_56} :catch_57

    :cond_56
    :goto_56
    return-object v1

    :catch_57
    move-exception v0

    sget-object v2, Lcom/tencent/stat/common/k;->f:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V

    goto :goto_56
.end method
